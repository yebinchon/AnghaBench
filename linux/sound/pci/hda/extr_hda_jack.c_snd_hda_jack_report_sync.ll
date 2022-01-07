; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_report_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_report_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hda_jack_tbl* }
%struct.hda_jack_tbl = type { i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_report_sync(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  store %struct.hda_jack_tbl* %9, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %19 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %25 = call i32 @jack_detect_update(%struct.hda_codec* %23, %struct.hda_jack_tbl* %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %31 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %30, i32 1
  store %struct.hda_jack_tbl* %31, %struct.hda_jack_tbl** %3, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %35, align 8
  store %struct.hda_jack_tbl* %36, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %100, %32
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %37
  %45 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %46 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %51 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %56 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  br label %100

60:                                               ; preds = %54
  %61 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %62 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %5, align 4
  %64 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %65 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @get_jack_plug_state(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %71 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %60
  %76 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %77 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @snd_jack_report(i32 %78, i32 %79)
  %81 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %82 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %75
  %86 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %87 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %91 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = xor i32 %92, -1
  %94 = and i32 %89, %93
  %95 = call i32 @snd_jack_report(i32 %88, i32 %94)
  %96 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %97 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %85, %75
  br label %99

99:                                               ; preds = %98, %44
  br label %100

100:                                              ; preds = %99, %59
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  %103 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %104 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %103, i32 1
  store %struct.hda_jack_tbl* %104, %struct.hda_jack_tbl** %3, align 8
  br label %37

105:                                              ; preds = %37
  ret void
}

declare dso_local i32 @jack_detect_update(%struct.hda_codec*, %struct.hda_jack_tbl*) #1

declare dso_local i64 @get_jack_plug_state(i32) #1

declare dso_local i32 @snd_jack_report(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
