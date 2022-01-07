; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.fib_result = type { i32 }
%struct.in_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_route_input_rcu(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4, %struct.fib_result* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.fib_result*, align 8
  %14 = alloca %struct.in_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.in_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.fib_result* %5, %struct.fib_result** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @ipv4_is_multicast(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %6
  %22 = load %struct.net_device*, %struct.net_device** %12, align 8
  %23 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %22)
  store %struct.in_device* %23, %struct.in_device** %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %16, align 4
  %26 = load %struct.in_device*, %struct.in_device** %14, align 8
  %27 = icmp ne %struct.in_device* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %7, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.in_device*, %struct.in_device** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ip_check_mc_rcu(%struct.in_device* %31, i32 %32, i32 %33, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %30
  %42 = load %struct.net_device*, %struct.net_device** %12, align 8
  %43 = call i64 @netif_is_l3_slave(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  %49 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %48)
  store %struct.in_device* %49, %struct.in_device** %17, align 8
  %50 = load %struct.in_device*, %struct.in_device** %17, align 8
  %51 = icmp ne %struct.in_device* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.in_device*, %struct.in_device** %17, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ip_check_mc_rcu(%struct.in_device* %53, i32 %54, i32 %55, i32 %59)
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %52, %45
  br label %62

62:                                               ; preds = %61, %41, %30
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.net_device*, %struct.net_device** %12, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @ip_route_input_mc(%struct.sk_buff* %66, i32 %67, i32 %68, i32 %69, %struct.net_device* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %65, %62
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %7, align 4
  br label %83

75:                                               ; preds = %6
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.net_device*, %struct.net_device** %12, align 8
  %81 = load %struct.fib_result*, %struct.fib_result** %13, align 8
  %82 = call i32 @ip_route_input_slow(%struct.sk_buff* %76, i32 %77, i32 %78, i32 %79, %struct.net_device* %80, %struct.fib_result* %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %75, %73, %28
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @ip_check_mc_rcu(%struct.in_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @netif_is_l3_slave(%struct.net_device*) #1

declare dso_local i32 @ip_route_input_mc(%struct.sk_buff*, i32, i32, i32, %struct.net_device*, i32) #1

declare dso_local i32 @ip_route_input_slow(%struct.sk_buff*, i32, i32, i32, %struct.net_device*, %struct.fib_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
