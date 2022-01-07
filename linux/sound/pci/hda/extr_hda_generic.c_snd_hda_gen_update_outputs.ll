; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_update_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_update_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32*, i32*, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64*, i64*, i64* }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_gen_update_outputs(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  store %struct.hda_gen_spec* %8, %struct.hda_gen_spec** %3, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i64* %28)
  %30 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %31 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %36 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @do_automute(%struct.hda_codec* %24, i32 %29, i64* %33, i32* %34, i32 %37)
  %39 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %40 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %52

44:                                               ; preds = %23
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %49 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %47, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %43
  %53 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %54 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %60 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %62 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %69 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %4, align 8
  br label %75

71:                                               ; preds = %52
  %72 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %73 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = call i32 @ARRAY_SIZE(i64* %80)
  %82 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %83 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @do_automute(%struct.hda_codec* %76, i32 %81, i64* %85, i32* %86, i32 %87)
  %89 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %90 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %94, %100
  br i1 %101, label %116, label %102

102:                                              ; preds = %75
  %103 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %104 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %110 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %108, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %102, %75
  br label %152

117:                                              ; preds = %102
  %118 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %119 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %127

123:                                              ; preds = %117
  %124 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %125 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %122
  %128 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %129 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %135 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  %136 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %137 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %4, align 8
  %139 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %140 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %141 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %140, i32 0, i32 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @ARRAY_SIZE(i64* %143)
  %145 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %146 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i64*, i64** %147, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @do_automute(%struct.hda_codec* %139, i32 %144, i64* %148, i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %127, %116
  ret void
}

declare dso_local i32 @do_automute(%struct.hda_codec*, i32, i64*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
