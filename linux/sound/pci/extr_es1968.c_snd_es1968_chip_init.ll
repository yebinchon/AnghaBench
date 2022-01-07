; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ESM_CONFIG_A = common dso_local global i32 0, align 4
@DMA_CLEAR = common dso_local global i32 0, align 4
@PIC_SNOOP1 = common dso_local global i32 0, align 4
@PIC_SNOOP2 = common dso_local global i32 0, align 4
@SAFEGUARD = common dso_local global i32 0, align 4
@POST_WRITE = common dso_local global i32 0, align 4
@PCI_TIMING = common dso_local global i32 0, align 4
@SWAP_LR = common dso_local global i32 0, align 4
@SUBTR_DECODE = common dso_local global i32 0, align 4
@ESM_CONFIG_B = common dso_local global i32 0, align 4
@SPDIF_CONFB = common dso_local global i32 0, align 4
@HWV_CONFB = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i32 0, align 4
@GPIO_CONFB = common dso_local global i32 0, align 4
@CHI_CONFB = common dso_local global i32 0, align 4
@IDMA_CONFB = common dso_local global i32 0, align 4
@MIDI_FIX = common dso_local global i32 0, align 4
@IRQ_TO_ISA = common dso_local global i32 0, align 4
@ESM_DDMA = common dso_local global i32 0, align 4
@ESM_LEGACY_AUDIO_CONTROL = common dso_local global i32 0, align 4
@ESS_DISABLE_AUDIO = common dso_local global i32 0, align 4
@ESS_ENABLE_SERIAL_IRQ = common dso_local global i32 0, align 4
@ESM_RING_BUS_DEST = common dso_local global i64 0, align 8
@ESM_RING_BUS_CONTR_A = common dso_local global i64 0, align 8
@ESM_RING_BUS_CONTR_B = common dso_local global i64 0, align 8
@RINGB_EN_SPDIF = common dso_local global i32 0, align 4
@ASSP_CONTROL_B = common dso_local global i64 0, align 8
@ASSP_CONTROL_A = common dso_local global i64 0, align 8
@ASSP_CONTROL_C = common dso_local global i64 0, align 8
@WC_INDEX = common dso_local global i64 0, align 8
@WC_DATA = common dso_local global i64 0, align 8
@IDR7_WAVE_ROMRAM = common dso_local global i32 0, align 4
@IDR2_CRAM_DATA = common dso_local global i32 0, align 4
@WC_CONTROL = common dso_local global i64 0, align 8
@NR_APUS = common dso_local global i32 0, align 4
@NR_APU_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @snd_es1968_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_chip_init(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %8 = load %struct.es1968*, %struct.es1968** %2, align 8
  %9 = getelementptr inbounds %struct.es1968, %struct.es1968* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.es1968*, %struct.es1968** %2, align 8
  %12 = getelementptr inbounds %struct.es1968, %struct.es1968* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load i32, i32* @ESM_CONFIG_A, align 4
  %16 = call i32 @pci_read_config_word(%struct.pci_dev* %14, i32 %15, i32* %6)
  %17 = load i32, i32* @DMA_CLEAR, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @PIC_SNOOP1, align 4
  %22 = load i32, i32* @PIC_SNOOP2, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @SAFEGUARD, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @POST_WRITE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @PCI_TIMING, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @SWAP_LR, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @SUBTR_DECODE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load i32, i32* @ESM_CONFIG_A, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @pci_write_config_word(%struct.pci_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = load i32, i32* @ESM_CONFIG_B, align 4
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %49, i32 %50, i32* %6)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, -32769
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, -16385
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @SPDIF_CONFB, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @HWV_CONFB, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @DEBOUNCE, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @GPIO_CONFB, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* @CHI_CONFB, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @IDMA_CONFB, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @MIDI_FIX, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, -3
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @IRQ_TO_ISA, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %88 = load i32, i32* @ESM_CONFIG_B, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @pci_write_config_word(%struct.pci_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %92 = load i32, i32* @ESM_DDMA, align 4
  %93 = call i32 @pci_read_config_word(%struct.pci_dev* %91, i32 %92, i32* %6)
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, -2
  store i32 %95, i32* %6, align 4
  %96 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %97 = load i32, i32* @ESM_DDMA, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @pci_write_config_word(%struct.pci_dev* %96, i32 %97, i32 %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = load i32, i32* @ESM_LEGACY_AUDIO_CONTROL, align 4
  %102 = call i32 @pci_read_config_word(%struct.pci_dev* %100, i32 %101, i32* %6)
  %103 = load i32, i32* @ESS_DISABLE_AUDIO, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @ESS_ENABLE_SERIAL_IRQ, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, -32
  store i32 %111, i32* %6, align 4
  %112 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %113 = load i32, i32* @ESM_LEGACY_AUDIO_CONTROL, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @pci_write_config_word(%struct.pci_dev* %112, i32 %113, i32 %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %117 = call i32 @pci_read_config_word(%struct.pci_dev* %116, i32 88, i32* %6)
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, 4
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, 8
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, -2049
  store i32 %123, i32* %6, align 4
  %124 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @pci_write_config_word(%struct.pci_dev* %124, i32 88, i32 %125)
  %127 = load %struct.es1968*, %struct.es1968** %2, align 8
  %128 = call i32 @snd_es1968_reset(%struct.es1968* %127)
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @ESM_RING_BUS_DEST, align 8
  %131 = add i64 %129, %130
  %132 = call i32 @outw(i32 49296, i64 %131)
  %133 = call i32 @udelay(i32 20)
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @ESM_RING_BUS_CONTR_A, align 8
  %136 = add i64 %134, %135
  %137 = call i32 @outw(i32 12288, i64 %136)
  %138 = call i32 @udelay(i32 20)
  %139 = load %struct.es1968*, %struct.es1968** %2, align 8
  %140 = call i32 @snd_es1968_ac97_reset(%struct.es1968* %139)
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @ESM_RING_BUS_CONTR_B, align 8
  %143 = add i64 %141, %142
  %144 = call i32 @inl(i64 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @RINGB_EN_SPDIF, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %7, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @ESM_RING_BUS_CONTR_B, align 8
  %152 = add i64 %150, %151
  %153 = call i32 @outl(i32 %149, i64 %152)
  %154 = load i64, i64* %5, align 8
  %155 = add i64 %154, 28
  %156 = call i32 @outb(i32 136, i64 %155)
  %157 = load i64, i64* %5, align 8
  %158 = add i64 %157, 29
  %159 = call i32 @outb(i32 136, i64 %158)
  %160 = load i64, i64* %5, align 8
  %161 = add i64 %160, 30
  %162 = call i32 @outb(i32 136, i64 %161)
  %163 = load i64, i64* %5, align 8
  %164 = add i64 %163, 31
  %165 = call i32 @outb(i32 136, i64 %164)
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @ASSP_CONTROL_B, align 8
  %168 = add i64 %166, %167
  %169 = call i32 @outb(i32 0, i64 %168)
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* @ASSP_CONTROL_A, align 8
  %172 = add i64 %170, %171
  %173 = call i32 @outb(i32 3, i64 %172)
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* @ASSP_CONTROL_C, align 8
  %176 = add i64 %174, %175
  %177 = call i32 @outb(i32 0, i64 %176)
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %202, %1
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %179, 16
  br i1 %180, label %181, label %205

181:                                              ; preds = %178
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 480, %182
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* @WC_INDEX, align 8
  %186 = add i64 %184, %185
  %187 = call i32 @outw(i32 %183, i64 %186)
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @WC_DATA, align 8
  %190 = add i64 %188, %189
  %191 = call i32 @outw(i32 0, i64 %190)
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 464, %192
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* @WC_INDEX, align 8
  %196 = add i64 %194, %195
  %197 = call i32 @outw(i32 %193, i64 %196)
  %198 = load i64, i64* %5, align 8
  %199 = load i64, i64* @WC_DATA, align 8
  %200 = add i64 %198, %199
  %201 = call i32 @outw(i32 0, i64 %200)
  br label %202

202:                                              ; preds = %181
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %178

205:                                              ; preds = %178
  %206 = load %struct.es1968*, %struct.es1968** %2, align 8
  %207 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %208 = load %struct.es1968*, %struct.es1968** %2, align 8
  %209 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %210 = call i32 @wave_get_register(%struct.es1968* %208, i32 %209)
  %211 = and i32 %210, 65280
  %212 = call i32 @wave_set_register(%struct.es1968* %206, i32 %207, i32 %211)
  %213 = load %struct.es1968*, %struct.es1968** %2, align 8
  %214 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %215 = load %struct.es1968*, %struct.es1968** %2, align 8
  %216 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %217 = call i32 @wave_get_register(%struct.es1968* %215, i32 %216)
  %218 = or i32 %217, 256
  %219 = call i32 @wave_set_register(%struct.es1968* %213, i32 %214, i32 %218)
  %220 = load %struct.es1968*, %struct.es1968** %2, align 8
  %221 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %222 = load %struct.es1968*, %struct.es1968** %2, align 8
  %223 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %224 = call i32 @wave_get_register(%struct.es1968* %222, i32 %223)
  %225 = and i32 %224, -513
  %226 = call i32 @wave_set_register(%struct.es1968* %220, i32 %221, i32 %225)
  %227 = load %struct.es1968*, %struct.es1968** %2, align 8
  %228 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %229 = load %struct.es1968*, %struct.es1968** %2, align 8
  %230 = load i32, i32* @IDR7_WAVE_ROMRAM, align 4
  %231 = call i32 @wave_get_register(%struct.es1968* %229, i32 %230)
  %232 = or i32 %231, -1025
  %233 = call i32 @wave_set_register(%struct.es1968* %227, i32 %228, i32 %232)
  %234 = load %struct.es1968*, %struct.es1968** %2, align 8
  %235 = load i32, i32* @IDR2_CRAM_DATA, align 4
  %236 = call i32 @maestro_write(%struct.es1968* %234, i32 %235, i32 0)
  %237 = load %struct.es1968*, %struct.es1968** %2, align 8
  %238 = call i32 @maestro_write(%struct.es1968* %237, i32 8, i32 45060)
  %239 = load %struct.es1968*, %struct.es1968** %2, align 8
  %240 = call i32 @maestro_write(%struct.es1968* %239, i32 9, i32 27)
  %241 = load %struct.es1968*, %struct.es1968** %2, align 8
  %242 = call i32 @maestro_write(%struct.es1968* %241, i32 10, i32 32768)
  %243 = load %struct.es1968*, %struct.es1968** %2, align 8
  %244 = call i32 @maestro_write(%struct.es1968* %243, i32 11, i32 16183)
  %245 = load %struct.es1968*, %struct.es1968** %2, align 8
  %246 = call i32 @maestro_write(%struct.es1968* %245, i32 12, i32 152)
  %247 = load %struct.es1968*, %struct.es1968** %2, align 8
  %248 = load %struct.es1968*, %struct.es1968** %2, align 8
  %249 = call i32 @maestro_read(%struct.es1968* %248, i32 12)
  %250 = and i32 %249, -61441
  %251 = or i32 %250, 32768
  %252 = call i32 @maestro_write(%struct.es1968* %247, i32 12, i32 %251)
  %253 = load %struct.es1968*, %struct.es1968** %2, align 8
  %254 = load %struct.es1968*, %struct.es1968** %2, align 8
  %255 = call i32 @maestro_read(%struct.es1968* %254, i32 12)
  %256 = and i32 %255, -3841
  %257 = or i32 %256, 1280
  %258 = call i32 @maestro_write(%struct.es1968* %253, i32 12, i32 %257)
  %259 = load %struct.es1968*, %struct.es1968** %2, align 8
  %260 = call i32 @maestro_write(%struct.es1968* %259, i32 13, i32 30258)
  %261 = load i64, i64* %5, align 8
  %262 = load i64, i64* @WC_CONTROL, align 8
  %263 = add i64 %261, %262
  %264 = call i32 @inw(i64 %263)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %6, align 4
  %266 = and i32 %265, -64001
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = or i32 %267, 40960
  store i32 %268, i32* %6, align 4
  %269 = load i32, i32* %6, align 4
  %270 = and i32 %269, -513
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = or i32 %271, 256
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = or i32 %273, 128
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = and i32 %275, -97
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = or i32 %277, 32
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = and i32 %279, -13
  store i32 %280, i32* %6, align 4
  %281 = load i32, i32* %6, align 4
  %282 = and i32 %281, -2
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %6, align 4
  %284 = load i64, i64* %5, align 8
  %285 = load i64, i64* @WC_CONTROL, align 8
  %286 = add i64 %284, %285
  %287 = call i32 @outw(i32 %283, i64 %286)
  store i32 0, i32* %4, align 4
  br label %288

288:                                              ; preds = %306, %205
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @NR_APUS, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %288
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %302, %292
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* @NR_APU_REGS, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %305

297:                                              ; preds = %293
  %298 = load %struct.es1968*, %struct.es1968** %2, align 8
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* %6, align 4
  %301 = call i32 @apu_set_register(%struct.es1968* %298, i32 %299, i32 %300, i32 0)
  br label %302

302:                                              ; preds = %297
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %293

305:                                              ; preds = %293
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %4, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %4, align 4
  br label %288

309:                                              ; preds = %288
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @snd_es1968_reset(%struct.es1968*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_es1968_ac97_reset(%struct.es1968*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wave_set_register(%struct.es1968*, i32, i32) #1

declare dso_local i32 @wave_get_register(%struct.es1968*, i32) #1

declare dso_local i32 @maestro_write(%struct.es1968*, i32, i32) #1

declare dso_local i32 @maestro_read(%struct.es1968*, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @apu_set_register(%struct.es1968*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
