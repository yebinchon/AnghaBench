; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_apply_pincfgs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_apply_pincfgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_pintbl = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_apply_pincfgs(%struct.hda_codec* %0, %struct.hda_pintbl* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_pintbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_pintbl* %1, %struct.hda_pintbl** %4, align 8
  br label %5

5:                                                ; preds = %19, %2
  %6 = load %struct.hda_pintbl*, %struct.hda_pintbl** %4, align 8
  %7 = getelementptr inbounds %struct.hda_pintbl, %struct.hda_pintbl* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = load %struct.hda_pintbl*, %struct.hda_pintbl** %4, align 8
  %13 = getelementptr inbounds %struct.hda_pintbl, %struct.hda_pintbl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hda_pintbl*, %struct.hda_pintbl** %4, align 8
  %16 = getelementptr inbounds %struct.hda_pintbl, %struct.hda_pintbl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %11, i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load %struct.hda_pintbl*, %struct.hda_pintbl** %4, align 8
  %21 = getelementptr inbounds %struct.hda_pintbl, %struct.hda_pintbl* %20, i32 1
  store %struct.hda_pintbl* %21, %struct.hda_pintbl** %4, align 8
  br label %5

22:                                               ; preds = %5
  ret void
}

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
