; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe-dai.c_msm_dai_q6_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe-dai.c_msm_dai_q6_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, i32 }
%struct.q6afe_dai_data = type { %struct.q6afe_port** }
%struct.q6afe_port = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unable to get afe port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @msm_dai_q6_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_dai_q6_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.q6afe_dai_data*, align 8
  %5 = alloca %struct.q6afe_port*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.q6afe_dai_data* @dev_get_drvdata(i32 %8)
  store %struct.q6afe_dai_data* %9, %struct.q6afe_dai_data** %4, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.q6afe_port* @q6afe_port_get_from_id(i32 %12, i64 %15)
  store %struct.q6afe_port* %16, %struct.q6afe_port** %5, align 8
  %17 = load %struct.q6afe_port*, %struct.q6afe_port** %5, align 8
  %18 = call i64 @IS_ERR(%struct.q6afe_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.q6afe_port*, %struct.q6afe_port** %5, align 8
  %29 = load %struct.q6afe_dai_data*, %struct.q6afe_dai_data** %4, align 8
  %30 = getelementptr inbounds %struct.q6afe_dai_data, %struct.q6afe_dai_data* %29, i32 0, i32 0
  %31 = load %struct.q6afe_port**, %struct.q6afe_port*** %30, align 8
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.q6afe_port*, %struct.q6afe_port** %31, i64 %34
  store %struct.q6afe_port* %28, %struct.q6afe_port** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.q6afe_dai_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.q6afe_port* @q6afe_port_get_from_id(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.q6afe_port*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
