; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_4d_nx_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_4d_nx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@NX_ACR0_AC97_COM_STAT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AC'97 codec ready error [0x%x]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NX_SB_IRQ_DISABLE = common dso_local global i32 0, align 4
@T4D_MISCINT = common dso_local global i64 0, align 8
@NX_TLBC = common dso_local global i64 0, align 8
@NX_SPCSTATUS = common dso_local global i64 0, align 8
@NX_SPCTRL_SPCSO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_4d_nx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_4d_nx_init(%struct.snd_trident* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  %7 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %8 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %7, i32 0, i32 5
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_write_config_dword(%struct.pci_dev* %10, i32 64, i32 0)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_write_config_byte(%struct.pci_dev* %12, i32 68, i32 0)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_write_config_byte(%struct.pci_dev* %14, i32 69, i32 0)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_write_config_byte(%struct.pci_dev* %16, i32 70, i32 1)
  %18 = call i32 @udelay(i32 100)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_write_config_byte(%struct.pci_dev* %19, i32 70, i32 0)
  %21 = call i32 @udelay(i32 100)
  %22 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %23 = load i64, i64* @NX_ACR0_AC97_COM_STAT, align 8
  %24 = call i32 @TRID_REG(%struct.snd_trident* %22, i64 %23)
  %25 = call i32 @outl(i32 1, i32 %24)
  %26 = call i32 @udelay(i32 100)
  %27 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %28 = load i64, i64* @NX_ACR0_AC97_COM_STAT, align 8
  %29 = call i32 @TRID_REG(%struct.snd_trident* %27, i64 %28)
  %30 = call i32 @outl(i32 0, i32 %29)
  %31 = load i32, i32* @jiffies, align 4
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %32, 3
  %34 = sdiv i32 %33, 4
  %35 = add nsw i32 %31, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %49, %1
  %39 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %40 = load i64, i64* @NX_ACR0_AC97_COM_STAT, align 8
  %41 = call i32 @TRID_REG(%struct.snd_trident* %39, i64 %40)
  %42 = call i32 @inl(i32 %41)
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %67

46:                                               ; preds = %38
  %47 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %48 = call i32 @do_delay(%struct.snd_trident* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @jiffies, align 4
  %52 = call i64 @time_after_eq(i64 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %38, label %54

54:                                               ; preds = %49
  %55 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %56 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %61 = load i64, i64* @NX_ACR0_AC97_COM_STAT, align 8
  %62 = call i32 @TRID_REG(%struct.snd_trident* %60, i64 %61)
  %63 = call i32 @inl(i32 %62)
  %64 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %122

67:                                               ; preds = %45
  %68 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %69 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %68, i32 0, i32 0
  store i32 2, i32* %69, align 8
  %70 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %71 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %74 = load i64, i64* @NX_ACR0_AC97_COM_STAT, align 8
  %75 = call i32 @TRID_REG(%struct.snd_trident* %73, i64 %74)
  %76 = call i32 @outl(i32 %72, i32 %75)
  %77 = load i32, i32* @NX_SB_IRQ_DISABLE, align 4
  %78 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %79 = load i64, i64* @T4D_MISCINT, align 8
  %80 = call i32 @TRID_REG(%struct.snd_trident* %78, i64 %79)
  %81 = call i32 @outl(i32 %77, i32 %80)
  %82 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %83 = call i32 @snd_trident_stop_all_voices(%struct.snd_trident* %82)
  %84 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %85 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %67
  %90 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %91 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %98 = load i64, i64* @NX_TLBC, align 8
  %99 = call i32 @TRID_REG(%struct.snd_trident* %97, i64 %98)
  %100 = call i32 @outl(i32 %96, i32 %99)
  br label %106

101:                                              ; preds = %67
  %102 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %103 = load i64, i64* @NX_TLBC, align 8
  %104 = call i32 @TRID_REG(%struct.snd_trident* %102, i64 %103)
  %105 = call i32 @outl(i32 0, i32 %104)
  br label %106

106:                                              ; preds = %101, %89
  %107 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %108 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %111 = load i64, i64* @NX_SPCSTATUS, align 8
  %112 = call i32 @TRID_REG(%struct.snd_trident* %110, i64 %111)
  %113 = call i32 @outl(i32 %109, i32 %112)
  %114 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %115 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %118 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %119 = add nsw i64 %118, 3
  %120 = call i32 @TRID_REG(%struct.snd_trident* %117, i64 %119)
  %121 = call i32 @outb(i32 %116, i32 %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %106, %54
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @do_delay(%struct.snd_trident*) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_trident_stop_all_voices(%struct.snd_trident*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
