; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_do_automute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_do_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i64 }
%struct.nid_path = type { i32* }

@PIN_IN = common dso_local global i32 0, align 4
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@PIN_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i64*, i32*, i32)* @do_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_automute(%struct.hda_codec* %0, i32 %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hda_gen_spec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nid_path*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 1
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %20, align 8
  store %struct.hda_gen_spec* %21, %struct.hda_gen_spec** %11, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %142, %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %145

26:                                               ; preds = %22
  %27 = load i64*, i64** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %145

35:                                               ; preds = %26
  %36 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %36, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @PIN_IN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %142

44:                                               ; preds = %35
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %44
  %50 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %50, i32 %55)
  store %struct.nid_path* %56, %struct.nid_path** %16, align 8
  %57 = load %struct.nid_path*, %struct.nid_path** %16, align 8
  %58 = icmp ne %struct.nid_path* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %142

60:                                               ; preds = %49
  %61 = load %struct.nid_path*, %struct.nid_path** %16, align 8
  %62 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @get_amp_nid_(i32 %66)
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %142

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %17, align 8
  %76 = shl i64 1, %75
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %76
  store i64 %80, i64* %78, align 8
  br label %89

81:                                               ; preds = %71
  %82 = load i64, i64* %17, align 8
  %83 = shl i64 1, %82
  %84 = xor i64 %83, -1
  %85 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %86 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %81, %74
  br label %142

90:                                               ; preds = %44
  %91 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %92 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @PIN_HP, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  store i32 %99, i32* %14, align 4
  br label %101

100:                                              ; preds = %90
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @update_pin_ctl(%struct.hda_codec* %109, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %108
  %114 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @set_pin_eapd(%struct.hda_codec* %114, i64 %115, i32 %119)
  %121 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %122 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %113
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @detect_pin_state(%struct.hda_codec* %133, i64 %134)
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %132, %125
  %137 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @set_path_power(%struct.hda_codec* %137, i64 %138, i32 %139, i32 -1)
  br label %141

141:                                              ; preds = %136, %113
  br label %142

142:                                              ; preds = %141, %89, %70, %59, %43
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %22

145:                                              ; preds = %34, %22
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i64) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_amp_nid_(i32) #1

declare dso_local i32 @update_pin_ctl(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @set_pin_eapd(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @detect_pin_state(%struct.hda_codec*, i64) #1

declare dso_local i32 @set_path_power(%struct.hda_codec*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
