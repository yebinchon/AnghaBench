; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc233_alc662_fixup_lenovo_dual_codecs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc233_alc662_fixup_lenovo_dual_codecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hda_fixup = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"HDAudio-Lenovo-DualCodecs\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Rear-Panel Capture Volume\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Front-Panel Capture Volume\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Rear-Panel Capture Switch\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Front-Panel Capture Switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc233_alc662_fixup_lenovo_dual_codecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc233_alc662_fixup_lenovo_dual_codecs(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = load %struct.hda_fixup*, %struct.hda_fixup** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @alc_fixup_dual_codecs(%struct.hda_codec* %7, %struct.hda_fixup* %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %36 [
    i32 128, label %12
    i32 129, label %19
  ]

12:                                               ; preds = %3
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)
  %27 = call i32 @rename_ctl(%struct.hda_codec* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)
  %35 = call i32 @rename_ctl(%struct.hda_codec* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %3, %19, %12
  ret void
}

declare dso_local i32 @alc_fixup_dual_codecs(%struct.hda_codec*, %struct.hda_fixup*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @rename_ctl(%struct.hda_codec*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
