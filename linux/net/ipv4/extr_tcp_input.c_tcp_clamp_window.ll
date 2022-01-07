; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_clamp_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_clamp_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.tcp_sock = type { i64, i32, i32 }
%struct.inet_connection_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_clamp_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_clamp_window(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.net* @sock_net(%struct.sock* %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %13 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %17, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %1
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = call i32 @tcp_under_memory_pressure(%struct.sock* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %32
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i64 @sk_memory_allocated(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i64 @sk_prot_mem_limits(%struct.sock* %39, i32 0)
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 2
  %48 = call i64 @atomic_read(i32* %47)
  %49 = load %struct.net*, %struct.net** %5, align 8
  %50 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @min(i64 %48, i32 %55)
  %57 = call i32 @WRITE_ONCE(i64 %45, i32 %56)
  br label %58

58:                                               ; preds = %42, %36, %32, %25, %1
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  %61 = call i64 @atomic_read(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = mul i32 2, %72
  %74 = call i32 @min(i64 %69, i32 %73)
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %58
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_under_memory_pressure(%struct.sock*) #1

declare dso_local i64 @sk_memory_allocated(%struct.sock*) #1

declare dso_local i64 @sk_prot_mem_limits(%struct.sock*, i32) #1

declare dso_local i32 @WRITE_ONCE(i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
