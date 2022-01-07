; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_pincfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_pincfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_array = type { i32 }
%struct.hda_pincfg = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_add_pincfg(%struct.hda_codec* %0, %struct.snd_array* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_array*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_pincfg*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.snd_array* %1, %struct.snd_array** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = load %struct.snd_array*, %struct.snd_array** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.hda_pincfg* @look_up_pincfg(%struct.hda_codec* %11, %struct.snd_array* %12, i32 %13)
  store %struct.hda_pincfg* %14, %struct.hda_pincfg** %10, align 8
  %15 = load %struct.hda_pincfg*, %struct.hda_pincfg** %10, align 8
  %16 = icmp ne %struct.hda_pincfg* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.snd_array*, %struct.snd_array** %7, align 8
  %19 = call %struct.hda_pincfg* @snd_array_new(%struct.snd_array* %18)
  store %struct.hda_pincfg* %19, %struct.hda_pincfg** %10, align 8
  %20 = load %struct.hda_pincfg*, %struct.hda_pincfg** %10, align 8
  %21 = icmp ne %struct.hda_pincfg* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %33

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hda_pincfg*, %struct.hda_pincfg** %10, align 8
  %28 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.hda_pincfg*, %struct.hda_pincfg** %10, align 8
  %32 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.hda_pincfg* @look_up_pincfg(%struct.hda_codec*, %struct.snd_array*, i32) #1

declare dso_local %struct.hda_pincfg* @snd_array_new(%struct.snd_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
