; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_dapm_enable_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_dapm_enable_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8824 = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8824*, i8*)* @nau8824_dapm_enable_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8824_dapm_enable_pin(%struct.nau8824* %0, i8* %1) #0 {
  %3 = alloca %struct.nau8824*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [80 x i8], align 16
  store %struct.nau8824* %0, %struct.nau8824** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.nau8824*, %struct.nau8824** %3, align 8
  %9 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %9, align 8
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %5, align 8
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @snprintf(i8* %19, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  %23 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %25 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %23, i8* %24)
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
