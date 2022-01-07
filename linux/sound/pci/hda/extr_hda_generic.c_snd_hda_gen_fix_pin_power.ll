; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_fix_pin_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_fix_pin_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.nid_path = type { i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_fix_pin_power(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %6, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 0
  %13 = call %struct.nid_path* @snd_array_new(i32* %12)
  store %struct.nid_path* %13, %struct.nid_path** %7, align 8
  %14 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %15 = icmp ne %struct.nid_path* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %21 = call i32 @memset(%struct.nid_path* %20, i32 0, i32 24)
  %22 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %23 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %26 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %30 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %32 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %34 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %33, i32 0, i32 3
  store i32 1, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nid_path* @snd_array_new(i32*) #1

declare dso_local i32 @memset(%struct.nid_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
