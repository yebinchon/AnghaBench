; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1988_auto_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1988_auto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ad1988_auto_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1988_auto_init(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ad198x_spec*, %struct.ad198x_spec** %9, align 8
  store %struct.ad198x_spec* %10, %struct.ad198x_spec** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = call i32 @snd_hda_gen_init(%struct.hda_codec* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %19 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %53

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %32 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %30, i32 %37)
  store %struct.nid_path* %38, %struct.nid_path** %7, align 8
  %39 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %40 = icmp ne %struct.nid_path* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %44 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %45 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_hda_activate_path(%struct.hda_codec* %42, %struct.nid_path* %43, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %41, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %26

52:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %24, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
