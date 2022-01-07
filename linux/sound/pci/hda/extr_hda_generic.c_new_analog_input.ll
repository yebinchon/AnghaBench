; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_new_analog_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_new_analog_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i8*, i8** }
%struct.nid_path = type { i32*, i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@HDA_CTL_WIDGET_MUTE = common dso_local global i32 0, align 4
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"loopback-merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i64, i8*, i32, i64)* @new_analog_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_analog_input(%struct.hda_codec* %0, i32 %1, i64 %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.hda_gen_spec*, align 8
  %15 = alloca %struct.nid_path*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %21, align 8
  store %struct.hda_gen_spec* %22, %struct.hda_gen_spec** %14, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @look_for_mix_leaf_ctls(%struct.hda_codec* %23, i64 %24, i64 %25, i32* %16, i32* %17)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %157

29:                                               ; preds = %6
  %30 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %30, i64 %31, i64 %32, i32 0)
  store %struct.nid_path* %33, %struct.nid_path** %15, align 8
  %34 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %35 = icmp ne %struct.nid_path* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %157

39:                                               ; preds = %29
  %40 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %41 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %42 = call i32 @print_nid_path(%struct.hda_codec* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.nid_path* %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %44 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %45 = call i8* @snd_hda_get_path_idx(%struct.hda_codec* %43, %struct.nid_path* %44)
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  %52 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %53 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %56 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %39
  %65 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %66 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @__add_pb_vol_ctrl(%struct.hda_gen_spec* %65, i32 %66, i8* %67, i32 %68, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %7, align 4
  br label %157

75:                                               ; preds = %64
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %78 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %39
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %87 = load i32, i32* @HDA_CTL_WIDGET_MUTE, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @__add_pb_sw_ctrl(%struct.hda_gen_spec* %86, i32 %87, i8* %88, i32 %89, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %7, align 4
  br label %157

96:                                               ; preds = %85
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %99 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %82
  %104 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %105 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %104, i32 0, i32 3
  store i32 1, i32* %105, align 8
  %106 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %107 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %106, i32 0, i32 4
  store i32 1, i32* %107, align 4
  %108 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @add_loopback_list(%struct.hda_gen_spec* %108, i64 %109, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %7, align 4
  br label %157

116:                                              ; preds = %103
  %117 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %118 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %121 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %116
  %125 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %126 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %156, label %129

129:                                              ; preds = %124
  %130 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %131 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %132 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %135 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %130, i64 %133, i64 %136, i32 0)
  store %struct.nid_path* %137, %struct.nid_path** %15, align 8
  %138 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %139 = icmp ne %struct.nid_path* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %129
  %141 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %142 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %143 = call i32 @print_nid_path(%struct.hda_codec* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.nid_path* %142)
  %144 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %145 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %144, i32 0, i32 3
  store i32 1, i32* %145, align 8
  %146 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %147 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %146, i32 0, i32 5
  store i32 1, i32* %147, align 8
  %148 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %149 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %148, i32 0, i32 4
  store i32 1, i32* %149, align 4
  %150 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %151 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %152 = call i8* @snd_hda_get_path_idx(%struct.hda_codec* %150, %struct.nid_path* %151)
  %153 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %154 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %140, %129
  br label %156

156:                                              ; preds = %155, %124, %116
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %114, %94, %73, %36, %28
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @look_for_mix_leaf_ctls(%struct.hda_codec*, i64, i64, i32*, i32*) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @print_nid_path(%struct.hda_codec*, i8*, %struct.nid_path*) #1

declare dso_local i8* @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @__add_pb_vol_ctrl(%struct.hda_gen_spec*, i32, i8*, i32, i32) #1

declare dso_local i32 @__add_pb_sw_ctrl(%struct.hda_gen_spec*, i32, i8*, i32, i32) #1

declare dso_local i32 @add_loopback_list(%struct.hda_gen_spec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
