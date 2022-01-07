; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_select_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_select_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i64, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ca0132_select_out\0A\00", align 1
@VNID_HP_ASEL = common dso_local global i64 0, align 8
@VNODE_START_NID = common dso_local global i64 0, align 8
@VNID_HP_SEL = common dso_local global i64 0, align 8
@HEADPHONE_OUT = common dso_local global i64 0, align 8
@SPEAKER_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"ca0132_select_out speaker\0A\00", align 1
@FLOAT_ONE = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_EAPD_SEL_SET = common dso_local global i32 0, align 4
@AC_VERB_SET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ca0132_select_out hp\0A\00", align 1
@FLOAT_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_select_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_select_out(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %10, align 8
  store %struct.ca0132_spec* %11, %struct.ca0132_spec** %3, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @codec_dbg(%struct.hda_codec* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @snd_hda_power_up_pm(%struct.hda_codec* %14)
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %17 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @VNID_HP_ASEL, align 8
  %20 = load i64, i64* @VNODE_START_NID, align 8
  %21 = sub i64 %19, %20
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %29 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %27, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %41

32:                                               ; preds = %1
  %33 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %34 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @VNID_HP_SEL, align 8
  %37 = load i64, i64* @VNODE_START_NID, align 8
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* @HEADPHONE_OUT, align 8
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %52

48:                                               ; preds = %41
  %49 = load i64, i64* @SPEAKER_OUT, align 8
  %50 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %51 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %54 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SPEAKER_OUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %146

58:                                               ; preds = %52
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = call i32 @codec_dbg(%struct.hda_codec* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dspio_set_uint_param(%struct.hda_codec* %62, i32 128, i32 4, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %235

68:                                               ; preds = %58
  %69 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dspio_set_uint_param(%struct.hda_codec* %70, i32 143, i32 0, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %235

76:                                               ; preds = %68
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %79 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VENDOR_CHIPIO_EAPD_SEL_SET, align 4
  %84 = call i32 @snd_hda_codec_write(%struct.hda_codec* %77, i32 %82, i32 0, i32 %83, i32 2)
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %87 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %92 = call i32 @snd_hda_codec_write(%struct.hda_codec* %85, i32 %90, i32 0, i32 %91, i32 0)
  %93 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %94 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %95 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @VENDOR_CHIPIO_EAPD_SEL_SET, align 4
  %100 = call i32 @snd_hda_codec_write(%struct.hda_codec* %93, i32 %98, i32 0, i32 %99, i32 0)
  %101 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %102 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %103 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %108 = call i32 @snd_hda_codec_write(%struct.hda_codec* %101, i32 %106, i32 0, i32 %107, i32 2)
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %111 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %116 = call i32 @snd_hda_codec_read(%struct.hda_codec* %109, i32 %114, i32 0, i32 %115, i32 0)
  store i32 %116, i32* %4, align 4
  %117 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %118 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %119 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @PIN_HP, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  %127 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %117, i32 %122, i32 %126)
  %128 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %129 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %130 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %135 = call i32 @snd_hda_codec_read(%struct.hda_codec* %128, i32 %133, i32 0, i32 %134, i32 0)
  store i32 %135, i32* %4, align 4
  %136 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %137 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %138 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @PIN_OUT, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %136, i32 %141, i32 %144)
  br label %234

146:                                              ; preds = %52
  %147 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %148 = call i32 @codec_dbg(%struct.hda_codec* %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %149, i32* %7, align 4
  %150 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @dspio_set_uint_param(%struct.hda_codec* %150, i32 128, i32 4, i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %235

156:                                              ; preds = %146
  %157 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %157, i32* %7, align 4
  %158 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @dspio_set_uint_param(%struct.hda_codec* %158, i32 143, i32 0, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %235

164:                                              ; preds = %156
  %165 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %166 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %167 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @VENDOR_CHIPIO_EAPD_SEL_SET, align 4
  %172 = call i32 @snd_hda_codec_write(%struct.hda_codec* %165, i32 %170, i32 0, i32 %171, i32 0)
  %173 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %174 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %175 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %180 = call i32 @snd_hda_codec_write(%struct.hda_codec* %173, i32 %178, i32 0, i32 %179, i32 0)
  %181 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %182 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %183 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @VENDOR_CHIPIO_EAPD_SEL_SET, align 4
  %188 = call i32 @snd_hda_codec_write(%struct.hda_codec* %181, i32 %186, i32 0, i32 %187, i32 2)
  %189 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %190 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %191 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %196 = call i32 @snd_hda_codec_write(%struct.hda_codec* %189, i32 %194, i32 0, i32 %195, i32 2)
  %197 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %198 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %199 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %204 = call i32 @snd_hda_codec_read(%struct.hda_codec* %197, i32 %202, i32 0, i32 %203, i32 0)
  store i32 %204, i32* %4, align 4
  %205 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %206 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %207 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* @PIN_HP, align 4
  %213 = xor i32 %212, -1
  %214 = and i32 %211, %213
  %215 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %205, i32 %210, i32 %214)
  %216 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %217 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %218 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %223 = call i32 @snd_hda_codec_read(%struct.hda_codec* %216, i32 %221, i32 0, i32 %222, i32 0)
  store i32 %223, i32* %4, align 4
  %224 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %225 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %226 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @PIN_HP, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %224, i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %164, %76
  br label %235

235:                                              ; preds = %234, %163, %155, %75, %67
  %236 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %237 = call i32 @snd_hda_power_down_pm(%struct.hda_codec* %236)
  %238 = load i32, i32* %8, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* %8, align 4
  br label %243

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %240
  %244 = phi i32 [ %241, %240 ], [ 0, %242 ]
  ret i32 %244
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_power_up_pm(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_set_pin_ctl(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_power_down_pm(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
