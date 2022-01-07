; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i64, i32, i32, i32*, i32**, %struct.pci_dev*, %struct.TYPE_2__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

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
@TYPE_VIA686 = common dso_local global i64 0, align 8
@VIA_FM_NMI_CTRL = common dso_local global i32 0, align 4
@GPI_INTR = common dso_local global i32 0, align 4
@TYPE_VIA8233A = common dso_local global i64 0, align 8
@VIA_REG_OFS_PLAYBACK_VOLUME_L = common dso_local global i64 0, align 8
@VIA_FUNC_ENABLE = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SECONDARY = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SHIFT = common dso_local global i32 0, align 4
@VIA_REG_AC97_READ = common dso_local global i32 0, align 4
@VIA_REG_AC97_SECONDARY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via82xx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_chip_init(%struct.via82xx* %0) #0 {
  %2 = alloca %struct.via82xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.via82xx* %0, %struct.via82xx** %2, align 8
  %11 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %12 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %11, i32 0, i32 5
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %14 = load i32, i32* @VIA_ACLINK_STAT, align 4
  %15 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i32 %14, i8* %5)
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @VIA_ACLINK_C00_READY, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %1
  %23 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %24 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %23, i32 0, i32 5
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  %26 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %27 = load i8, i8* @VIA_ACLINK_CTRL_ENABLE, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @VIA_ACLINK_CTRL_RESET, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* @VIA_ACLINK_CTRL_SYNC, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 %26, i8 zeroext %35)
  %37 = call i32 @udelay(i32 100)
  %38 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %39 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %38, i32 0, i32 5
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %42 = call i32 @pci_write_config_byte(%struct.pci_dev* %40, i32 %41, i8 zeroext 0)
  %43 = call i32 @udelay(i32 100)
  %44 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %45 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %44, i32 0, i32 5
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  %47 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %48 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %49 = call i32 @pci_write_config_byte(%struct.pci_dev* %46, i32 %47, i8 zeroext %48)
  %50 = call i32 @udelay(i32 100)
  br label %51

51:                                               ; preds = %22, %1
  %52 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %53 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %52, i32 0, i32 5
  %54 = load %struct.pci_dev*, %struct.pci_dev** %53, align 8
  %55 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %56 = call i32 @pci_read_config_byte(%struct.pci_dev* %54, i32 %55, i8* %5)
  %57 = load i8, i8* %5, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %67 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %66, i32 0, i32 5
  %68 = load %struct.pci_dev*, %struct.pci_dev** %67, align 8
  %69 = load i32, i32* @VIA_ACLINK_CTRL, align 4
  %70 = load i8, i8* @VIA_ACLINK_CTRL_INIT, align 1
  %71 = call i32 @pci_write_config_byte(%struct.pci_dev* %68, i32 %69, i8 zeroext %70)
  %72 = call i32 @udelay(i32 100)
  br label %73

73:                                               ; preds = %65, %51
  %74 = load i64, i64* @jiffies, align 8
  %75 = call i64 @msecs_to_jiffies(i32 750)
  %76 = add i64 %74, %75
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %92, %73
  %78 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %79 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %78, i32 0, i32 5
  %80 = load %struct.pci_dev*, %struct.pci_dev** %79, align 8
  %81 = load i32, i32* @VIA_ACLINK_STAT, align 4
  %82 = call i32 @pci_read_config_byte(%struct.pci_dev* %80, i32 %81, i8* %5)
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @VIA_ACLINK_C00_READY, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %97

90:                                               ; preds = %77
  %91 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %92

92:                                               ; preds = %90
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @time_before(i64 %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %77, label %97

97:                                               ; preds = %92, %89
  %98 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %99 = call i32 @snd_via82xx_codec_xread(%struct.via82xx* %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* @VIA_REG_AC97_BUSY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %105 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %104, i32 0, i32 6
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %103, %97
  %112 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %113 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TYPE_VIA686, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %119 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %118, i32 0, i32 5
  %120 = load %struct.pci_dev*, %struct.pci_dev** %119, align 8
  %121 = load i32, i32* @VIA_FM_NMI_CTRL, align 4
  %122 = call i32 @pci_write_config_byte(%struct.pci_dev* %120, i32 %121, i8 zeroext 0)
  %123 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %124 = load i32, i32* @GPI_INTR, align 4
  %125 = call i32 @VIAREG(%struct.via82xx* %123, i32 %124)
  %126 = call i32 @outl(i32 0, i32 %125)
  br label %127

127:                                              ; preds = %117, %111
  %128 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %129 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TYPE_VIA686, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = call %struct.pci_dev* @pci_get_device(i32 4358, i32 12392, i32* null)
  store %struct.pci_dev* %134, %struct.pci_dev** %6, align 8
  %135 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %136 = icmp ne %struct.pci_dev* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %139 = call i32 @pci_read_config_byte(%struct.pci_dev* %138, i32 68, i8* %7)
  %140 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %141 = load i8, i8* %7, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %142, 64
  %144 = trunc i32 %143 to i8
  %145 = call i32 @pci_write_config_byte(%struct.pci_dev* %140, i32 68, i8 zeroext %144)
  %146 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %147 = call i32 @pci_dev_put(%struct.pci_dev* %146)
  br label %148

148:                                              ; preds = %137, %133
  br label %149

149:                                              ; preds = %148, %127
  %150 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %151 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TYPE_VIA8233A, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %210

155:                                              ; preds = %149
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %206, %155
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 4
  br i1 %158, label %159, label %209

159:                                              ; preds = %156
  %160 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %161 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = mul nsw i32 16, %163
  %165 = add nsw i32 %162, %164
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %202, %159
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %170, label %205

170:                                              ; preds = %167
  %171 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %172 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %179 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %178, i32 0, i32 4
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %177, i32* %187, align 4
  %188 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %189 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* @VIA_REG_OFS_PLAYBACK_VOLUME_L, align 8
  %197 = add i64 %195, %196
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 %197, %199
  %201 = call i32 @outb(i32 %194, i64 %200)
  br label %202

202:                                              ; preds = %170
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %167

205:                                              ; preds = %167
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %156

209:                                              ; preds = %156
  br label %210

210:                                              ; preds = %209, %149
  ret i32 0
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @snd_via82xx_codec_xread(%struct.via82xx*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @VIAREG(%struct.via82xx*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
