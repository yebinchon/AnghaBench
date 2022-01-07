; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_ux500_msp_i2s_of_init_msp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_ux500_msp_i2s_of_init_msp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ux500_msp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.msp_i2s_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ux500_msp*, %struct.msp_i2s_platform_data**)* @ux500_msp_i2s_of_init_msp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_msp_i2s_of_init_msp(%struct.platform_device* %0, %struct.ux500_msp* %1, %struct.msp_i2s_platform_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.ux500_msp*, align 8
  %7 = alloca %struct.msp_i2s_platform_data**, align 8
  %8 = alloca %struct.msp_i2s_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.ux500_msp* %1, %struct.ux500_msp** %6, align 8
  store %struct.msp_i2s_platform_data** %2, %struct.msp_i2s_platform_data*** %7, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.msp_i2s_platform_data*
  %14 = load %struct.msp_i2s_platform_data**, %struct.msp_i2s_platform_data*** %7, align 8
  store %struct.msp_i2s_platform_data* %13, %struct.msp_i2s_platform_data** %14, align 8
  %15 = load %struct.msp_i2s_platform_data**, %struct.msp_i2s_platform_data*** %7, align 8
  %16 = load %struct.msp_i2s_platform_data*, %struct.msp_i2s_platform_data** %15, align 8
  store %struct.msp_i2s_platform_data* %16, %struct.msp_i2s_platform_data** %8, align 8
  %17 = load %struct.msp_i2s_platform_data*, %struct.msp_i2s_platform_data** %8, align 8
  %18 = icmp ne %struct.msp_i2s_platform_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(i32* %24, i32 4, i32 %25)
  %27 = load %struct.ux500_msp*, %struct.ux500_msp** %6, align 8
  %28 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.ux500_msp*, %struct.ux500_msp** %6, align 8
  %31 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %55

38:                                               ; preds = %22
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(i32* %40, i32 4, i32 %41)
  %43 = load %struct.ux500_msp*, %struct.ux500_msp** %6, align 8
  %44 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ux500_msp*, %struct.ux500_msp** %6, align 8
  %47 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51, %35, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
