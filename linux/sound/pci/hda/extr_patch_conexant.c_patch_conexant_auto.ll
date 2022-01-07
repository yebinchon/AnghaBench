; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_patch_conexant_auto.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_patch_conexant_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__, i32, %struct.conexant_spec* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.conexant_spec = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: BIOS auto-probing.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cx_auto_patch_ops = common dso_local global i32 0, align 4
@cx_auto_vmaster_hook = common dso_local global i32 0, align 4
@HDA_HINT_STEREO_MIX_AUTO = common dso_local global i8* null, align 8
@cxt5045_fixup_models = common dso_local global i32 0, align 4
@cxt5045_fixups = common dso_local global i32 0, align 4
@cxt_fixups = common dso_local global i32 0, align 4
@cxt5047_fixup_models = common dso_local global i32 0, align 4
@cxt5047_fixups = common dso_local global i32 0, align 4
@cxt5051_fixup_models = common dso_local global i32 0, align 4
@cxt5051_fixups = common dso_local global i32 0, align 4
@cxt5066_fixup_models = common dso_local global i32 0, align 4
@cxt5066_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Enable sync_write for stable communication\0A\00", align 1
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_conexant_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_conexant_auto(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.conexant_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.conexant_spec* @kzalloc(i32 48, i32 %12)
  store %struct.conexant_spec* %13, %struct.conexant_spec** %4, align 8
  %14 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %15 = icmp ne %struct.conexant_spec* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %168

19:                                               ; preds = %1
  %20 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %21 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %20, i32 0, i32 0
  %22 = call i32 @snd_hda_gen_spec_init(%struct.TYPE_10__* %21)
  %23 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 6
  store %struct.conexant_spec* %23, %struct.conexant_spec** %25, align 8
  %26 = load i32, i32* @cx_auto_patch_ops, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = call i32 @cx_auto_parse_eapd(%struct.hda_codec* %29)
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %32 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %35 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load i32, i32* @cx_auto_vmaster_hook, align 4
  %40 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %41 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %19
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %92 [
    i32 351359045, label %49
    i32 351359047, label %64
    i32 351359057, label %79
    i32 351359218, label %89
  ]

49:                                               ; preds = %44
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %53 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 23, i32* %54, align 4
  %55 = load i8*, i8** @HDA_HINT_STEREO_MIX_AUTO, align 8
  %56 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %57 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  store i8* %55, i8** %58, align 8
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = load i32, i32* @cxt5045_fixup_models, align 4
  %61 = load i32, i32* @cxt5045_fixups, align 4
  %62 = load i32, i32* @cxt_fixups, align 4
  %63 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %59, i32 %60, i32 %61, i32 %62)
  br label %100

64:                                               ; preds = %44
  %65 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %66 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %68 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 25, i32* %69, align 4
  %70 = load i8*, i8** @HDA_HINT_STEREO_MIX_AUTO, align 8
  %71 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %72 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  store i8* %70, i8** %73, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = load i32, i32* @cxt5047_fixup_models, align 4
  %76 = load i32, i32* @cxt5047_fixups, align 4
  %77 = load i32, i32* @cxt_fixups, align 4
  %78 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %74, i32 %75, i32 %76, i32 %77)
  br label %100

79:                                               ; preds = %44
  %80 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %81 = call i32 @add_cx5051_fake_mutes(%struct.hda_codec* %80)
  %82 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %83 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %85 = load i32, i32* @cxt5051_fixup_models, align 4
  %86 = load i32, i32* @cxt5051_fixups, align 4
  %87 = load i32, i32* @cxt_fixups, align 4
  %88 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %84, i32 %85, i32 %86, i32 %87)
  br label %100

89:                                               ; preds = %44
  %90 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %91 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %44, %89
  %93 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %94 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %96 = load i32, i32* @cxt5066_fixup_models, align 4
  %97 = load i32, i32* @cxt5066_fixups, align 4
  %98 = load i32, i32* @cxt_fixups, align 4
  %99 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %95, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %79, %64, %49
  %101 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %102 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 16
  switch i32 %105, label %110 [
    i32 4156, label %106
  ]

106:                                              ; preds = %100
  %107 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %108 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %100, %106
  %111 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %112 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %113 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %111, i32 %112)
  %114 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %115 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %116 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %119 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %114, i32* %117, i32* null, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %164

125:                                              ; preds = %110
  %126 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %127 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %128 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %126, i32* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %164

134:                                              ; preds = %125
  %135 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %136 = call i32 @cx_auto_parse_beep(%struct.hda_codec* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %164

140:                                              ; preds = %134
  %141 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %142 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %141, i32 0, i32 3
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %140
  %149 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %150 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %151 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %152 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %151, i32 0, i32 3
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  %156 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %157 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %156, i32 0, i32 3
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %148, %140
  %161 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %162 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %163 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %161, i32 %162)
  store i32 0, i32* %2, align 4
  br label %168

164:                                              ; preds = %139, %133, %124
  %165 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %166 = call i32 @cx_auto_free(%struct.hda_codec* %165)
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %160, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, ...) #1

declare dso_local %struct.conexant_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(%struct.TYPE_10__*) #1

declare dso_local i32 @cx_auto_parse_eapd(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @add_cx5051_fake_mutes(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, i32*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, i32*) #1

declare dso_local i32 @cx_auto_parse_beep(%struct.hda_codec*) #1

declare dso_local i32 @cx_auto_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
