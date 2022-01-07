; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.hdmi_spec_per_pin = type { i32 }
%struct.hda_jack_tbl = type { i32 }
%struct.TYPE_4__ = type { i32 }

@__const.generic_hdmi_build_jack.hdmi_str = private unnamed_addr constant [32 x i8] c"HDMI/DP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [8 x i8] c",pcm=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" Phantom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @generic_hdmi_build_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_build_jack(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca %struct.hdmi_spec_per_pin*, align 8
  %9 = alloca %struct.hda_jack_tbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.generic_hdmi_build_jack.hdmi_str, i32 0, i32 0), i64 32, i1 false)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %15, align 8
  store %struct.hdmi_spec* %16, %struct.hdmi_spec** %7, align 8
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_4__* @get_pcm_rec(%struct.hdmi_spec* %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %34 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %39 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %42 = call i32 @add_hdmi_jack_kctl(%struct.hda_codec* %38, %struct.hdmi_spec* %39, i32 %40, i8* %41)
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %32
  %44 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %44, i32 %45)
  store %struct.hdmi_spec_per_pin* %46, %struct.hdmi_spec_per_pin** %8, align 8
  %47 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %48 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %49 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @is_jack_detectable(%struct.hda_codec* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = sub i64 32, %61
  %63 = sub i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i32 @strncat(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %57, %43
  %67 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %68 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %69 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @snd_hda_jack_add_kctl(%struct.hda_codec* %67, i32 %70, i8* %71, i32 %72, i32 0, i32* null)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %3, align 4
  br label %98

78:                                               ; preds = %66
  %79 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %80 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %81 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %79, i32 %82)
  store %struct.hda_jack_tbl* %83, %struct.hda_jack_tbl** %9, align 8
  %84 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  %85 = icmp eq %struct.hda_jack_tbl* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %98

87:                                               ; preds = %78
  %88 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  %89 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %92 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %87, %86, %76, %37
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @get_pcm_rec(%struct.hdmi_spec*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @add_hdmi_jack_kctl(%struct.hda_codec*, %struct.hdmi_spec*, i32, i8*) #2

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #2

declare dso_local i32 @is_jack_detectable(%struct.hda_codec*, i32) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @snd_hda_jack_add_kctl(%struct.hda_codec*, i32, i8*, i32, i32, i32*) #2

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
