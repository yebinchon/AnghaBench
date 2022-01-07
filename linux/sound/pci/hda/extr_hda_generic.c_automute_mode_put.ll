; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_automute_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_automute_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @automute_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @automute_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.hda_codec* %9, %struct.hda_codec** %6, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %7, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %105 [
    i32 0, label %20
    i32 1, label %36
    i32 2, label %76
  ]

20:                                               ; preds = %2
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %27 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %111

31:                                               ; preds = %25, %20
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %108

36:                                               ; preds = %2
  %37 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %38 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %43 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %48 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %111

52:                                               ; preds = %46, %41
  %53 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %54 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %56 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %75

57:                                               ; preds = %36
  %58 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %59 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %64 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %111

68:                                               ; preds = %62
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %111

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %52
  br label %108

76:                                               ; preds = %2
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %83 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %111

89:                                               ; preds = %81
  %90 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %91 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %111

100:                                              ; preds = %94, %89
  %101 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %102 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  %103 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %104 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %108

105:                                              ; preds = %2
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %111

108:                                              ; preds = %100, %75, %31
  %109 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %110 = call i32 @call_update_outputs(%struct.hda_codec* %109)
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %105, %99, %86, %71, %67, %51, %30
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @call_update_outputs(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
