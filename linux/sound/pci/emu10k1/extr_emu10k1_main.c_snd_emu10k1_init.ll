; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32*, i32**, i32, i32, i32, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HCFG_LOCKSOUNDCACHE = common dso_local global i32 0, align 4
@HCFG_LOCKTANKCACHE_MASK = common dso_local global i32 0, align 4
@HCFG_MUTEBUTTONENABLE = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@MICBS = common dso_local global i32 0, align 4
@ADCBS_BUFSIZE_NONE = common dso_local global i32 0, align 4
@MICBA = common dso_local global i32 0, align 4
@FXBS = common dso_local global i32 0, align 4
@FXBA = common dso_local global i32 0, align 4
@ADCBS = common dso_local global i32 0, align 4
@ADCBA = common dso_local global i32 0, align 4
@INTE = common dso_local global i64 0, align 8
@CLIEL = common dso_local global i32 0, align 4
@CLIEH = common dso_local global i32 0, align 4
@SOLEL = common dso_local global i32 0, align 4
@SOLEH = common dso_local global i32 0, align 4
@SPBYPASS = common dso_local global i32 0, align 4
@SPBYPASS_FORMAT = common dso_local global i32 0, align 4
@AC97SLOT = common dso_local global i32 0, align 4
@AC97SLOT_REAR_RIGHT = common dso_local global i32 0, align 4
@AC97SLOT_REAR_LEFT = common dso_local global i32 0, align 4
@NUM_G = common dso_local global i32 0, align 4
@SPCS0 = common dso_local global i32 0, align 4
@SPCS1 = common dso_local global i32 0, align 4
@SPCS2 = common dso_local global i32 0, align 4
@A_SPDIF_SAMPLERATE = common dso_local global i32 0, align 4
@SRCSel = common dso_local global i32 0, align 4
@SRCMULTI_ENABLE = common dso_local global i32 0, align 4
@HCFG2 = common dso_local global i64 0, align 8
@CAPTURE_P16V_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Audigy2 value: Special config.\0A\00", align 1
@A_IOCFG = common dso_local global i64 0, align 8
@spi_dac_init = common dso_local global i32** null, align 8
@P17V_I2S_SRC_SEL = common dso_local global i32 0, align 4
@i2c_adc_init = common dso_local global i32** null, align 8
@PTB = common dso_local global i32 0, align 4
@TCB = common dso_local global i32 0, align 4
@TCBS = common dso_local global i32 0, align 4
@MAP_PTI_MASK1 = common dso_local global i32 0, align 4
@MAP_PTI_MASK0 = common dso_local global i32 0, align 4
@MAPA = common dso_local global i32 0, align 4
@MAPB = common dso_local global i32 0, align 4
@HCFG_AUTOMUTE_ASYNC = common dso_local global i32 0, align 4
@HCFG_EMU32_SLAVE = common dso_local global i32 0, align 4
@HCFG_AUDIOENABLE = common dso_local global i32 0, align 4
@HCFG_AC3ENABLE_CDSPDIF = common dso_local global i32 0, align 4
@HCFG_AC3ENABLE_GPSPDIF = common dso_local global i32 0, align 4
@HCFG_AUTOMUTE = common dso_local global i32 0, align 4
@HCFG_JOYENABLE = common dso_local global i32 0, align 4
@A_IOCFG_GPOUT2 = common dso_local global i32 0, align 4
@A_IOCFG_GPOUT1 = common dso_local global i32 0, align 4
@HCFG_GPOUT2 = common dso_local global i32 0, align 4
@HCFG_GPOUT1 = common dso_local global i32 0, align 4
@A_IOCFG_GPOUT0 = common dso_local global i32 0, align 4
@HCFG_EXPANDED_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, i32, i32)* @snd_emu10k1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_init(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @HCFG_LOCKSOUNDCACHE, align 4
  %18 = load i32, i32* @HCFG_LOCKTANKCACHE_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HCFG_MUTEBUTTONENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCFG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outl(i32 %21, i64 %26)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %29 = load i32, i32* @MICBS, align 4
  %30 = load i32, i32* @ADCBS_BUFSIZE_NONE, align 4
  %31 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %28, i32 %29, i32 0, i32 %30)
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %33 = load i32, i32* @MICBA, align 4
  %34 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %32, i32 %33, i32 0, i32 0)
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %36 = load i32, i32* @FXBS, align 4
  %37 = load i32, i32* @ADCBS_BUFSIZE_NONE, align 4
  %38 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %35, i32 %36, i32 0, i32 %37)
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %40 = load i32, i32* @FXBA, align 4
  %41 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %39, i32 %40, i32 0, i32 0)
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %43 = load i32, i32* @ADCBS, align 4
  %44 = load i32, i32* @ADCBS_BUFSIZE_NONE, align 4
  %45 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %42, i32 %43, i32 0, i32 %44)
  %46 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %47 = load i32, i32* @ADCBA, align 4
  %48 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %46, i32 %47, i32 0, i32 0)
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INTE, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outl(i32 0, i64 %53)
  %55 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %56 = load i32, i32* @CLIEL, align 4
  %57 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %55, i32 %56, i32 0, i32 0)
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %59 = load i32, i32* @CLIEH, align 4
  %60 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %58, i32 %59, i32 0, i32 0)
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %62 = load i32, i32* @SOLEL, align 4
  %63 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %61, i32 %62, i32 0, i32 0)
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %65 = load i32, i32* @SOLEH, align 4
  %66 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %64, i32 %65, i32 0, i32 0)
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %3
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %73 = load i32, i32* @SPBYPASS, align 4
  %74 = load i32, i32* @SPBYPASS_FORMAT, align 4
  %75 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %72, i32 %73, i32 0, i32 %74)
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %77 = load i32, i32* @AC97SLOT, align 4
  %78 = load i32, i32* @AC97SLOT_REAR_RIGHT, align 4
  %79 = load i32, i32* @AC97SLOT_REAR_LEFT, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %76, i32 %77, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %71, %3
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %91, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @NUM_G, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @snd_emu10k1_voice_init(%struct.snd_emu10k1* %88, i32 %89)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %83

94:                                               ; preds = %83
  %95 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %96 = load i32, i32* @SPCS0, align 4
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %95, i32 %96, i32 0, i32 %101)
  %103 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %104 = load i32, i32* @SPCS1, align 4
  %105 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %103, i32 %104, i32 0, i32 %109)
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %112 = load i32, i32* @SPCS2, align 4
  %113 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %114 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %111, i32 %112, i32 0, i32 %117)
  %119 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %120 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %119, i32 0, i32 7
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %94
  %126 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %127 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %128 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %126, i32 %127, i32 0)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, -3585
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, 1024
  store i32 %132, i32* %9, align 4
  %133 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %134 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %133, i32 %134, i32 0, i32 %135)
  %137 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %138 = load i32, i32* @SRCSel, align 4
  %139 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %137, i32 %138, i32 0, i32 20)
  %140 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %141 = load i32, i32* @SRCMULTI_ENABLE, align 4
  %142 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %140, i32 %141, i32 0, i32 -1)
  %143 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %144 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @HCFG2, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @outl(i32 513, i64 %147)
  %149 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %150 = load i32, i32* @CAPTURE_P16V_SOURCE, align 4
  %151 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %149, i32 %150, i32 0, i32 30948)
  br label %152

152:                                              ; preds = %125, %94
  %153 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %154 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %153, i32 0, i32 7
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %221

159:                                              ; preds = %152
  %160 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %161 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %160, i32 0, i32 10
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_info(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %166 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %167 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %168 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %166, i32 %167, i32 0)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, -3585
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = or i32 %171, 1024
  store i32 %172, i32* %9, align 4
  %173 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %174 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %173, i32 %174, i32 0, i32 %175)
  %177 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %178 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 32
  %181 = call i32 @outl(i32 6291456, i64 %180)
  %182 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %183 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 36
  %186 = call i32 @outl(i32 20, i64 %185)
  %187 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %188 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 32
  %191 = call i32 @outl(i32 8060928, i64 %190)
  %192 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %193 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 36
  %196 = call i32 @outl(i32 -16777216, i64 %195)
  %197 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %198 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 32
  %201 = call i32 @outl(i32 7995392, i64 %200)
  %202 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %203 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 36
  %206 = call i32 @outl(i32 -16777216, i64 %205)
  %207 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %208 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @A_IOCFG, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @inl(i64 %211)
  %213 = and i32 %212, -9
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %216 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @A_IOCFG, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @outl(i32 %214, i64 %219)
  br label %221

221:                                              ; preds = %159, %152
  %222 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %223 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %222, i32 0, i32 7
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %255

228:                                              ; preds = %221
  %229 = load i32**, i32*** @spi_dac_init, align 8
  %230 = call i32 @ARRAY_SIZE(i32** %229)
  store i32 %230, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %231

231:                                              ; preds = %243, %228
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %231
  %236 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %237 = load i32**, i32*** @spi_dac_init, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @snd_emu10k1_spi_write(%struct.snd_emu10k1* %236, i32* %241)
  br label %243

243:                                              ; preds = %235
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %231

246:                                              ; preds = %231
  %247 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %248 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %247, i32 96, i32 0, i32 16)
  %249 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %250 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @A_IOCFG, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @outl(i32 118, i64 %253)
  br label %255

255:                                              ; preds = %246, %221
  %256 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %257 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %256, i32 0, i32 7
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %337

262:                                              ; preds = %255
  %263 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %264 = load i32, i32* @P17V_I2S_SRC_SEL, align 4
  %265 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %263, i32 %264, i32 0, i32 538976351)
  %266 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %267 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @A_IOCFG, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @inl(i64 %270)
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %9, align 4
  %273 = or i32 %272, 4
  %274 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %275 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @A_IOCFG, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @outl(i32 %273, i64 %278)
  %280 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %281 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @A_IOCFG, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @inl(i64 %284)
  store i32 %285, i32* %9, align 4
  %286 = load i32**, i32*** @i2c_adc_init, align 8
  %287 = call i32 @ARRAY_SIZE(i32** %286)
  store i32 %287, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %309, %262
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* %12, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %288
  %293 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %294 = load i32**, i32*** @i2c_adc_init, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32**, i32*** @i2c_adc_init, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %301, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %293, i32 %300, i32 %307)
  br label %309

309:                                              ; preds = %292
  %310 = load i32, i32* %13, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %13, align 4
  br label %288

312:                                              ; preds = %288
  store i32 0, i32* %13, align 4
  br label %313

313:                                              ; preds = %333, %312
  %314 = load i32, i32* %13, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %336

316:                                              ; preds = %313
  %317 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %318 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %317, i32 0, i32 1
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  store i32 207, i32* %324, align 4
  %325 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %326 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %325, i32 0, i32 1
  %327 = load i32**, i32*** %326, align 8
  %328 = load i32, i32* %13, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %327, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  store i32 207, i32* %332, align 4
  br label %333

333:                                              ; preds = %316
  %334 = load i32, i32* %13, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %13, align 4
  br label %313

336:                                              ; preds = %313
  br label %337

337:                                              ; preds = %336, %255
  %338 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %339 = load i32, i32* @PTB, align 4
  %340 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %341 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %340, i32 0, i32 9
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %338, i32 %339, i32 0, i32 %343)
  %345 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %346 = load i32, i32* @TCB, align 4
  %347 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %345, i32 %346, i32 0, i32 0)
  %348 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %349 = load i32, i32* @TCBS, align 4
  %350 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %348, i32 %349, i32 0, i32 4)
  %351 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %352 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %351, i32 0, i32 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %356 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = shl i32 %354, %357
  %359 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %360 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %337
  %364 = load i32, i32* @MAP_PTI_MASK1, align 4
  br label %367

365:                                              ; preds = %337
  %366 = load i32, i32* @MAP_PTI_MASK0, align 4
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i32 [ %364, %363 ], [ %366, %365 ]
  %369 = or i32 %358, %368
  store i32 %369, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %370

370:                                              ; preds = %385, %367
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* @NUM_G, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %388

374:                                              ; preds = %370
  %375 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %376 = load i32, i32* @MAPA, align 4
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* %7, align 4
  %379 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %375, i32 %376, i32 %377, i32 %378)
  %380 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %381 = load i32, i32* @MAPB, align 4
  %382 = load i32, i32* %8, align 4
  %383 = load i32, i32* %7, align 4
  %384 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %380, i32 %381, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %374
  %386 = load i32, i32* %8, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %8, align 4
  br label %370

388:                                              ; preds = %370
  %389 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %390 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %389, i32 0, i32 7
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %407

395:                                              ; preds = %388
  %396 = load i32, i32* @HCFG_AUTOMUTE_ASYNC, align 4
  %397 = load i32, i32* @HCFG_EMU32_SLAVE, align 4
  %398 = or i32 %396, %397
  %399 = load i32, i32* @HCFG_AUDIOENABLE, align 4
  %400 = or i32 %398, %399
  %401 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %402 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %401, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @HCFG, align 8
  %405 = add nsw i64 %403, %404
  %406 = call i32 @outl(i32 %400, i64 %405)
  br label %488

407:                                              ; preds = %388
  %408 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %409 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %408, i32 0, i32 6
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %444

412:                                              ; preds = %407
  %413 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %414 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = icmp eq i32 %415, 4
  br i1 %416, label %417, label %433

417:                                              ; preds = %412
  %418 = load i32, i32* @HCFG_AUDIOENABLE, align 4
  %419 = load i32, i32* @HCFG_AC3ENABLE_CDSPDIF, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @HCFG_AC3ENABLE_GPSPDIF, align 4
  %422 = or i32 %420, %421
  %423 = load i32, i32* @HCFG_AUTOMUTE, align 4
  %424 = or i32 %422, %423
  %425 = load i32, i32* @HCFG_JOYENABLE, align 4
  %426 = or i32 %424, %425
  %427 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %428 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %427, i32 0, i32 5
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @HCFG, align 8
  %431 = add nsw i64 %429, %430
  %432 = call i32 @outl(i32 %426, i64 %431)
  br label %443

433:                                              ; preds = %412
  %434 = load i32, i32* @HCFG_AUTOMUTE, align 4
  %435 = load i32, i32* @HCFG_JOYENABLE, align 4
  %436 = or i32 %434, %435
  %437 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %438 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %437, i32 0, i32 5
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @HCFG, align 8
  %441 = add nsw i64 %439, %440
  %442 = call i32 @outl(i32 %436, i64 %441)
  br label %443

443:                                              ; preds = %433, %417
  br label %487

444:                                              ; preds = %407
  %445 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %446 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = icmp eq i32 %447, 32
  br i1 %448, label %464, label %449

449:                                              ; preds = %444
  %450 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %451 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = icmp eq i32 %452, 50176
  br i1 %453, label %464, label %454

454:                                              ; preds = %449
  %455 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %456 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = icmp eq i32 %457, 33
  br i1 %458, label %459, label %474

459:                                              ; preds = %454
  %460 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %461 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 4
  %463 = icmp slt i32 %462, 6
  br i1 %463, label %464, label %474

464:                                              ; preds = %459, %449, %444
  %465 = load i32, i32* @HCFG_LOCKTANKCACHE_MASK, align 4
  %466 = load i32, i32* @HCFG_AUTOMUTE, align 4
  %467 = or i32 %465, %466
  %468 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %469 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %468, i32 0, i32 5
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @HCFG, align 8
  %472 = add nsw i64 %470, %471
  %473 = call i32 @outl(i32 %467, i64 %472)
  br label %486

474:                                              ; preds = %459, %454
  %475 = load i32, i32* @HCFG_LOCKTANKCACHE_MASK, align 4
  %476 = load i32, i32* @HCFG_AUTOMUTE, align 4
  %477 = or i32 %475, %476
  %478 = load i32, i32* @HCFG_JOYENABLE, align 4
  %479 = or i32 %477, %478
  %480 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %481 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %480, i32 0, i32 5
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @HCFG, align 8
  %484 = add nsw i64 %482, %483
  %485 = call i32 @outl(i32 %479, i64 %484)
  br label %486

486:                                              ; preds = %474, %464
  br label %487

487:                                              ; preds = %486, %443
  br label %488

488:                                              ; preds = %487, %395
  %489 = load i32, i32* %5, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %587

491:                                              ; preds = %488
  %492 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %493 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %492, i32 0, i32 7
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %491
  br label %586

499:                                              ; preds = %491
  %500 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %501 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %500, i32 0, i32 7
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %499
  br label %585

507:                                              ; preds = %499
  %508 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %509 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %508, i32 0, i32 6
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %548

512:                                              ; preds = %507
  %513 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %514 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %513, i32 0, i32 5
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @A_IOCFG, align 8
  %517 = add nsw i64 %515, %516
  %518 = call i32 @inl(i64 %517)
  store i32 %518, i32* %14, align 4
  %519 = load i32, i32* %14, align 4
  %520 = load i32, i32* @A_IOCFG_GPOUT2, align 4
  %521 = or i32 %519, %520
  %522 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %523 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %522, i32 0, i32 5
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @A_IOCFG, align 8
  %526 = add nsw i64 %524, %525
  %527 = call i32 @outl(i32 %521, i64 %526)
  %528 = call i32 @udelay(i32 500)
  %529 = load i32, i32* %14, align 4
  %530 = load i32, i32* @A_IOCFG_GPOUT1, align 4
  %531 = or i32 %529, %530
  %532 = load i32, i32* @A_IOCFG_GPOUT2, align 4
  %533 = or i32 %531, %532
  %534 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %535 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %534, i32 0, i32 5
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @A_IOCFG, align 8
  %538 = add nsw i64 %536, %537
  %539 = call i32 @outl(i32 %533, i64 %538)
  %540 = call i32 @udelay(i32 100)
  %541 = load i32, i32* %14, align 4
  %542 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %543 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %542, i32 0, i32 5
  %544 = load i64, i64* %543, align 8
  %545 = load i64, i64* @A_IOCFG, align 8
  %546 = add nsw i64 %544, %545
  %547 = call i32 @outl(i32 %541, i64 %546)
  br label %584

548:                                              ; preds = %507
  %549 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %550 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %549, i32 0, i32 5
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @HCFG, align 8
  %553 = add nsw i64 %551, %552
  %554 = call i32 @inl(i64 %553)
  store i32 %554, i32* %15, align 4
  %555 = load i32, i32* %15, align 4
  %556 = load i32, i32* @HCFG_GPOUT2, align 4
  %557 = or i32 %555, %556
  %558 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %559 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %558, i32 0, i32 5
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @HCFG, align 8
  %562 = add nsw i64 %560, %561
  %563 = call i32 @outl(i32 %557, i64 %562)
  %564 = call i32 @udelay(i32 500)
  %565 = load i32, i32* %15, align 4
  %566 = load i32, i32* @HCFG_GPOUT1, align 4
  %567 = or i32 %565, %566
  %568 = load i32, i32* @HCFG_GPOUT2, align 4
  %569 = or i32 %567, %568
  %570 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %571 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %570, i32 0, i32 5
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @HCFG, align 8
  %574 = add nsw i64 %572, %573
  %575 = call i32 @outl(i32 %569, i64 %574)
  %576 = call i32 @udelay(i32 100)
  %577 = load i32, i32* %15, align 4
  %578 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %579 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %578, i32 0, i32 5
  %580 = load i64, i64* %579, align 8
  %581 = load i64, i64* @HCFG, align 8
  %582 = add nsw i64 %580, %581
  %583 = call i32 @outl(i32 %577, i64 %582)
  br label %584

584:                                              ; preds = %548, %512
  br label %585

585:                                              ; preds = %584, %506
  br label %586

586:                                              ; preds = %585, %498
  br label %587

587:                                              ; preds = %586, %488
  %588 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %589 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %588, i32 0, i32 7
  %590 = load %struct.TYPE_8__*, %struct.TYPE_8__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %590, i32 0, i32 1
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %587
  br label %626

595:                                              ; preds = %587
  %596 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %597 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %596, i32 0, i32 7
  %598 = load %struct.TYPE_8__*, %struct.TYPE_8__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %595
  br label %625

603:                                              ; preds = %595
  %604 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %605 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %604, i32 0, i32 6
  %606 = load i64, i64* %605, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %624

608:                                              ; preds = %603
  %609 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %610 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %609, i32 0, i32 5
  %611 = load i64, i64* %610, align 8
  %612 = load i64, i64* @A_IOCFG, align 8
  %613 = add nsw i64 %611, %612
  %614 = call i32 @inl(i64 %613)
  store i32 %614, i32* %16, align 4
  %615 = load i32, i32* %16, align 4
  %616 = load i32, i32* @A_IOCFG_GPOUT0, align 4
  %617 = or i32 %615, %616
  %618 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %619 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %618, i32 0, i32 5
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @A_IOCFG, align 8
  %622 = add nsw i64 %620, %621
  %623 = call i32 @outl(i32 %617, i64 %622)
  br label %624

624:                                              ; preds = %608, %603
  br label %625

625:                                              ; preds = %624, %602
  br label %626

626:                                              ; preds = %625, %594
  %627 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %628 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %627, i32 0, i32 2
  %629 = load i32, i32* %628, align 8
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %646

631:                                              ; preds = %626
  %632 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %633 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %632, i32 0, i32 5
  %634 = load i64, i64* %633, align 8
  %635 = load i64, i64* @HCFG, align 8
  %636 = add nsw i64 %634, %635
  %637 = call i32 @inl(i64 %636)
  %638 = load i32, i32* @HCFG_EXPANDED_MEM, align 4
  %639 = or i32 %637, %638
  %640 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %641 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %640, i32 0, i32 5
  %642 = load i64, i64* %641, align 8
  %643 = load i64, i64* @HCFG, align 8
  %644 = add nsw i64 %642, %643
  %645 = call i32 @outl(i32 %639, i64 %644)
  br label %646

646:                                              ; preds = %631, %626
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_voice_init(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @snd_emu10k1_spi_write(%struct.snd_emu10k1*, i32*) #1

declare dso_local i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
