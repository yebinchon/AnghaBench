; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_mc_validate_source.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_mc_validate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.in_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_validate_source(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4, %struct.in_device* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.in_device*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.net_device* %4, %struct.net_device** %13, align 8
  store %struct.in_device* %5, %struct.in_device** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.in_device*, %struct.in_device** %14, align 8
  %18 = icmp ne %struct.in_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %84

22:                                               ; preds = %7
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @ipv4_is_multicast(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @ipv4_is_lbcast(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @ETH_P_IP, align 4
  %35 = call i64 @htons(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %26, %22
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %84

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @ipv4_is_loopback(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.in_device*, %struct.in_device** %14, align 8
  %46 = call i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %84

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @ipv4_is_zeronet(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ipv4_is_local_multicast(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IPPROTO_IGMP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %84

69:                                               ; preds = %59, %55
  br label %83

70:                                               ; preds = %51
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.net_device*, %struct.net_device** %13, align 8
  %75 = load %struct.in_device*, %struct.in_device** %14, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @fib_validate_source(%struct.sk_buff* %71, i32 %72, i32 0, i32 %73, i32 0, %struct.net_device* %74, %struct.in_device* %75, i32* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %8, align 4
  br label %84

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %69
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %80, %66, %48, %37, %19
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i64 @ipv4_is_lbcast(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ipv4_is_loopback(i32) #1

declare dso_local i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device*) #1

declare dso_local i64 @ipv4_is_zeronet(i32) #1

declare dso_local i32 @ipv4_is_local_multicast(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @fib_validate_source(%struct.sk_buff*, i32, i32, i32, i32, %struct.net_device*, %struct.in_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
