; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_auto_parse_customize_define.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_auto_parse_customize_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.alc_spec* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.alc_spec = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@ALC_FIXUP_SKU_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: SKU not ready 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SKU: Nid=0x%x sku_cfg=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SKU: port_connectivity=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SKU: enable_pcbeep=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"SKU: check_sum=0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SKU: customization=0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SKU: external_amp=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"SKU: platform_type=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SKU: swap=0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SKU: override=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc_auto_parse_customize_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_auto_parse_customize_define(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  %11 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  store %struct.alc_spec* %11, %struct.alc_spec** %8, align 8
  %12 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %13 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %16 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %22 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ALC_FIXUP_SKU_IGNORE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %210

29:                                               ; preds = %20
  br label %127

30:                                               ; preds = %1
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %210

38:                                               ; preds = %30
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 65535
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %44, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %127

58:                                               ; preds = %53, %38
  store i32 29, i32* %7, align 4
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 283902560
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 23, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @codec_info(%struct.hda_codec* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  store i32 -1, i32* %2, align 4
  br label %210

80:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %6, align 4
  %83 = icmp ult i32 %82, 16
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %6, align 4
  %87 = lshr i32 %85, %86
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load i32, i32* %4, align 4
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 15
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %210

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = lshr i32 %105, 30
  %107 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %108 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, 1048576
  %112 = lshr i32 %111, 20
  %113 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %114 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* %4, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 15
  %119 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %120 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %4, align 4
  %123 = lshr i32 %122, 8
  %124 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %125 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %104, %57, %29
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %130 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, 56
  %134 = lshr i32 %133, 3
  %135 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %136 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 5
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %4, align 4
  %139 = and i32 %138, 4
  %140 = lshr i32 %139, 2
  %141 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %142 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 6
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %4, align 4
  %145 = and i32 %144, 2
  %146 = lshr i32 %145, 1
  %147 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %148 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 7
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* %4, align 4
  %151 = and i32 %150, 1
  %152 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %153 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 8
  store i32 %151, i32* %154, align 8
  %155 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %158 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %160)
  %162 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %163 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %164 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %169 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %170 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  %174 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %175 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %176 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  %180 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %181 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %182 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %187 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %188 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %190)
  %192 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %193 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %194 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  %198 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %199 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %200 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  %204 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %205 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %206 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %208)
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %127, %103, %72, %37, %28
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, i32, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
