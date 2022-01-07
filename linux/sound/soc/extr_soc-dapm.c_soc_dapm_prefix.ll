; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_soc_dapm_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_soc_dapm_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snd_soc_dapm_context*)* @soc_dapm_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @soc_dapm_prefix(%struct.snd_soc_dapm_context* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %3, align 8
  %4 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %5 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
