; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_tbl_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_tbl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.hda_jack_tbl* }
%struct.hda_jack_tbl = type { %struct.hda_jack_callback*, i64 }
%struct.hda_jack_callback = type { %struct.hda_jack_callback* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_tbl_clear(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_jack_callback*, align 8
  %6 = alloca %struct.hda_jack_callback*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  store %struct.hda_jack_tbl* %10, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %54, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %11
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %27 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %35 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @snd_device_free(i32 %33, i64 %36)
  br label %38

38:                                               ; preds = %30, %25, %18
  %39 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %40 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %39, i32 0, i32 0
  %41 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %40, align 8
  store %struct.hda_jack_callback* %41, %struct.hda_jack_callback** %5, align 8
  br label %42

42:                                               ; preds = %51, %38
  %43 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %5, align 8
  %44 = icmp ne %struct.hda_jack_callback* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %5, align 8
  %47 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %46, i32 0, i32 0
  %48 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %47, align 8
  store %struct.hda_jack_callback* %48, %struct.hda_jack_callback** %6, align 8
  %49 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %5, align 8
  %50 = call i32 @kfree(%struct.hda_jack_callback* %49)
  br label %51

51:                                               ; preds = %45
  %52 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %6, align 8
  store %struct.hda_jack_callback* %52, %struct.hda_jack_callback** %5, align 8
  br label %42

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %58 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %57, i32 1
  store %struct.hda_jack_tbl* %58, %struct.hda_jack_tbl** %3, align 8
  br label %11

59:                                               ; preds = %11
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %60, i32 0, i32 0
  %62 = call i32 @snd_array_free(%struct.TYPE_4__* %61)
  ret void
}

declare dso_local i32 @snd_device_free(i32, i64) #1

declare dso_local i32 @kfree(%struct.hda_jack_callback*) #1

declare dso_local i32 @snd_array_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
