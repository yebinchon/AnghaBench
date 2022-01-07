; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_mic_boost.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_mic_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i8**, i32*, i32, %struct.hda_input_mux, %struct.auto_pin_cfg }
%struct.hda_input_mux = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.auto_pin_cfg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nid_path = type { i32* }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@AUTO_PIN_LINE_IN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s Boost Volume\00", align 1
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NID_PATH_BOOST_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @parse_mic_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mic_boost(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca %struct.hda_input_mux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nid_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %4, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 4
  store %struct.auto_pin_cfg* %18, %struct.auto_pin_cfg** %5, align 8
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 3
  store %struct.hda_input_mux* %20, %struct.hda_input_mux** %6, align 8
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %114, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %30 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %117

33:                                               ; preds = %27
  %34 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %38 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %39 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %48 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  store i32 4, i32* %13, align 4
  br label %110

52:                                               ; preds = %33
  %53 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AUTO_PIN_LINE_IN, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 4, i32* %13, align 4
  br label %110

64:                                               ; preds = %52
  %65 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %65, i32 0, i32 %66)
  store %struct.nid_path* %67, %struct.nid_path** %8, align 8
  %68 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %69 = icmp ne %struct.nid_path* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 4, i32* %13, align 4
  br label %110

71:                                               ; preds = %64
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %74 = call i32 @look_for_boost_amp(%struct.hda_codec* %72, %struct.nid_path* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 4, i32* %13, align 4
  br label %110

78:                                               ; preds = %71
  %79 = trunc i64 %35 to i32
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @snprintf(i8* %37, i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %86)
  %88 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %89 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  %90 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %91 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @add_control(%struct.hda_gen_spec* %88, i32 %89, i8* %37, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %78
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %110

103:                                              ; preds = %78
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %106 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @NID_PATH_BOOST_CTL, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %103, %100, %77, %70, %63, %51
  %111 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %13, align 4
  switch i32 %112, label %120 [
    i32 0, label %113
    i32 4, label %114
    i32 1, label %118
  ]

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %27

117:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %110, %25
  %119 = load i32, i32* %2, align 4
  ret i32 %119

120:                                              ; preds = %110
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #2

declare dso_local i32 @look_for_boost_amp(%struct.hda_codec*, %struct.nid_path*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @add_control(%struct.hda_gen_spec*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
