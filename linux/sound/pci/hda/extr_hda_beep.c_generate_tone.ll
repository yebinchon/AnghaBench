; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_generate_tone.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_generate_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_beep = type { i32, i32 (%struct.hda_beep*, i32)*, i32, %struct.hda_codec* }
%struct.hda_codec = type { i32 }

@AC_VERB_SET_BEEP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_beep*, i32)* @generate_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_tone(%struct.hda_beep* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_beep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  store %struct.hda_beep* %0, %struct.hda_beep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %7 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %6, i32 0, i32 3
  %8 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  store %struct.hda_codec* %8, %struct.hda_codec** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %13 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = call i32 @snd_hda_power_up(%struct.hda_codec* %17)
  %19 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %20 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %19, i32 0, i32 1
  %21 = load i32 (%struct.hda_beep*, i32)*, i32 (%struct.hda_beep*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.hda_beep*, i32)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %25 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %24, i32 0, i32 1
  %26 = load i32 (%struct.hda_beep*, i32)*, i32 (%struct.hda_beep*, i32)** %25, align 8
  %27 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %28 = call i32 %26(%struct.hda_beep* %27, i32 1)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %31 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %11, %2
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %35 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AC_VERB_SET_BEEP_CONTROL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @snd_hda_codec_write(%struct.hda_codec* %33, i32 %36, i32 0, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %32
  %43 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %44 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %49 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %51 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %50, i32 0, i32 1
  %52 = load i32 (%struct.hda_beep*, i32)*, i32 (%struct.hda_beep*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.hda_beep*, i32)* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %56 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %55, i32 0, i32 1
  %57 = load i32 (%struct.hda_beep*, i32)*, i32 (%struct.hda_beep*, i32)** %56, align 8
  %58 = load %struct.hda_beep*, %struct.hda_beep** %3, align 8
  %59 = call i32 %57(%struct.hda_beep* %58, i32 0)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %62 = call i32 @snd_hda_power_down(%struct.hda_codec* %61)
  br label %63

63:                                               ; preds = %60, %42, %32
  ret void
}

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
