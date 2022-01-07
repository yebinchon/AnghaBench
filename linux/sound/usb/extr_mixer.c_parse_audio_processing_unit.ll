; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_audio_processing_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_audio_processing_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@procunits = common dso_local global i32 0, align 4
@uac3_procunits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, i32, i8*)* @parse_audio_processing_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio_processing_unit(%struct.mixer_build* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mixer_build*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %9 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 130, label %13
    i32 129, label %13
    i32 128, label %20
  ]

13:                                               ; preds = %3, %3
  br label %14

14:                                               ; preds = %3, %13
  %15 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @procunits, align 4
  %19 = call i32 @build_audio_procunit(%struct.mixer_build* %15, i32 %16, i8* %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @uac3_procunits, align 4
  %25 = call i32 @build_audio_procunit(%struct.mixer_build* %21, i32 %22, i8* %23, i32 %24, i32 0)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @build_audio_procunit(%struct.mixer_build*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
