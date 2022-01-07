; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_out_of_resources.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_out_of_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_sock = type { i32, i32, i64 }

@tcp_jiffies32 = common dso_local global i64 0, align 8
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_out_of_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_out_of_resources(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* @tcp_jiffies32, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @TCP_RTO_MAX, align 4
  %17 = mul nsw i32 2, %16
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @tcp_check_oom(%struct.sock* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load i64, i64* @tcp_jiffies32, align 8
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %38
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %38
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %52, %47
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i32 @tcp_send_active_reset(%struct.sock* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = call i32 @tcp_done(%struct.sock* %66)
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = call i32 @sock_net(%struct.sock* %68)
  %70 = load i32, i32* @LINUX_MIB_TCPABORTONMEMORY, align 4
  %71 = call i32 @__NET_INC_STATS(i32 %69, i32 %70)
  store i32 1, i32* %3, align 4
  br label %81

72:                                               ; preds = %33
  %73 = load %struct.sock*, %struct.sock** %4, align 8
  %74 = call i32 @sock_net(%struct.sock* %73)
  %75 = call i32 @check_net(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.sock*, %struct.sock** %4, align 8
  %79 = call i32 @tcp_done(%struct.sock* %78)
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %65
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_check_oom(%struct.sock*, i32) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @check_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
