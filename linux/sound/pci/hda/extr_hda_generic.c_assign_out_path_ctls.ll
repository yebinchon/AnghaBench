; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_assign_out_path_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_assign_out_path_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.nid_path = type { i32* }

@BAD_SHARED_VOL = common dso_local global i32 0, align 4
@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@HDA_OUTPUT = common dso_local global i32 0, align 4
@HDA_AMP_VAL_MIN_MUTE = common dso_local global i32 0, align 4
@AC_WID_PIN = common dso_local global i32 0, align 4
@AC_WID_AUD_OUT = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.nid_path*)* @assign_out_path_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_out_path_ctls(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.nid_path* %1, %struct.nid_path** %5, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %15 = icmp ne %struct.nid_path* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @BAD_SHARED_VOL, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %3, align 4
  br label %132

19:                                               ; preds = %2
  %20 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %21 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %29 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %19
  store i32 0, i32* %3, align 4
  br label %132

36:                                               ; preds = %27
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %39 = call i64 @look_for_out_vol_nid(%struct.hda_codec* %37, %struct.nid_path* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @HDA_OUTPUT, align 4
  %45 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %43, i32 3, i32 0, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @HDA_AMP_VAL_MIN_MUTE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %42
  %55 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %58 = call i64 @is_ctl_used(%struct.hda_codec* %55, i32 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @BAD_SHARED_VOL, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %71

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %67 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %60
  br label %76

72:                                               ; preds = %36
  %73 = load i32, i32* @BAD_SHARED_VOL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %71
  %77 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %78 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %79 = call i64 @look_for_out_mute_nid(%struct.hda_codec* %77, %struct.nid_path* %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %76
  %83 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @get_wcaps(%struct.hda_codec* %83, i64 %84)
  %86 = call i32 @get_wcaps_type(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @AC_WID_PIN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AC_WID_AUD_OUT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* @HDA_OUTPUT, align 4
  %98 = call i64 @nid_has_mute(%struct.hda_codec* %95, i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %90, %82
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* @HDA_OUTPUT, align 4
  %103 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %101, i32 3, i32 0, i32 %102)
  store i32 %103, i32* %8, align 4
  br label %108

104:                                              ; preds = %94
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* @HDA_INPUT, align 4
  %107 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %105, i32 3, i32 0, i32 %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %112 = call i64 @is_ctl_used(%struct.hda_codec* %109, i32 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @BAD_SHARED_VOL, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %125

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %121 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %114
  br label %130

126:                                              ; preds = %76
  %127 = load i32, i32* @BAD_SHARED_VOL, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %125
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %35, %16
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @look_for_out_vol_nid(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @HDA_COMPOSE_AMP_VAL(i64, i32, i32, i32) #1

declare dso_local i64 @is_ctl_used(%struct.hda_codec*, i32, i64) #1

declare dso_local i64 @look_for_out_mute_nid(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i64 @nid_has_mute(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
