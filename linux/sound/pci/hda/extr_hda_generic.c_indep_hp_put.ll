; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_indep_hp_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_indep_hp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i64, i32*, i32*, i32, %struct.TYPE_8__, i32*, i64, %struct.TYPE_7__, i64*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64* }

@EBUSY = common dso_local global i32 0, align 4
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @indep_hp_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indep_hp_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %5, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %6, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 11
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %125

32:                                               ; preds = %2
  %33 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %34 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %32
  %39 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %40 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 10
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64* %49, i64** %9, align 8
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %52 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64* %55, i64** %9, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %58 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %56
  %62 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %63 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %70 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %71 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %74 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %79 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %84 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @update_aamix_paths(%struct.hda_codec* %69, i32 %72, i32 %77, i32 %82, i64 %86)
  br label %105

88:                                               ; preds = %61
  %89 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %90 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %91 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %94 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %99 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %104 = call i32 @update_aamix_paths(%struct.hda_codec* %89, i32 %92, i32 %97, i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %88, %68
  br label %106

106:                                              ; preds = %105, %56
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %109 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %111 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i64*, i64** %9, align 8
  store i64 0, i64* %115, align 8
  br label %121

116:                                              ; preds = %106
  %117 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %118 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %9, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %114
  %122 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %123 = call i32 @call_hp_automute(%struct.hda_codec* %122, i32* null)
  store i32 1, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %32
  br label %125

125:                                              ; preds = %124, %29
  %126 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %127 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_aamix_paths(%struct.hda_codec*, i32, i32, i32, i64) #1

declare dso_local i32 @call_hp_automute(%struct.hda_codec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
