; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_4d_dx_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_4d_dx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@DX_ACR2_AC97_COM_STAT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"AC'97 codec ready error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_4d_dx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_4d_dx_init(%struct.snd_trident* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  %6 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %7 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_write_config_dword(%struct.pci_dev* %9, i32 64, i32 0)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_write_config_byte(%struct.pci_dev* %11, i32 68, i32 0)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @pci_write_config_byte(%struct.pci_dev* %13, i32 69, i32 0)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pci_write_config_byte(%struct.pci_dev* %15, i32 70, i32 4)
  %17 = call i32 @udelay(i32 100)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %18, i32 70, i32 0)
  %20 = call i32 @udelay(i32 100)
  %21 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %22 = load i32, i32* @DX_ACR2_AC97_COM_STAT, align 4
  %23 = call i32 @TRID_REG(%struct.snd_trident* %21, i32 %22)
  %24 = call i32 @outl(i32 1, i32 %23)
  %25 = call i32 @udelay(i32 100)
  %26 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %27 = load i32, i32* @DX_ACR2_AC97_COM_STAT, align 4
  %28 = call i32 @TRID_REG(%struct.snd_trident* %26, i32 %27)
  %29 = call i32 @outl(i32 0, i32 %28)
  %30 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %31 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %30, i32 0, i32 0
  store i32 74, i32* %31, align 8
  %32 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %33 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %36 = load i32, i32* @DX_ACR2_AC97_COM_STAT, align 4
  %37 = call i32 @TRID_REG(%struct.snd_trident* %35, i32 %36)
  %38 = call i32 @outl(i32 %34, i32 %37)
  %39 = load i32, i32* @jiffies, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sdiv i32 %41, 4
  %43 = add nsw i32 %39, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %57, %1
  %47 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %48 = load i32, i32* @DX_ACR2_AC97_COM_STAT, align 4
  %49 = call i32 @TRID_REG(%struct.snd_trident* %47, i32 %48)
  %50 = call i32 @inl(i32 %49)
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %71

54:                                               ; preds = %46
  %55 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %56 = call i32 @do_delay(%struct.snd_trident* %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* @jiffies, align 4
  %60 = call i64 @time_after_eq(i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %46, label %62

62:                                               ; preds = %57
  %63 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %64 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %53
  %72 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %73 = call i32 @snd_trident_stop_all_voices(%struct.snd_trident* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %62
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @do_delay(%struct.snd_trident*) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_trident_stop_all_voices(%struct.snd_trident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
