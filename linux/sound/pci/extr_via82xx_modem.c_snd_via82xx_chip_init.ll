; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx_modem = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VIA_MC97_CTRL = common dso_local global i32 0, align 4
@VIA_MC97_CTRL_INIT = common dso_local global i8 0, align 1
@VIA_ACLINK_STAT = common dso_local global i32 0, align 4
@VIA_ACLINK_C00_READY = common dso_local global i8 0, align 1
@VIA_ACLINK_CTRL = common dso_local global i32 0, align 4
@VIA_ACLINK_CTRL_ENABLE = common dso_local global i8 0, align 1
@VIA_ACLINK_CTRL_RESET = common dso_local global i8 0, align 1
@VIA_ACLINK_CTRL_SYNC = common dso_local global i8 0, align 1
@VIA_ACLINK_CTRL_INIT = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@VIA_REG_AC97_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AC'97 codec is not ready [0x%x]\0A\00", align 1
@VIA_REG_AC97_READ = common dso_local global i32 0, align 4
@VIA_REG_AC97_SECONDARY_VALID = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SECONDARY = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SHIFT = common dso_local global i32 0, align 4
@GPI_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx_modem*)* @snd_via82xx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_chip_init(%struct.via82xx_modem* %0) #0 {
  %2 = alloca %struct.via82xx_modem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.via82xx_modem* %0, %struct.via82xx_modem** %2, align 8
  %6 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %7 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VIA_MC97_CTRL, align 4
  %10 = call i32 @pci_read_config_byte(i32 %8, i32 %9, i8* %5)
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @VIA_MC97_CTRL_INIT, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = load i8, i8* @VIA_MC97_CTRL_INIT, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %21 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @VIA_MC97_CTRL_INIT, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = call i32 @pci_write_config_byte(i32 %22, i32 68, i8 zeroext %28)
  %30 = call i32 @udelay(i32 100)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %33 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VIA_ACLINK_STAT, align 4
  %36 = call i32 @pci_read_config_byte(i32 %34, i32 %35, i8* %5)
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @VIA_ACLINK_C00_READY, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %31
  %44 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %45 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %48 = load i8, i8* @VIA_ACLINK_CTRL_ENABLE, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @VIA_ACLINK_CTRL_RESET, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = load i8, i8* @VIA_ACLINK_CTRL_SYNC, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %52, %54
  %56 = trunc i32 %55 to i8
  %57 = call i32 @pci_write_config_byte(i32 %46, i32 %47, i8 zeroext %56)
  %58 = call i32 @udelay(i32 100)
  %59 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %60 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %63 = call i32 @pci_write_config_byte(i32 %61, i32 %62, i8 zeroext 0)
  %64 = call i32 @udelay(i32 100)
  %65 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %66 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %69 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %70 = call i32 @pci_write_config_byte(i32 %67, i32 %68, i8 zeroext %69)
  %71 = call i32 @udelay(i32 100)
  br label %72

72:                                               ; preds = %43, %31
  %73 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %74 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %77 = call i32 @pci_read_config_byte(i32 %75, i32 %76, i8* %5)
  %78 = load i8, i8* %5, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %79, %81
  %83 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %72
  %87 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %88 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %91 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %92 = call i32 @pci_write_config_byte(i32 %89, i32 %90, i8 zeroext %91)
  %93 = call i32 @udelay(i32 100)
  br label %94

94:                                               ; preds = %86, %72
  %95 = load i64, i64* @jiffies, align 8
  %96 = call i64 @msecs_to_jiffies(i32 750)
  %97 = add i64 %95, %96
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %113, %94
  %99 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %100 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @VIA_ACLINK_STAT, align 4
  %103 = call i32 @pci_read_config_byte(i32 %101, i32 %102, i8* %5)
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @VIA_ACLINK_C00_READY, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %118

111:                                              ; preds = %98
  %112 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %113

113:                                              ; preds = %111
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i64 @time_before(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %98, label %118

118:                                              ; preds = %113, %110
  %119 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %120 = call i32 @snd_via82xx_codec_xread(%struct.via82xx_modem* %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* @VIA_REG_AC97_BUSY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %126 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %124, %118
  %133 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %134 = load i32, i32* @VIA_REG_AC97_READ, align 4
  %135 = load i32, i32* @VIA_REG_AC97_SECONDARY_VALID, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SECONDARY, align 4
  %138 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %136, %139
  %141 = call i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem* %133, i32 %140)
  %142 = load i64, i64* @jiffies, align 8
  %143 = call i64 @msecs_to_jiffies(i32 750)
  %144 = add i64 %142, %143
  store i64 %144, i64* %4, align 8
  %145 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %146 = load i32, i32* @VIA_REG_AC97_READ, align 4
  %147 = load i32, i32* @VIA_REG_AC97_SECONDARY_VALID, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SECONDARY, align 4
  %150 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = or i32 %148, %151
  %153 = call i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem* %145, i32 %152)
  br label %154

154:                                              ; preds = %165, %132
  %155 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %156 = call i32 @snd_via82xx_codec_xread(%struct.via82xx_modem* %155)
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* @VIA_REG_AC97_SECONDARY_VALID, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %162 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  br label %171

163:                                              ; preds = %154
  %164 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %165

165:                                              ; preds = %163
  %166 = load i64, i64* @jiffies, align 8
  %167 = load i64, i64* %4, align 8
  %168 = call i64 @time_before(i64 %166, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %154, label %170

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170, %160
  %172 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %173 = load i32, i32* @GPI_INTR, align 4
  %174 = call i32 @VIAREG(%struct.via82xx_modem* %172, i32 %173)
  %175 = call i32 @outl(i32 0, i32 %174)
  ret i32 0
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @snd_via82xx_codec_xread(%struct.via82xx_modem*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @VIAREG(%struct.via82xx_modem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
