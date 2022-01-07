; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32, i32, i32, i32, i32, i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hdmi_spec_per_pin = type { %struct.hdmi_eld, i32, i32, i32, i32 }
%struct.hdmi_eld = type { i32, i64 }
%struct.hdmi_spec_per_cvt = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@static_hdmi_pcm = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @hdmi_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_pcm_open(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hdmi_spec_per_pin*, align 8
  %14 = alloca %struct.hdmi_eld*, align 8
  %15 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %16 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %18, align 8
  store %struct.hdmi_spec* %19, %struct.hdmi_spec** %8, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %9, align 8
  store %struct.hdmi_spec_per_cvt* null, %struct.hdmi_spec_per_cvt** %15, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %24 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %25 = call i32 @hinfo_to_pcm_index(%struct.hda_codec* %23, %struct.hda_pcm_stream* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %219

31:                                               ; preds = %3
  %32 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %33 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %36 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %37 = call i32 @hinfo_to_pin_index(%struct.hda_codec* %35, %struct.hda_pcm_stream* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @snd_BUG_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %16, align 4
  br label %214

51:                                               ; preds = %42
  br label %61

52:                                               ; preds = %31
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %57 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %59 = call i32 @hdmi_pcm_open_no_pin(%struct.hda_pcm_stream* %56, %struct.hda_codec* %57, %struct.snd_pcm_substream* %58)
  store i32 %59, i32* %16, align 4
  br label %214

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @hdmi_choose_cvt(%struct.hda_codec* %62, i32 %63, i32* %11)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %214

68:                                               ; preds = %61
  %69 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %69, i32 %70)
  store %struct.hdmi_spec_per_cvt* %71, %struct.hdmi_spec_per_cvt** %15, align 8
  %72 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %73 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %76 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %75, i32 0, i32 1
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %78, i32 %79)
  store %struct.hdmi_spec_per_pin* %80, %struct.hdmi_spec_per_pin** %13, align 8
  %81 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %82 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %85 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %87 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %90 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %92 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %93 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %96 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %91, i32 %94, i32 %97)
  %99 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %100 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %101 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %104 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %105 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %99, i32 %102, i32 0, i32 %103, i32 %106)
  %108 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %109 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %110 = call i32 @pin_cvt_fixup(%struct.hda_codec* %108, %struct.hdmi_spec_per_pin* %109, i32 0)
  %111 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %114 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @snd_hda_spdif_ctls_assign(%struct.hda_codec* %111, i32 %112, i32 %115)
  %117 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %118 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %121 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %123 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %126 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %128 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %131 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %133 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %136 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %138 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %141 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %143 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %142, i32 0, i32 0
  store %struct.hdmi_eld* %143, %struct.hdmi_eld** %14, align 8
  %144 = load i32, i32* @static_hdmi_pcm, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %184, label %146

146:                                              ; preds = %68
  %147 = load %struct.hdmi_eld*, %struct.hdmi_eld** %14, align 8
  %148 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %184

151:                                              ; preds = %146
  %152 = load %struct.hdmi_eld*, %struct.hdmi_eld** %14, align 8
  %153 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %152, i32 0, i32 0
  %154 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %155 = call i32 @snd_hdmi_eld_update_pcm_info(i32* %153, %struct.hda_pcm_stream* %154)
  %156 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %157 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %160 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %158, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %151
  %164 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %165 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %170 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %168, %163, %151
  %174 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %175 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %174, i32 0, i32 0
  store i32 0, i32* %175, align 4
  %176 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %177 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %176, i32 0, i32 4
  store i32 0, i32* %177, align 4
  %178 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %178, i32 %179)
  %181 = load i32, i32* @ENODEV, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %16, align 4
  br label %214

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %146, %68
  %185 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %186 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %189 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %192 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  store i32 %193, i32* %196, align 4
  %197 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %198 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %201 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %204 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %207 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 4
  %209 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %210 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %209, i32 0, i32 0
  %211 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %210, align 8
  %212 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %213 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %211, i32 0, i32 %212, i32 2)
  br label %214

214:                                              ; preds = %184, %173, %67, %55, %48
  %215 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %216 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %215, i32 0, i32 0
  %217 = call i32 @mutex_unlock(i32* %216)
  %218 = load i32, i32* %16, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %214, %28
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @hinfo_to_pcm_index(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hinfo_to_pin_index(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @hdmi_pcm_open_no_pin(%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @hdmi_choose_cvt(%struct.hda_codec*, i32, i32*) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_set_dev_select(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @pin_cvt_fixup(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @snd_hda_spdif_ctls_assign(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hdmi_eld_update_pcm_info(i32*, %struct.hda_pcm_stream*) #1

declare dso_local i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
