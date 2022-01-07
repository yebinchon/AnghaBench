; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_mix_leaf_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_mix_leaf_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@NID_PATH_VOL_CTL = common dso_local global i32 0, align 4
@NID_PATH_MUTE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32*, i32*)* @look_for_mix_leaf_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @look_for_mix_leaf_ctls(%struct.hda_codec* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @snd_hda_get_conn_index(%struct.hda_codec* %16, i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %126

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HDA_INPUT, align 4
  %29 = call i64 @nid_has_volume(%struct.hda_codec* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @HDA_INPUT, align 4
  %35 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %32, i32 3, i32 %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @HDA_INPUT, align 4
  %41 = call i64 @nid_has_mute(%struct.hda_codec* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @HDA_INPUT, align 4
  %47 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %44, i32 3, i32 %45, i32 %46)
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %126

58:                                               ; preds = %53, %49
  %59 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @snd_hda_get_conn_list(%struct.hda_codec* %59, i32 %60, i32** %14)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %126

66:                                               ; preds = %58
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %66
  %76 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @HDA_OUTPUT, align 4
  %79 = call i64 @nid_has_volume(%struct.hda_codec* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @HDA_OUTPUT, align 4
  %85 = load i32, i32* @NID_PATH_VOL_CTL, align 4
  %86 = call i32 @is_ctl_associated(%struct.hda_codec* %82, i32 %83, i32 %84, i32 0, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @HDA_OUTPUT, align 4
  %91 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %89, i32 3, i32 0, i32 %90)
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %81, %75, %66
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %93
  %98 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @HDA_OUTPUT, align 4
  %101 = call i64 @nid_has_mute(%struct.hda_codec* %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @HDA_OUTPUT, align 4
  %107 = load i32, i32* @NID_PATH_MUTE_CTL, align 4
  %108 = call i32 @is_ctl_associated(%struct.hda_codec* %104, i32 %105, i32 %106, i32 0, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @HDA_OUTPUT, align 4
  %113 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %111, i32 3, i32 0, i32 %112)
  %114 = load i32*, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %103, %97, %93
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i1 [ true, %115 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %123, %65, %57, %22
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @snd_hda_get_conn_index(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i64 @nid_has_volume(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @HDA_COMPOSE_AMP_VAL(i32, i32, i32, i32) #1

declare dso_local i64 @nid_has_mute(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_get_conn_list(%struct.hda_codec*, i32, i32**) #1

declare dso_local i32 @is_ctl_associated(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
