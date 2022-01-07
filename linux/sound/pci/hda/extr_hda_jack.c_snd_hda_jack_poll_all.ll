; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_poll_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_poll_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hda_jack_tbl* }
%struct.hda_jack_tbl = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_poll_all(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  store %struct.hda_jack_tbl* %10, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %11
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %20 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %25 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %30 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23, %18
  br label %53

34:                                               ; preds = %28
  %35 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %36 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @get_jack_plug_state(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %41 = call i32 @jack_detect_update(%struct.hda_codec* %39, %struct.hda_jack_tbl* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %44 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @get_jack_plug_state(i32 %45)
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %53

49:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %52 = call i32 @call_jack_callback(%struct.hda_codec* %50, i32 0, %struct.hda_jack_tbl* %51)
  br label %53

53:                                               ; preds = %49, %48, %33
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %57 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %56, i32 1
  store %struct.hda_jack_tbl* %57, %struct.hda_jack_tbl** %3, align 8
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = call i32 @snd_hda_jack_report_sync(%struct.hda_codec* %62)
  br label %64

64:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @get_jack_plug_state(i32) #1

declare dso_local i32 @jack_detect_update(%struct.hda_codec*, %struct.hda_jack_tbl*) #1

declare dso_local i32 @call_jack_callback(%struct.hda_codec*, i32, %struct.hda_jack_tbl*) #1

declare dso_local i32 @snd_hda_jack_report_sync(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
