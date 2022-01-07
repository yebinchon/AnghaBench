; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_ssi.c_ssi_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_ssi.c_ssi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssi_priv = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64 }

@ssi_cpu_data = common dso_local global %struct.ssi_priv* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"ssi: already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ssi_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.ssi_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %7 = load %struct.ssi_priv*, %struct.ssi_priv** @ssi_cpu_data, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.ssi_priv, %struct.ssi_priv* %7, i64 %10
  store %struct.ssi_priv* %11, %struct.ssi_priv** %6, align 8
  %12 = load %struct.ssi_priv*, %struct.ssi_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ssi_priv, %struct.ssi_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.ssi_priv*, %struct.ssi_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ssi_priv, %struct.ssi_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
