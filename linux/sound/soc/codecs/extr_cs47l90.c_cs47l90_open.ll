; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs47l90 = type { %struct.madera_priv }
%struct.madera_priv = type { i32*, %struct.madera* }
%struct.madera = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cs47l90-dsp-voicectrl\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cs47l90-dsp-trace\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"No suitable compressed stream for DAI '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @cs47l90_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l90_open(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.cs47l90*, align 8
  %7 = alloca %struct.madera_priv*, align 8
  %8 = alloca %struct.madera*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %10 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %5, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = call %struct.cs47l90* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs47l90* %17, %struct.cs47l90** %6, align 8
  %18 = load %struct.cs47l90*, %struct.cs47l90** %6, align 8
  %19 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %18, i32 0, i32 0
  store %struct.madera_priv* %19, %struct.madera_priv** %7, align 8
  %20 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %21 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %20, i32 0, i32 1
  %22 = load %struct.madera*, %struct.madera** %21, align 8
  store %struct.madera* %22, %struct.madera** %8, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 5, i32* %9, align 4
  br label %53

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %52

40:                                               ; preds = %31
  %41 = load %struct.madera*, %struct.madera** %8, align 8
  %42 = getelementptr inbounds %struct.madera, %struct.madera* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %62

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %55 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %61 = call i32 @wm_adsp_compr_open(i32* %59, %struct.snd_compr_stream* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %53, %40
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.cs47l90* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm_adsp_compr_open(i32*, %struct.snd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
