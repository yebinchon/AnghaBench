; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_get_pincfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_get_pincfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, i32 }
%struct.hda_pincfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_pincfg*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.hda_pincfg* @look_up_pincfg(%struct.hda_codec* %7, i32* %9, i32 %10)
  store %struct.hda_pincfg* %11, %struct.hda_pincfg** %6, align 8
  %12 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %13 = icmp ne %struct.hda_pincfg* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %16 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.hda_pincfg* @look_up_pincfg(%struct.hda_codec* %19, i32* %21, i32 %22)
  store %struct.hda_pincfg* %23, %struct.hda_pincfg** %6, align 8
  %24 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %25 = icmp ne %struct.hda_pincfg* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %28 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.hda_pincfg* @look_up_pincfg(%struct.hda_codec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
