; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_ssi = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_ssi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_ssi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.fsl_ssi* @dev_get_drvdata(i32* %5)
  store %struct.fsl_ssi* %6, %struct.fsl_ssi** %3, align 8
  %7 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %7, i32 0, i32 3
  %9 = call i32 @fsl_ssi_debugfs_remove(i32* %8)
  %10 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @platform_device_unregister(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %21 = call i32 @fsl_ssi_hw_clean(%struct.fsl_ssi* %20)
  %22 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %31 = call i32 @fsl_ssi_imx_clean(%struct.platform_device* %29, %struct.fsl_ssi* %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %34 = call i64 @fsl_ssi_is_ac97(%struct.fsl_ssi* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = call i32 @snd_soc_set_ac97_ops(i32* null)
  %38 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %39 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %38, i32 0, i32 0
  %40 = call i32 @mutex_destroy(i32* %39)
  br label %41

41:                                               ; preds = %36, %32
  ret i32 0
}

declare dso_local %struct.fsl_ssi* @dev_get_drvdata(i32*) #1

declare dso_local i32 @fsl_ssi_debugfs_remove(i32*) #1

declare dso_local i32 @platform_device_unregister(i64) #1

declare dso_local i32 @fsl_ssi_hw_clean(%struct.fsl_ssi*) #1

declare dso_local i32 @fsl_ssi_imx_clean(%struct.platform_device*, %struct.fsl_ssi*) #1

declare dso_local i64 @fsl_ssi_is_ac97(%struct.fsl_ssi*) #1

declare dso_local i32 @snd_soc_set_ac97_ops(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
