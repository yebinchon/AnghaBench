; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_pcm_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_pcm_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2s_dev_data = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acp3x_pcm_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_pcm_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2s_dev_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.i2s_dev_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.i2s_dev_data* %7, %struct.i2s_dev_data** %5, align 8
  %8 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %5, align 8
  %9 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @acp3x_init(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %5, align 8
  %19 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @mmACP_EXTERNAL_INTR_ENB, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @rv_writel(i32 1, i64 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.i2s_dev_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @acp3x_init(i64) #1

declare dso_local i32 @rv_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
