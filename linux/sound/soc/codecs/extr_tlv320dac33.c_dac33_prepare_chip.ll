; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_prepare_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_prepare_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unsupported rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DAC33_SER_AUDIOIF_CTRL_A = common dso_local global i32 0, align 4
@DAC33_NCYCL_MASK = common dso_local global i32 0, align 4
@DAC33_WLEN_MASK = common dso_local global i32 0, align 4
@DAC33_FIFO_CTRL_A = common dso_local global i32 0, align 4
@DAC33_FIFOFLUSH = common dso_local global i32 0, align 4
@DAC33_WIDTH = common dso_local global i32 0, align 4
@DAC33_NCYCL_16 = common dso_local global i32 0, align 4
@DAC33_WLEN_16 = common dso_local global i32 0, align 4
@DAC33_NCYCL_32 = common dso_local global i32 0, align 4
@DAC33_WLEN_24 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported format %d\0A\00", align 1
@DAC33_INT_OSC_CTRL = common dso_local global i32 0, align 4
@DAC33_INT_OSC_FREQ_RAT_A = common dso_local global i32 0, align 4
@DAC33_CALIB_TIME = common dso_local global i32 0, align 4
@DAC33_INT_OSC_CTRL_B = common dso_local global i32 0, align 4
@DAC33_INT_OSC_CTRL_C = common dso_local global i32 0, align 4
@DAC33_PWR_CTRL = common dso_local global i32 0, align 4
@DAC33_OSCPDNB = common dso_local global i32 0, align 4
@DAC33_DACRPDNB = common dso_local global i32 0, align 4
@DAC33_DACLPDNB = common dso_local global i32 0, align 4
@DAC33_ASRC_CTRL_A = common dso_local global i32 0, align 4
@DAC33_ASRC_CTRL_B = common dso_local global i32 0, align 4
@DAC33_SRC_REF_CLK_RATIO_A = common dso_local global i32 0, align 4
@DAC33_INTP_CTRL_A = common dso_local global i32 0, align 4
@DAC33_INTPM_AHIGH = common dso_local global i32 0, align 4
@DAC33_SRCBYP = common dso_local global i32 0, align 4
@DAC33_FIFO_IRQ_MODE_B = common dso_local global i32 0, align 4
@DAC33_FIFO_IRQ_MODE_LEVEL = common dso_local global i32 0, align 4
@DAC33_FIFO_IRQ_MODE_A = common dso_local global i32 0, align 4
@DAC33_SER_AUDIOIF_CTRL_B = common dso_local global i32 0, align 4
@DAC33_FBYPAS = common dso_local global i32 0, align 4
@DAC33_FAUTO = common dso_local global i32 0, align 4
@DAC33_BCLKON = common dso_local global i32 0, align 4
@DAC33_SER_AUDIOIF_CTRL_C = common dso_local global i32 0, align 4
@DAC33_ATHR_MSB = common dso_local global i32 0, align 4
@DAC33_UTHR_MSB = common dso_local global i32 0, align 4
@DAC33_LTHR_MSB = common dso_local global i32 0, align 4
@DAC33_MODE7_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_component*)* @dac33_prepare_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_prepare_chip(%struct.snd_pcm_substream* %0, %struct.snd_soc_component* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.tlv320dac33_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_component* %1, %struct.snd_soc_component** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.tlv320dac33_priv* %15, %struct.tlv320dac33_priv** %6, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %40 [
    i32 44100, label %21
    i32 48000, label %21
  ]

21:                                               ; preds = %2, %2
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %28 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CALC_OSCSET(i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %37 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CALC_RATIOSET(i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %341

52:                                               ; preds = %21
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %54 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_A, align 4
  %55 = call i8* @dac33_read_reg_cache(%struct.snd_soc_component* %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @DAC33_NCYCL_MASK, align 4
  %58 = load i32, i32* @DAC33_WLEN_MASK, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %64 = load i32, i32* @DAC33_FIFO_CTRL_A, align 4
  %65 = call i8* @dac33_read_reg_cache(%struct.snd_soc_component* %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @DAC33_FIFOFLUSH, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* @DAC33_WIDTH, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %95 [
    i32 129, label %80
    i32 128, label %89
  ]

80:                                               ; preds = %52
  %81 = load i32, i32* @DAC33_NCYCL_16, align 4
  %82 = load i32, i32* @DAC33_WLEN_16, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @DAC33_WIDTH, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %107

89:                                               ; preds = %52
  %90 = load i32, i32* @DAC33_NCYCL_32, align 4
  %91 = load i32, i32* @DAC33_WLEN_24, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %107

95:                                               ; preds = %52
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %97 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %341

107:                                              ; preds = %89, %80
  %108 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %109 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %108, i32 0, i32 2
  %110 = call i32 @mutex_lock(i32* %109)
  %111 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %112 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %107
  %116 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %117 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %116, i32 0, i32 2
  %118 = call i32 @mutex_unlock(i32* %117)
  store i32 0, i32* %3, align 4
  br label %341

119:                                              ; preds = %107
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %121 = call i32 @dac33_soft_power(%struct.snd_soc_component* %120, i32 0)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %123 = call i32 @dac33_soft_power(%struct.snd_soc_component* %122, i32 1)
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %125 = load i32, i32* @DAC33_INT_OSC_CTRL, align 4
  %126 = call i8* @dac33_read_reg_cache(%struct.snd_soc_component* %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %10, align 4
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %129 = load i32, i32* @DAC33_INT_OSC_CTRL, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @dac33_write(%struct.snd_soc_component* %128, i32 %129, i32 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %133 = load i32, i32* @DAC33_INT_OSC_FREQ_RAT_A, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dac33_write16(%struct.snd_soc_component* %132, i32 %133, i32 %134)
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %137 = load i32, i32* @DAC33_CALIB_TIME, align 4
  %138 = call i32 @dac33_write(%struct.snd_soc_component* %136, i32 %137, i32 96)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %140 = load i32, i32* @DAC33_INT_OSC_CTRL_B, align 4
  %141 = call i32 @DAC33_ADJTHRSHLD(i32 2)
  %142 = call i32 @DAC33_ADJSTEP(i32 1)
  %143 = or i32 %141, %142
  %144 = call i32 @dac33_write(%struct.snd_soc_component* %139, i32 %140, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %146 = load i32, i32* @DAC33_INT_OSC_CTRL_C, align 4
  %147 = call i32 @DAC33_REFDIV(i32 4)
  %148 = call i32 @dac33_write(%struct.snd_soc_component* %145, i32 %146, i32 %147)
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %150 = load i32, i32* @DAC33_PWR_CTRL, align 4
  %151 = call i8* @dac33_read_reg_cache(%struct.snd_soc_component* %149, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @DAC33_OSCPDNB, align 4
  %154 = load i32, i32* @DAC33_DACRPDNB, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @DAC33_DACLPDNB, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %161 = load i32, i32* @DAC33_PWR_CTRL, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @dac33_write(%struct.snd_soc_component* %160, i32 %161, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %165 = call i32 @dac33_oscwait(%struct.snd_soc_component* %164)
  %166 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %167 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %119
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %172 = load i32, i32* @DAC33_ASRC_CTRL_A, align 4
  %173 = call i32 @DAC33_SRCLKDIV(i32 1)
  %174 = call i32 @dac33_write(%struct.snd_soc_component* %171, i32 %172, i32 %173)
  %175 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %176 = load i32, i32* @DAC33_ASRC_CTRL_B, align 4
  %177 = call i32 @dac33_write(%struct.snd_soc_component* %175, i32 %176, i32 1)
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %179 = load i32, i32* @DAC33_SRC_REF_CLK_RATIO_A, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @dac33_write16(%struct.snd_soc_component* %178, i32 %179, i32 %180)
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %183 = load i32, i32* @DAC33_INTP_CTRL_A, align 4
  %184 = load i32, i32* @DAC33_INTPM_AHIGH, align 4
  %185 = call i32 @dac33_write(%struct.snd_soc_component* %182, i32 %183, i32 %184)
  br label %194

186:                                              ; preds = %119
  %187 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %188 = load i32, i32* @DAC33_ASRC_CTRL_A, align 4
  %189 = load i32, i32* @DAC33_SRCBYP, align 4
  %190 = call i32 @dac33_write(%struct.snd_soc_component* %187, i32 %188, i32 %189)
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %192 = load i32, i32* @DAC33_ASRC_CTRL_B, align 4
  %193 = call i32 @dac33_write(%struct.snd_soc_component* %191, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %186, %170
  %195 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %196 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %210 [
    i32 131, label %198
    i32 130, label %204
  ]

198:                                              ; preds = %194
  %199 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %200 = load i32, i32* @DAC33_FIFO_IRQ_MODE_B, align 4
  %201 = load i32, i32* @DAC33_FIFO_IRQ_MODE_LEVEL, align 4
  %202 = call i32 @DAC33_ATM(i32 %201)
  %203 = call i32 @dac33_write(%struct.snd_soc_component* %199, i32 %200, i32 %202)
  br label %211

204:                                              ; preds = %194
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %206 = load i32, i32* @DAC33_FIFO_IRQ_MODE_A, align 4
  %207 = load i32, i32* @DAC33_FIFO_IRQ_MODE_LEVEL, align 4
  %208 = call i32 @DAC33_UTM(i32 %207)
  %209 = call i32 @dac33_write(%struct.snd_soc_component* %205, i32 %206, i32 %208)
  br label %211

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210, %204, %198
  %212 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %213 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_B, align 4
  %214 = call i8* @dac33_read_reg_cache(%struct.snd_soc_component* %212, i32 %213)
  %215 = ptrtoint i8* %214 to i32
  store i32 %215, i32* %12, align 4
  %216 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %217 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  switch i32 %218, label %264 [
    i32 131, label %219
    i32 130, label %242
  ]

219:                                              ; preds = %211
  %220 = load i32, i32* @DAC33_FBYPAS, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %13, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* @DAC33_FAUTO, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %13, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %13, align 4
  %228 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %229 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %219
  %233 = load i32, i32* @DAC33_BCLKON, align 4
  %234 = load i32, i32* %12, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %12, align 4
  br label %241

236:                                              ; preds = %219
  %237 = load i32, i32* @DAC33_BCLKON, align 4
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %12, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %12, align 4
  br label %241

241:                                              ; preds = %236, %232
  br label %271

242:                                              ; preds = %211
  %243 = load i32, i32* @DAC33_FBYPAS, align 4
  %244 = xor i32 %243, -1
  %245 = load i32, i32* %13, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* @DAC33_FAUTO, align 4
  %248 = load i32, i32* %13, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %13, align 4
  %250 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %251 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %242
  %255 = load i32, i32* @DAC33_BCLKON, align 4
  %256 = load i32, i32* %12, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %12, align 4
  br label %263

258:                                              ; preds = %242
  %259 = load i32, i32* @DAC33_BCLKON, align 4
  %260 = xor i32 %259, -1
  %261 = load i32, i32* %12, align 4
  %262 = and i32 %261, %260
  store i32 %262, i32* %12, align 4
  br label %263

263:                                              ; preds = %258, %254
  br label %271

264:                                              ; preds = %211
  %265 = load i32, i32* @DAC33_FBYPAS, align 4
  %266 = load i32, i32* %13, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* @DAC33_BCLKON, align 4
  %269 = load i32, i32* %12, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %12, align 4
  br label %271

271:                                              ; preds = %264, %263, %241
  %272 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %273 = load i32, i32* @DAC33_FIFO_CTRL_A, align 4
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @dac33_write(%struct.snd_soc_component* %272, i32 %273, i32 %274)
  %276 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %277 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_A, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @dac33_write(%struct.snd_soc_component* %276, i32 %277, i32 %278)
  %280 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %281 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_B, align 4
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @dac33_write(%struct.snd_soc_component* %280, i32 %281, i32 %282)
  %284 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %285 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %271
  %289 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %290 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_C, align 4
  %291 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %292 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @dac33_write(%struct.snd_soc_component* %289, i32 %290, i32 %293)
  br label %311

295:                                              ; preds = %271
  %296 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %297 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %296, i32 0, i32 0
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 129
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %304 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_C, align 4
  %305 = call i32 @dac33_write(%struct.snd_soc_component* %303, i32 %304, i32 32)
  br label %310

306:                                              ; preds = %295
  %307 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %308 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_C, align 4
  %309 = call i32 @dac33_write(%struct.snd_soc_component* %307, i32 %308, i32 16)
  br label %310

310:                                              ; preds = %306, %302
  br label %311

311:                                              ; preds = %310, %288
  %312 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %313 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  switch i32 %314, label %336 [
    i32 131, label %315
    i32 130, label %323
  ]

315:                                              ; preds = %311
  %316 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %317 = load i32, i32* @DAC33_ATHR_MSB, align 4
  %318 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %319 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @DAC33_THRREG(i32 %320)
  %322 = call i32 @dac33_write16(%struct.snd_soc_component* %316, i32 %317, i32 %321)
  br label %337

323:                                              ; preds = %311
  %324 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %325 = load i32, i32* @DAC33_UTHR_MSB, align 4
  %326 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %327 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @DAC33_THRREG(i32 %328)
  %330 = call i32 @dac33_write16(%struct.snd_soc_component* %324, i32 %325, i32 %329)
  %331 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %332 = load i32, i32* @DAC33_LTHR_MSB, align 4
  %333 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %334 = call i32 @DAC33_THRREG(i32 %333)
  %335 = call i32 @dac33_write16(%struct.snd_soc_component* %331, i32 %332, i32 %334)
  br label %337

336:                                              ; preds = %311
  br label %337

337:                                              ; preds = %336, %323, %315
  %338 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %339 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %338, i32 0, i32 2
  %340 = call i32 @mutex_unlock(i32* %339)
  store i32 0, i32* %3, align 4
  br label %341

341:                                              ; preds = %337, %115, %95, %40
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @CALC_OSCSET(i32, i32) #1

declare dso_local i32 @CALC_RATIOSET(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @dac33_read_reg_cache(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dac33_soft_power(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dac33_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dac33_write16(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @DAC33_ADJTHRSHLD(i32) #1

declare dso_local i32 @DAC33_ADJSTEP(i32) #1

declare dso_local i32 @DAC33_REFDIV(i32) #1

declare dso_local i32 @dac33_oscwait(%struct.snd_soc_component*) #1

declare dso_local i32 @DAC33_SRCLKDIV(i32) #1

declare dso_local i32 @DAC33_ATM(i32) #1

declare dso_local i32 @DAC33_UTM(i32) #1

declare dso_local i32 @DAC33_THRREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
