; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_add_kctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_add_kctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_keymap = type { i32, i32 }
%struct.hda_jack_tbl = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.hda_jack_tbl* }

@hda_free_jack_priv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_jack_add_kctl(%struct.hda_codec* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.hda_jack_keymap* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hda_jack_keymap*, align 8
  %14 = alloca %struct.hda_jack_tbl*, align 8
  %15 = alloca %struct.hda_jack_keymap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.hda_jack_keymap* %5, %struct.hda_jack_keymap** %13, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec* %19, i32 %20)
  store %struct.hda_jack_tbl* %21, %struct.hda_jack_tbl** %14, align 8
  %22 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %23 = icmp ne %struct.hda_jack_tbl* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %138

25:                                               ; preds = %6
  %26 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %27 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %138

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @get_input_jack_type(%struct.hda_codec* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %31
  store i32 0, i32* %18, align 4
  %39 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %13, align 8
  %40 = icmp ne %struct.hda_jack_keymap* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %13, align 8
  store %struct.hda_jack_keymap* %42, %struct.hda_jack_keymap** %15, align 8
  br label %43

43:                                               ; preds = %54, %41
  %44 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %45 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %50 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %48
  %55 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %56 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %55, i32 1
  store %struct.hda_jack_keymap* %56, %struct.hda_jack_keymap** %15, align 8
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %18, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %67 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %66, i32 0, i32 2
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @snd_jack_new(i32 %61, i8* %62, i32 %65, %struct.TYPE_4__** %67, i32 1, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  br label %138

74:                                               ; preds = %58
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %81 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %84 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %86 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %88 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %89 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store %struct.hda_jack_tbl* %87, %struct.hda_jack_tbl** %91, align 8
  %92 = load i32, i32* @hda_free_jack_priv, align 4
  %93 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %94 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  %97 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %13, align 8
  %98 = icmp ne %struct.hda_jack_keymap* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %74
  %100 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %13, align 8
  store %struct.hda_jack_keymap* %100, %struct.hda_jack_keymap** %15, align 8
  br label %101

101:                                              ; preds = %117, %99
  %102 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %103 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %108 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %111 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %114 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @snd_jack_set_key(%struct.TYPE_4__* %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %106
  %118 = load %struct.hda_jack_keymap*, %struct.hda_jack_keymap** %15, align 8
  %119 = getelementptr inbounds %struct.hda_jack_keymap, %struct.hda_jack_keymap* %118, i32 1
  store %struct.hda_jack_keymap* %119, %struct.hda_jack_keymap** %15, align 8
  br label %101

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120, %74
  %122 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %126 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %14, align 8
  %132 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  br label %135

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %130
  %136 = phi i32 [ %133, %130 ], [ 0, %134 ]
  %137 = call i32 @snd_jack_report(%struct.TYPE_4__* %127, i32 %136)
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %135, %72, %30, %24
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_input_jack_type(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_jack_new(i32, i8*, i32, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @snd_jack_set_key(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_jack_report(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
