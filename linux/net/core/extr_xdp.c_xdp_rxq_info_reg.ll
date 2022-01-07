; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_rxq_info_reg.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_rxq_info_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_rxq_info = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@REG_STATE_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Driver promised not to register this\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_STATE_REGISTERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Missing unregister, handled but fix driver\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Missing net_device from driver\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_rxq_info_reg(%struct.xdp_rxq_info* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_rxq_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.xdp_rxq_info* %0, %struct.xdp_rxq_info** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %9 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_STATE_UNUSED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %19 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_STATE_REGISTERED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %26 = call i32 @xdp_rxq_info_unreg(%struct.xdp_rxq_info* %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %36 = call i32 @xdp_rxq_info_init(%struct.xdp_rxq_info* %35)
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %39 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %38, i32 0, i32 2
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %42 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @REG_STATE_REGISTERED, align 8
  %44 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %45 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %30, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @xdp_rxq_info_unreg(%struct.xdp_rxq_info*) #1

declare dso_local i32 @xdp_rxq_info_init(%struct.xdp_rxq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
