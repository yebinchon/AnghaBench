; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i64, i32, i32, %struct.TYPE_2__*, i64, i8*, i8*, i32, %struct.pci_dev*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"chip initializing ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ali_chip_init: reset 5451 error.\0A\00", align 1
@ALI_5451_V02 = common dso_local global i64 0, align 8
@ALI_GLOBAL_CONTROL = common dso_local global i32 0, align 4
@ALI_AINTEN = common dso_local global i32 0, align 4
@ALI_AINT = common dso_local global i32 0, align 4
@ALI_VOLUME = common dso_local global i32 0, align 4
@ALI_MPUR2 = common dso_local global i32 0, align 4
@AC97_EXTENDED_ID = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@ALI_SCTRL = common dso_local global i32 0, align 4
@ALI_SCTRL_CODEC2_READY = common dso_local global i32 0, align 4
@ALI_SCTRL_LINE_IN2 = common dso_local global i32 0, align 4
@ALI_SCTRL_GPIO_IN2 = common dso_local global i32 0, align 4
@ALI_SCTRL_LINE_OUT_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"chip initialize succeed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*)* @snd_ali_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_chip_init(%struct.snd_ali* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  %7 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %14 = call i64 @snd_ali_reset_5451(%struct.snd_ali* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %143

23:                                               ; preds = %1
  %24 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ALI_5451_V02, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %30, i32 0, i32 9
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %6, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 89, i8* %5)
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, 128
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %5, align 1
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = load i8, i8* %5, align 1
  %41 = call i32 @pci_write_config_byte(%struct.pci_dev* %39, i32 89, i8 zeroext %40)
  %42 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %43 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %42, i32 0, i32 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %43, align 8
  store %struct.pci_dev* %44, %struct.pci_dev** %6, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %45, i32 184, i8* %5)
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, 32
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %5, align 1
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = load i8, i8* %5, align 1
  %53 = call i32 @pci_write_config_byte(%struct.pci_dev* %51, i32 184, i8 zeroext %52)
  br label %54

54:                                               ; preds = %29, %23
  %55 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %56 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pci_read_config_dword(i32 %57, i32 68, i32* %4)
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, -16711936
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, 524458
  store i32 %62, i32* %4, align 4
  %63 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %64 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @pci_write_config_dword(i32 %65, i32 68, i32 %66)
  %68 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %69 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %70 = call i32 @ALI_REG(%struct.snd_ali* %68, i32 %69)
  %71 = call i32 @outl(i32 -2147483647, i32 %70)
  %72 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %73 = load i32, i32* @ALI_AINTEN, align 4
  %74 = call i32 @ALI_REG(%struct.snd_ali* %72, i32 %73)
  %75 = call i32 @outl(i32 0, i32 %74)
  %76 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %77 = load i32, i32* @ALI_AINT, align 4
  %78 = call i32 @ALI_REG(%struct.snd_ali* %76, i32 %77)
  %79 = call i32 @outl(i32 -1, i32 %78)
  %80 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %81 = load i32, i32* @ALI_VOLUME, align 4
  %82 = call i32 @ALI_REG(%struct.snd_ali* %80, i32 %81)
  %83 = call i32 @outl(i32 0, i32 %82)
  %84 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %85 = load i32, i32* @ALI_MPUR2, align 4
  %86 = call i32 @ALI_REG(%struct.snd_ali* %84, i32 %85)
  %87 = call i32 @outb(i32 16, i32 %86)
  %88 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %89 = load i32, i32* @AC97_EXTENDED_ID, align 4
  %90 = call i8* @snd_ali_codec_peek(%struct.snd_ali* %88, i32 0, i32 %89)
  %91 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %92 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %94 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %95 = call i8* @snd_ali_codec_peek(%struct.snd_ali* %93, i32 0, i32 %94)
  %96 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %97 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %99 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %54
  %103 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %104 = call i32 @snd_ali_enable_spdif_out(%struct.snd_ali* %103)
  %105 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %106 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %105, i32 0, i32 1
  store i32 2, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %54
  %108 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %109 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %108, i32 0, i32 2
  store i32 1, i32* %109, align 4
  %110 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %111 = load i32, i32* @ALI_SCTRL, align 4
  %112 = call i32 @ALI_REG(%struct.snd_ali* %110, i32 %111)
  %113 = call i32 @inl(i32 %112)
  %114 = load i32, i32* @ALI_SCTRL_CODEC2_READY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %107
  %118 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %119 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %123 = load i32, i32* @ALI_SCTRL, align 4
  %124 = call i32 @ALI_REG(%struct.snd_ali* %122, i32 %123)
  %125 = call i32 @inl(i32 %124)
  %126 = load i32, i32* @ALI_SCTRL_LINE_IN2, align 4
  %127 = load i32, i32* @ALI_SCTRL_GPIO_IN2, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ALI_SCTRL_LINE_OUT_EN, align 4
  %130 = or i32 %128, %129
  %131 = or i32 %125, %130
  %132 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %133 = load i32, i32* @ALI_SCTRL, align 4
  %134 = call i32 @ALI_REG(%struct.snd_ali* %132, i32 %133)
  %135 = call i32 @outl(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %117, %107
  %137 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %138 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_dbg(i32 %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %136, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @snd_ali_reset_5451(%struct.snd_ali*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i8* @snd_ali_codec_peek(%struct.snd_ali*, i32, i32) #1

declare dso_local i32 @snd_ali_enable_spdif_out(%struct.snd_ali*) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
