; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_late_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_late_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_card = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tm2_machine_priv = type { i32 }
%struct.snd_soc_dai = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }

@__const.tm2_late_probe.ch_map = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@TM2_DAI_AIF1 = common dso_local global i64 0, align 8
@ARIZONA_CLK_SYSCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set SYSCLK: %d\0A\00", align 1
@TM2_DAI_AIF2 = common dso_local global i64 0, align 8
@ARIZONA_CLK_ASYNCCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set ASYNCCLK: %d\0A\00", align 1
@tm2_speaker_amp_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @tm2_late_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_late_probe(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.tm2_machine_priv*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %12 = call %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.tm2_machine_priv* %12, %struct.tm2_machine_priv** %4, align 8
  %13 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.tm2_late_probe.ch_map to i8*), i64 8, i1 false)
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i64, i64* @TM2_DAI_AIF1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %14, i32 %21)
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %7, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %24, align 8
  store %struct.snd_soc_dai* %25, %struct.snd_soc_dai** %8, align 8
  %26 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %4, align 8
  %32 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %34 = load i32, i32* @ARIZONA_CLK_SYSCLK, align 4
  %35 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %2, align 4
  br label %95

45:                                               ; preds = %1
  %46 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @TM2_DAI_AIF2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %46, i32 %53)
  store %struct.snd_soc_pcm_runtime* %54, %struct.snd_soc_pcm_runtime** %7, align 8
  %55 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %55, i32 0, i32 0
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %56, align 8
  store %struct.snd_soc_dai* %57, %struct.snd_soc_dai** %9, align 8
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %59 = load i32, i32* @ARIZONA_CLK_ASYNCCLK, align 4
  %60 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %58, i32 %59, i32 0, i32 0)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %45
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %2, align 4
  br label %95

70:                                               ; preds = %45
  %71 = call %struct.snd_soc_dai* @snd_soc_find_dai(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tm2_speaker_amp_dev, i32 0, i32 0))
  store %struct.snd_soc_dai* %71, %struct.snd_soc_dai** %6, align 8
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %73 = icmp ne %struct.snd_soc_dai* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %95

77:                                               ; preds = %70
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %80 = call i32 @ARRAY_SIZE(i32* %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %82 = call i32 @snd_soc_dai_set_channel_map(%struct.snd_soc_dai* %78, i32 %80, i32* %81, i32 0, i32* null)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %2, align 4
  br label %95

87:                                               ; preds = %77
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %89 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %88, i32 3, i32 0, i32 2, i32 16)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %92, %85, %74, %63, %38
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.snd_soc_dai* @snd_soc_find_dai(i32*) #1

declare dso_local i32 @snd_soc_dai_set_channel_map(%struct.snd_soc_dai*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
