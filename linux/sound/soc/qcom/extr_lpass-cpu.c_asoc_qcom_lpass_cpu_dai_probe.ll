; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_asoc_qcom_lpass_cpu_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_asoc_qcom_lpass_cpu_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lpass_data = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"error writing to i2sctl reg: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_qcom_lpass_cpu_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.lpass_data*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = call %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %5)
  store %struct.lpass_data* %6, %struct.lpass_data** %3, align 8
  %7 = load %struct.lpass_data*, %struct.lpass_data** %3, align 8
  %8 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lpass_data*, %struct.lpass_data** %3, align 8
  %11 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LPAIF_I2SCTL_REG(i32 %12, i32 %17)
  %19 = call i32 @regmap_write(i32 %9, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_I2SCTL_REG(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
