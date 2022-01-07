; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via686_init_misc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via686_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i8, i8, i64, i32, i8, i8, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@VIA_FUNC_MIDI_IRQMASK = common dso_local global i8 0, align 1
@VIA_FUNC_ENABLE_GAME = common dso_local global i8 0, align 1
@VIA_REV_686_H = common dso_local global i64 0, align 8
@mpu_port = common dso_local global i32 0, align 4
@VIA_FUNC_ENABLE_MIDI = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"VIA82xx MPU401\00", align 1
@VIA_FUNC_MIDI_PNP = common dso_local global i8 0, align 1
@VIA_FUNC_ENABLE = common dso_local global i32 0, align 4
@VIA_PNP_CONTROL = common dso_local global i32 0, align 4
@MPU401_HW_VIA686A = common dso_local global i32 0, align 4
@MPU401_INFO_INTEGRATED = common dso_local global i32 0, align 4
@MPU401_INFO_IRQ_HOOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"unable to initialize MPU-401 at 0x%lx, skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via686_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via686_init_misc(%struct.via82xx* %0) #0 {
  %2 = alloca %struct.via82xx*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %7 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  store i8 %8, i8* %3, align 1
  %9 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %10 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %4, align 1
  %12 = load i8, i8* @VIA_FUNC_MIDI_IRQMASK, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* @VIA_FUNC_ENABLE_GAME, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %26 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VIA_REV_686_H, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %31 = load i32, i32* @mpu_port, align 4
  %32 = icmp sge i32 %31, 512
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @mpu_port, align 4
  %35 = and i32 %34, 65532
  store i32 %35, i32* @mpu_port, align 4
  %36 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %37 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @mpu_port, align 4
  %40 = or i32 %39, 1
  %41 = call i32 @pci_write_config_dword(i32 %38, i32 24, i32 %40)
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %44 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pci_resource_start(i32 %45, i32 2)
  store i32 %46, i32* @mpu_port, align 4
  br label %47

47:                                               ; preds = %42, %33
  br label %77

48:                                               ; preds = %1
  %49 = load i32, i32* @mpu_port, align 4
  switch i32 %49, label %62 [
    i32 768, label %50
    i32 784, label %50
    i32 800, label %50
    i32 816, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, -13
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %4, align 1
  %55 = load i32, i32* @mpu_port, align 4
  %56 = and i32 %55, 48
  %57 = ashr i32 %56, 2
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %4, align 1
  br label %76

62:                                               ; preds = %48
  %63 = load i8, i8* %3, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @VIA_FUNC_ENABLE_MIDI, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 12
  %73 = shl i32 %72, 2
  %74 = add nsw i32 768, %73
  store i32 %74, i32* @mpu_port, align 4
  br label %75

75:                                               ; preds = %69, %62
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* @mpu_port, align 4
  %79 = icmp sge i32 %78, 512
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  %81 = load i32, i32* @mpu_port, align 4
  %82 = call i32* @request_region(i32 %81, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %84 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %83, i32 0, i32 9
  store i32* %82, i32** %84, align 8
  %85 = icmp ne i32* %82, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i8, i8* @VIA_FUNC_MIDI_PNP, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %3, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %3, align 1
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i8, i8* @VIA_FUNC_ENABLE_MIDI, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %3, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %3, align 1
  br label %122

103:                                              ; preds = %80, %77
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i8, i8* @VIA_FUNC_MIDI_PNP, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, -1
  %110 = load i8, i8* %3, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, %109
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %3, align 1
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i8, i8* @VIA_FUNC_ENABLE_MIDI, align 1
  %116 = zext i8 %115 to i32
  %117 = xor i32 %116, -1
  %118 = load i8, i8* %3, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, %117
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %3, align 1
  store i32 0, i32* @mpu_port, align 4
  br label %122

122:                                              ; preds = %114, %96
  %123 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %124 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @VIA_FUNC_ENABLE, align 4
  %127 = load i8, i8* %3, align 1
  %128 = call i32 @pci_write_config_byte(i32 %125, i32 %126, i8 zeroext %127)
  %129 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %130 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @VIA_PNP_CONTROL, align 4
  %133 = load i8, i8* %4, align 1
  %134 = call i32 @pci_write_config_byte(i32 %131, i32 %132, i8 zeroext %133)
  %135 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %136 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %135, i32 0, i32 9
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %182

139:                                              ; preds = %122
  %140 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %141 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %140, i32 0, i32 7
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* @MPU401_HW_VIA686A, align 4
  %144 = load i32, i32* @mpu_port, align 4
  %145 = load i32, i32* @MPU401_INFO_INTEGRATED, align 4
  %146 = load i32, i32* @MPU401_INFO_IRQ_HOOK, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %149 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %148, i32 0, i32 8
  %150 = call i64 @snd_mpu401_uart_new(%struct.TYPE_2__* %142, i32 0, i32 %143, i32 %144, i32 %147, i32 -1, i32* %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %139
  %153 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %154 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %153, i32 0, i32 7
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @mpu_port, align 4
  %159 = call i32 @dev_warn(i32 %157, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load i8, i8* @VIA_FUNC_ENABLE_MIDI, align 1
  %161 = zext i8 %160 to i32
  %162 = xor i32 %161, -1
  %163 = load i8, i8* %3, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, %162
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %3, align 1
  br label %175

167:                                              ; preds = %139
  %168 = load i8, i8* @VIA_FUNC_MIDI_IRQMASK, align 1
  %169 = zext i8 %168 to i32
  %170 = xor i32 %169, -1
  %171 = load i8, i8* %3, align 1
  %172 = zext i8 %171 to i32
  %173 = and i32 %172, %170
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %3, align 1
  br label %175

175:                                              ; preds = %167, %152
  %176 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %177 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @VIA_FUNC_ENABLE, align 4
  %180 = load i8, i8* %3, align 1
  %181 = call i32 @pci_write_config_byte(i32 %178, i32 %179, i8 zeroext %180)
  br label %182

182:                                              ; preds = %175, %122
  %183 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %184 = call i32 @snd_via686_create_gameport(%struct.via82xx* %183, i8* %3)
  ret i32 0
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32* @request_region(i32, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i8 zeroext) #1

declare dso_local i64 @snd_mpu401_uart_new(%struct.TYPE_2__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_via686_create_gameport(%struct.via82xx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
