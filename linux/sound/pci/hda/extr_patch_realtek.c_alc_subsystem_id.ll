; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_subsystem_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_subsystem_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.alc_spec* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.alc_spec = type { i64, %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@ALC_FIXUP_SKU_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"realtek: No valid SSID, checking pincfg 0x%08x for NID 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"realtek: Enabling init ASM_ID=0x%04x CODEC_ID=%08x\0A\00", align 1
@ALC_INIT_UNDEFINED = common dso_local global i64 0, align 8
@ALC_INIT_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32*)* @alc_subsystem_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_subsystem_id(%struct.hda_codec* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.alc_spec*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 2
  %14 = load %struct.alc_spec*, %struct.alc_spec** %13, align 8
  store %struct.alc_spec* %14, %struct.alc_spec** %10, align 8
  %15 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %16 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %22 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ALC_FIXUP_SKU_IGNORE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %181

29:                                               ; preds = %20
  br label %106

30:                                               ; preds = %2
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 65535
  store i32 %35, i32* %6, align 4
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %43, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %106

57:                                               ; preds = %52, %42, %30
  store i32 29, i32* %9, align 4
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 283902560
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 23, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @codec_dbg(%struct.hda_codec* %68, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %181

76:                                               ; preds = %64
  %77 = load i32, i32* %6, align 4
  %78 = lshr i32 %77, 30
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %181

81:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i32, i32* %8, align 4
  %84 = icmp ult i32 %83, 16
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = lshr i32 %86, %87
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %82

98:                                               ; preds = %82
  %99 = load i32, i32* %6, align 4
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 15
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %181

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %56, %29
  %107 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 65535
  %110 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %111 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @codec_dbg(%struct.hda_codec* %107, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 56
  %117 = lshr i32 %116, 3
  store i32 %117, i32* %7, align 4
  %118 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %119 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ALC_INIT_UNDEFINED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %106
  %124 = load i32, i32* %7, align 4
  switch i32 %124, label %135 [
    i32 1, label %125
    i32 3, label %128
    i32 7, label %131
    i32 5, label %134
  ]

125:                                              ; preds = %123
  %126 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %127 = call i32 @alc_setup_gpio(%struct.hda_codec* %126, i32 1)
  br label %139

128:                                              ; preds = %123
  %129 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %130 = call i32 @alc_setup_gpio(%struct.hda_codec* %129, i32 2)
  br label %139

131:                                              ; preds = %123
  %132 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %133 = call i32 @alc_setup_gpio(%struct.hda_codec* %132, i32 3)
  br label %139

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %123, %134
  %136 = load i64, i64* @ALC_INIT_DEFAULT, align 8
  %137 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %138 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %131, %128, %125
  br label %140

140:                                              ; preds = %139, %106
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 32768
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  br label %181

145:                                              ; preds = %140
  %146 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %147 = call i32 @alc_get_hp_pin(%struct.alc_spec* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %180, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %6, align 4
  %151 = lshr i32 %150, 11
  %152 = and i32 %151, 3
  store i32 %152, i32* %7, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %160 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %165 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @found_in_nid_list(i32 %158, i32 %163, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %181

172:                                              ; preds = %149
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  %175 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %173, i32* %179, align 4
  br label %180

180:                                              ; preds = %172, %145
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %171, %144, %104, %80, %75, %28
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32) #1

declare dso_local i32 @alc_setup_gpio(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i64 @found_in_nid_list(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
