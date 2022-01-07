; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i64, i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_LEGACY_AUDIO_CTRL = common dso_local global i32 0, align 4
@SOUND_BLASTER_ENABLE = common dso_local global i32 0, align 4
@FM_SYNTHESIS_ENABLE = common dso_local global i32 0, align 4
@MPU401_IO_ENABLE = common dso_local global i32 0, align 4
@MPU401_IRQ_ENABLE = common dso_local global i32 0, align 4
@ALIAS_10BIT_IO = common dso_local global i32 0, align 4
@DISABLE_LEGACY = common dso_local global i32 0, align 4
@PCI_ALLEGRO_CONFIG = common dso_local global i32 0, align 4
@HV_CTRL_ENABLE = common dso_local global i32 0, align 4
@REDUCED_DEBOUNCE = common dso_local global i32 0, align 4
@HV_BUTTON_FROM_GD = common dso_local global i32 0, align 4
@PM_CTRL_ENABLE = common dso_local global i32 0, align 4
@CLK_DIV_BY_49 = common dso_local global i32 0, align 4
@USE_PCI_TIMING = common dso_local global i32 0, align 4
@RESET_ASSP = common dso_local global i32 0, align 4
@ASSP_CONTROL_B = common dso_local global i64 0, align 8
@INT_CLK_SELECT = common dso_local global i32 0, align 4
@INT_CLK_MULT_ENABLE = common dso_local global i32 0, align 4
@INT_CLK_SRC_NOT_PCI = common dso_local global i32 0, align 4
@CLK_MULT_MODE_SELECT = common dso_local global i32 0, align 4
@CLK_MULT_MODE_SELECT_2 = common dso_local global i32 0, align 4
@PCI_USER_CONFIG = common dso_local global i32 0, align 4
@IN_CLK_12MHZ_SELECT = common dso_local global i32 0, align 4
@ASSP_CONTROL_A = common dso_local global i64 0, align 8
@DSP_CLK_36MHZ_SELECT = common dso_local global i32 0, align 4
@ASSP_CLK_49MHZ_SELECT = common dso_local global i32 0, align 4
@ASSP_0_WS_ENABLE = common dso_local global i32 0, align 4
@RUN_ASSP = common dso_local global i32 0, align 4
@HARDWARE_VOL_CTRL = common dso_local global i64 0, align 8
@SHADOW_MIX_REG_VOICE = common dso_local global i64 0, align 8
@HW_VOL_COUNTER_VOICE = common dso_local global i64 0, align 8
@SHADOW_MIX_REG_MASTER = common dso_local global i64 0, align 8
@HW_VOL_COUNTER_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*)* @snd_m3_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_chip_init(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  %8 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %9 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %8, i32 0, i32 3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %12 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load i32, i32* @PCI_LEGACY_AUDIO_CTRL, align 4
  %16 = call i32 @pci_read_config_word(%struct.pci_dev* %14, i32 %15, i32* %6)
  %17 = load i32, i32* @SOUND_BLASTER_ENABLE, align 4
  %18 = load i32, i32* @FM_SYNTHESIS_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MPU401_IO_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MPU401_IRQ_ENABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ALIAS_10BIT_IO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DISABLE_LEGACY, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* @PCI_LEGACY_AUDIO_CTRL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pci_write_config_word(%struct.pci_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %37 = call i32 @pci_read_config_dword(%struct.pci_dev* %35, i32 %36, i32* %5)
  %38 = load i32, i32* @HV_CTRL_ENABLE, align 4
  %39 = load i32, i32* @REDUCED_DEBOUNCE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @HV_BUTTON_FROM_GD, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %47 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @REDUCED_DEBOUNCE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @PM_CTRL_ENABLE, align 4
  %55 = load i32, i32* @CLK_DIV_BY_49, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @USE_PCI_TIMING, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pci_write_config_dword(%struct.pci_dev* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @RESET_ASSP, align 4
  %66 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %67 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ASSP_CONTROL_B, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @outb(i32 %65, i64 %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %74 = call i32 @pci_read_config_dword(%struct.pci_dev* %72, i32 %73, i32* %5)
  %75 = load i32, i32* @INT_CLK_SELECT, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %80 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %1
  %84 = load i32, i32* @INT_CLK_MULT_ENABLE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @INT_CLK_SRC_NOT_PCI, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %83, %1
  %92 = load i32, i32* @CLK_MULT_MODE_SELECT, align 4
  %93 = load i32, i32* @CLK_MULT_MODE_SELECT_2, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %99 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @pci_write_config_dword(%struct.pci_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %103 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %91
  %107 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %108 = load i32, i32* @PCI_USER_CONFIG, align 4
  %109 = call i32 @pci_read_config_dword(%struct.pci_dev* %107, i32 %108, i32* %5)
  %110 = load i32, i32* @IN_CLK_12MHZ_SELECT, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = load i32, i32* @PCI_USER_CONFIG, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @pci_write_config_dword(%struct.pci_dev* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %106, %91
  %118 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %119 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ASSP_CONTROL_A, align 8
  %122 = add i64 %120, %121
  %123 = call i32 @inb(i64 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @DSP_CLK_36MHZ_SELECT, align 4
  %125 = load i32, i32* @ASSP_CLK_49MHZ_SELECT, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* @ASSP_CLK_49MHZ_SELECT, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @ASSP_0_WS_ENABLE, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %138 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ASSP_CONTROL_A, align 8
  %141 = add i64 %139, %140
  %142 = call i32 @outb(i32 %136, i64 %141)
  %143 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %144 = call i32 @snd_m3_assp_init(%struct.snd_m3* %143)
  %145 = load i32, i32* @RUN_ASSP, align 4
  %146 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %147 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ASSP_CONTROL_B, align 8
  %150 = add i64 %148, %149
  %151 = call i32 @outb(i32 %145, i64 %150)
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* @HARDWARE_VOL_CTRL, align 8
  %154 = add i64 %152, %153
  %155 = call i32 @outb(i32 0, i64 %154)
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* @SHADOW_MIX_REG_VOICE, align 8
  %158 = add i64 %156, %157
  %159 = call i32 @outb(i32 136, i64 %158)
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* @HW_VOL_COUNTER_VOICE, align 8
  %162 = add i64 %160, %161
  %163 = call i32 @outb(i32 136, i64 %162)
  %164 = load i64, i64* %4, align 8
  %165 = load i64, i64* @SHADOW_MIX_REG_MASTER, align 8
  %166 = add i64 %164, %165
  %167 = call i32 @outb(i32 136, i64 %166)
  %168 = load i64, i64* %4, align 8
  %169 = load i64, i64* @HW_VOL_COUNTER_MASTER, align 8
  %170 = add i64 %168, %169
  %171 = call i32 @outb(i32 136, i64 %170)
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @snd_m3_assp_init(%struct.snd_m3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
