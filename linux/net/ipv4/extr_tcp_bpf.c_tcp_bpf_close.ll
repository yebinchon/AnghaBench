; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.sk_psock = type { void (%struct.sock*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @tcp_bpf_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bpf_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca void (%struct.sock*, i64)*, align 8
  %6 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @lock_sock(%struct.sock* %7)
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.sk_psock* @sk_psock(%struct.sock* %10)
  store %struct.sk_psock* %11, %struct.sk_psock** %6, align 8
  %12 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %13 = icmp ne %struct.sk_psock* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @release_sock(%struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to void (%struct.sock*, i64)**
  %27 = load void (%struct.sock*, i64)*, void (%struct.sock*, i64)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load i64, i64* %4, align 8
  call void %27(%struct.sock* %28, i64 %29)
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %32 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %31, i32 0, i32 0
  %33 = load void (%struct.sock*, i64)*, void (%struct.sock*, i64)** %32, align 8
  store void (%struct.sock*, i64)* %33, void (%struct.sock*, i64)** %5, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %36 = call i32 @tcp_bpf_remove(%struct.sock* %34, %struct.sk_psock* %35)
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @release_sock(%struct.sock* %38)
  %40 = load void (%struct.sock*, i64)*, void (%struct.sock*, i64)** %5, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = load i64, i64* %4, align 8
  call void %40(%struct.sock* %41, i64 %42)
  br label %43

43:                                               ; preds = %30, %18
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @tcp_bpf_remove(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
