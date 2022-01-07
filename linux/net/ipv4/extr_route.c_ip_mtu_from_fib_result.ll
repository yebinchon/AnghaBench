; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_mtu_from_fib_result.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_mtu_from_fib_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_result = type { %struct.fib_info*, %struct.fib_nh_common* }
%struct.fib_info = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.fib_nh_common = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.fib_nh_exception = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RTAX_LOCK = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IP_MAX_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_mtu_from_fib_result(%struct.fib_result* %0, i32 %1) #0 {
  %3 = alloca %struct.fib_result*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_nh_common*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.fib_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fib_nh_exception*, align 8
  store %struct.fib_result* %0, %struct.fib_result** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.fib_result*, %struct.fib_result** %3, align 8
  %11 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %10, i32 0, i32 1
  %12 = load %struct.fib_nh_common*, %struct.fib_nh_common** %11, align 8
  store %struct.fib_nh_common* %12, %struct.fib_nh_common** %5, align 8
  %13 = load %struct.fib_nh_common*, %struct.fib_nh_common** %5, align 8
  %14 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.fib_result*, %struct.fib_result** %3, align 8
  %17 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %16, i32 0, i32 0
  %18 = load %struct.fib_info*, %struct.fib_info** %17, align 8
  store %struct.fib_info* %18, %struct.fib_info** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.TYPE_6__* @dev_net(%struct.net_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  %26 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %27 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @RTAX_LOCK, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RTAX_MTU, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25, %2
  %41 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %42 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %40, %25
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.fib_nh_common*, %struct.fib_nh_common** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.fib_nh_exception* @find_exception(%struct.fib_nh_common* %52, i32 %53)
  store %struct.fib_nh_exception* %54, %struct.fib_nh_exception** %9, align 8
  %55 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %56 = icmp ne %struct.fib_nh_exception* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i32, i32* @jiffies, align 4
  %59 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %60 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @time_after_eq(i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %66 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %64, %57, %51
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @READ_ONCE(i32 %79)
  %81 = load i32, i32* @IP_MAX_MTU, align 4
  %82 = call i64 @min(i32 %80, i32 %81)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.fib_nh_common*, %struct.fib_nh_common** %5, align 8
  %86 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @lwtunnel_headroom(i32 %87, i64 %88)
  %90 = sub nsw i64 %84, %89
  ret i64 %90
}

declare dso_local %struct.TYPE_6__* @dev_net(%struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.fib_nh_exception* @find_exception(%struct.fib_nh_common*, i32) #1

declare dso_local i32 @time_after_eq(i32, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @lwtunnel_headroom(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
