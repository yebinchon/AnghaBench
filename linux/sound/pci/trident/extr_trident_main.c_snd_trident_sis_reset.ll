; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_sis_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_sis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SI_AC97_GPIO = common dso_local global i32 0, align 4
@PCMOUT = common dso_local global i32 0, align 4
@SURROUT = common dso_local global i32 0, align 4
@CENTEROUT = common dso_local global i32 0, align 4
@LFEOUT = common dso_local global i32 0, align 4
@SECONDARY_ID = common dso_local global i32 0, align 4
@COLD_RESET = common dso_local global i32 0, align 4
@SI_SERIAL_INTF_CTRL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SI_AC97_PRIMARY_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AC'97 codec ready error [0x%x]\0A\00", align 1
@SI_AC97_SECONDARY_READY = common dso_local global i32 0, align 4
@BANK_B_EN = common dso_local global i32 0, align 4
@T4D_LFO_GC_CIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_sis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_sis_reset(%struct.snd_trident* %0) #0 {
  %2 = alloca %struct.snd_trident*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %2, align 8
  %6 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %7 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 2
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %105, %1
  %13 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %14 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_write_config_byte(i32 %15, i32 70, i32 4)
  %17 = call i32 @udelay(i32 100)
  %18 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %19 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_write_config_byte(i32 %20, i32 70, i32 0)
  %22 = call i32 @udelay(i32 100)
  %23 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %24 = load i32, i32* @SI_AC97_GPIO, align 4
  %25 = call i32 @TRID_REG(%struct.snd_trident* %23, i32 %24)
  %26 = call i32 @outb(i32 0, i32 %25)
  %27 = load i32, i32* @PCMOUT, align 4
  %28 = load i32, i32* @SURROUT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CENTEROUT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @LFEOUT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SECONDARY_ID, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @COLD_RESET, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %40 = load i32, i32* @SI_SERIAL_INTF_CTRL, align 4
  %41 = call i32 @TRID_REG(%struct.snd_trident* %39, i32 %40)
  %42 = call i32 @outl(i32 %38, i32 %41)
  %43 = call i32 @udelay(i32 1000)
  %44 = load i32, i32* @COLD_RESET, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %50 = load i32, i32* @SI_SERIAL_INTF_CTRL, align 4
  %51 = call i32 @TRID_REG(%struct.snd_trident* %49, i32 %50)
  %52 = call i32 @outl(i32 %48, i32 %51)
  %53 = call i32 @udelay(i32 2000)
  %54 = load i32, i32* @jiffies, align 4
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %55, 3
  %57 = sdiv i32 %56, 4
  %58 = add nsw i32 %54, %57
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %73, %12
  %62 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %63 = load i32, i32* @SI_SERIAL_INTF_CTRL, align 4
  %64 = call i32 @TRID_REG(%struct.snd_trident* %62, i32 %63)
  %65 = call i32 @inl(i32 %64)
  %66 = load i32, i32* @SI_AC97_PRIMARY_READY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %107

70:                                               ; preds = %61
  %71 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %72 = call i32 @do_delay(%struct.snd_trident* %71)
  br label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %3, align 8
  %75 = load i32, i32* @jiffies, align 4
  %76 = call i64 @time_after_eq(i64 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %61, label %78

78:                                               ; preds = %73
  %79 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %80 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %85 = load i32, i32* @SI_SERIAL_INTF_CTRL, align 4
  %86 = call i32 @TRID_REG(%struct.snd_trident* %84, i32 %85)
  %87 = call i32 @inl(i32 %86)
  %88 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %5, align 4
  %91 = icmp sgt i32 %89, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %78
  %93 = load i32, i32* @jiffies, align 4
  %94 = load i32, i32* @HZ, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %3, align 8
  br label %97

97:                                               ; preds = %100, %92
  %98 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %99 = call i32 @do_delay(%struct.snd_trident* %98)
  br label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %3, align 8
  %102 = load i32, i32* @jiffies, align 4
  %103 = call i64 @time_after_eq(i64 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %97, label %105

105:                                              ; preds = %100
  br label %12

106:                                              ; preds = %78
  br label %107

107:                                              ; preds = %106, %69
  br label %108

108:                                              ; preds = %120, %107
  %109 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %110 = load i32, i32* @SI_SERIAL_INTF_CTRL, align 4
  %111 = call i32 @TRID_REG(%struct.snd_trident* %109, i32 %110)
  %112 = call i32 @inl(i32 %111)
  %113 = load i32, i32* @SI_AC97_SECONDARY_READY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %125

117:                                              ; preds = %108
  %118 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %119 = call i32 @do_delay(%struct.snd_trident* %118)
  br label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %3, align 8
  %122 = load i32, i32* @jiffies, align 4
  %123 = call i64 @time_after_eq(i64 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %108, label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* @BANK_B_EN, align 4
  %127 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %128 = load i32, i32* @T4D_LFO_GC_CIR, align 4
  %129 = call i32 @TRID_REG(%struct.snd_trident* %127, i32 %128)
  %130 = call i32 @outl(i32 %126, i32 %129)
  ret i32 0
}

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @do_delay(%struct.snd_trident*) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
