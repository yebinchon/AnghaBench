; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32* }

@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@DSP_DOWNLOAD_INIT = common dso_local global i8* null, align 8
@DSP_DOWNLOAD_FAILED = common dso_local global i64 0, align 8
@INVALID_CHIP_ADDRESS = common dso_local global i32 0, align 4
@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_EX_ID_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_EX_VALUE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_init(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %4, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %12 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %11, i32 0, i32 14
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %5, align 8
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %14 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DSP_DOWNLOADED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @dspload_is_loaded(%struct.hda_codec* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %25 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load i8*, i8** @DSP_DOWNLOAD_INIT, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %29 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %32 = call i32 @ca0132_quirk(%struct.ca0132_spec* %31)
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 @sbz_dsp_startup_check(%struct.hda_codec* %35)
  br label %37

37:                                               ; preds = %34, %30
  store i32 0, i32* %2, align 4
  br label %239

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DSP_DOWNLOAD_FAILED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i8*, i8** @DSP_DOWNLOAD_INIT, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %49 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* @INVALID_CHIP_ADDRESS, align 4
  %52 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %53 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %52, i32 0, i32 13
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %55 = call i64 @ca0132_use_pci_mmio(%struct.ca0132_spec* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %59 = call i32 @ca0132_mmio_init(%struct.hda_codec* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %62 = call i32 @snd_hda_power_up_pm(%struct.hda_codec* %61)
  %63 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %64 = call i32 @ca0132_quirk(%struct.ca0132_spec* %63)
  %65 = icmp eq i32 %64, 132
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = call i32 @ae5_register_set(%struct.hda_codec* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %71 = call i32 @ca0132_init_unsol(%struct.hda_codec* %70)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = call i32 @ca0132_init_params(%struct.hda_codec* %72)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = call i32 @ca0132_init_flags(%struct.hda_codec* %74)
  %76 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %77 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %78 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %76, i32 %79)
  %81 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %82 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %86 = call i32 @ca0132_alt_init(%struct.hda_codec* %85)
  br label %87

87:                                               ; preds = %84, %69
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = call i32 @ca0132_download_dsp(%struct.hda_codec* %88)
  %90 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %91 = call i32 @ca0132_refresh_widget_caps(%struct.hda_codec* %90)
  %92 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %93 = call i32 @ca0132_quirk(%struct.ca0132_spec* %92)
  switch i32 %93, label %103 [
    i32 130, label %94
    i32 131, label %94
    i32 129, label %97
    i32 128, label %97
    i32 132, label %100
  ]

94:                                               ; preds = %87, %87
  %95 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %96 = call i32 @r3d_setup_defaults(%struct.hda_codec* %95)
  br label %110

97:                                               ; preds = %87, %87
  %98 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %99 = call i32 @sbz_setup_defaults(%struct.hda_codec* %98)
  br label %110

100:                                              ; preds = %87
  %101 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %102 = call i32 @ae5_setup_defaults(%struct.hda_codec* %101)
  br label %110

103:                                              ; preds = %87
  %104 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %105 = call i32 @ca0132_setup_defaults(%struct.hda_codec* %104)
  %106 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %107 = call i32 @ca0132_init_analog_mic2(%struct.hda_codec* %106)
  %108 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %109 = call i32 @ca0132_init_dmic(%struct.hda_codec* %108)
  br label %110

110:                                              ; preds = %103, %100, %97, %94
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %132, %110
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %114 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %111
  %118 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %119 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %120 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %119, i32 0, i32 11
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %127 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %126, i32 0, i32 10
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @init_output(%struct.hda_codec* %118, i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %111

135:                                              ; preds = %111
  %136 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %137 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %138 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %143 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @init_output(%struct.hda_codec* %136, i32 %141, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %169, %135
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %149 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %146
  %153 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %154 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %155 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %162 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %161, i32 0, i32 7
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @init_input(%struct.hda_codec* %153, i32 %160, i32 %167)
  br label %169

169:                                              ; preds = %152
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %146

172:                                              ; preds = %146
  %173 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %174 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %175 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %178 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @init_input(%struct.hda_codec* %173, i32 %176, i32 %179)
  %181 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %182 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %198, label %184

184:                                              ; preds = %172
  %185 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %186 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %187 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %185, i32 %188)
  %190 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %191 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %192 = load i32, i32* @VENDOR_CHIPIO_PARAM_EX_ID_SET, align 4
  %193 = call i32 @snd_hda_codec_write(%struct.hda_codec* %190, i32 %191, i32 0, i32 %192, i32 13)
  %194 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %195 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %196 = load i32, i32* @VENDOR_CHIPIO_PARAM_EX_VALUE_SET, align 4
  %197 = call i32 @snd_hda_codec_write(%struct.hda_codec* %194, i32 %195, i32 0, i32 %196, i32 32)
  br label %198

198:                                              ; preds = %184, %172
  %199 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %200 = call i32 @ca0132_quirk(%struct.ca0132_spec* %199)
  %201 = icmp eq i32 %200, 129
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %204 = call i32 @ca0132_gpio_setup(%struct.hda_codec* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %207 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %208 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %206, i32 %209)
  %211 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %212 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %205
  %215 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %216 = call i32 @ca0132_alt_select_out(%struct.hda_codec* %215)
  %217 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %218 = call i32 @ca0132_alt_select_in(%struct.hda_codec* %217)
  br label %224

219:                                              ; preds = %205
  %220 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %221 = call i32 @ca0132_select_out(%struct.hda_codec* %220)
  %222 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %223 = call i32 @ca0132_select_mic(%struct.hda_codec* %222)
  br label %224

224:                                              ; preds = %219, %214
  %225 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %226 = call i32 @snd_hda_jack_report_sync(%struct.hda_codec* %225)
  %227 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %228 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %224
  %232 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %233 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %232, i32 0, i32 1
  store i32 0, i32* %233, align 8
  %234 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %235 = call i32 @ca0132_pe_switch_set(%struct.hda_codec* %234)
  br label %236

236:                                              ; preds = %231, %224
  %237 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %238 = call i32 @snd_hda_power_down_pm(%struct.hda_codec* %237)
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %236, %37
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @dspload_is_loaded(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @sbz_dsp_startup_check(%struct.hda_codec*) #1

declare dso_local i64 @ca0132_use_pci_mmio(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_mmio_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_up_pm(%struct.hda_codec*) #1

declare dso_local i32 @ae5_register_set(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_unsol(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_params(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_flags(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_alt_init(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_download_dsp(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_refresh_widget_caps(%struct.hda_codec*) #1

declare dso_local i32 @r3d_setup_defaults(%struct.hda_codec*) #1

declare dso_local i32 @sbz_setup_defaults(%struct.hda_codec*) #1

declare dso_local i32 @ae5_setup_defaults(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_setup_defaults(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_analog_mic2(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_dmic(%struct.hda_codec*) #1

declare dso_local i32 @init_output(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @init_input(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @ca0132_gpio_setup(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_select_in(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_mic(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_report_sync(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_pe_switch_set(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_down_pm(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
