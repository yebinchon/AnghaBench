; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.sk_psock = type { void (%struct.sock*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_bpf_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bpf_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.sk_psock* @sk_psock(%struct.sock* %6)
  store %struct.sk_psock* %7, %struct.sk_psock** %4, align 8
  %8 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %9 = icmp ne %struct.sk_psock* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %19, align 8
  %21 = icmp ne i32 (%struct.sock*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = call i32 %27(%struct.sock* %28)
  br label %30

30:                                               ; preds = %22, %14
  br label %41

31:                                               ; preds = %1
  %32 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %33 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %32, i32 0, i32 0
  %34 = load void (%struct.sock*)*, void (%struct.sock*)** %33, align 8
  store void (%struct.sock*)* %34, void (%struct.sock*)** %3, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %37 = call i32 @tcp_bpf_remove(%struct.sock* %35, %struct.sk_psock* %36)
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  call void %39(%struct.sock* %40)
  br label %41

41:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tcp_bpf_remove(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
