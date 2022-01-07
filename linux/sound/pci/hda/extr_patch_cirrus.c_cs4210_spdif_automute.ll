; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs4210_spdif_automute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs4210_spdif_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_jack_callback = type { i32 }

@CS4210_VENDOR_NID = common dso_local global i64 0, align 8
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_callback*)* @cs4210_spdif_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4210_spdif_automute(%struct.hda_codec* %0, %struct.hda_jack_callback* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_callback*, align 8
  %5 = alloca %struct.cs_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_callback* %1, %struct.hda_jack_callback** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.cs_spec*, %struct.cs_spec** %9, align 8
  store %struct.cs_spec* %10, %struct.cs_spec** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %12 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %19 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %24 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CS4210_VENDOR_NID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %2
  br label %55

29:                                               ; preds = %22
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %35 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %55

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  %42 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @PIN_OUT, align 4
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %43, i32 %44, i32 %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = call i32 @cs_automute(%struct.hda_codec* %53)
  br label %55

55:                                               ; preds = %50, %38, %28
  ret void
}

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_set_pin_ctl(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @cs_automute(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
