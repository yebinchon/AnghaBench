; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@OXYGEN_EEPROM_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_DIR_READ = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_STATUS = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_BUSY = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_read_eeprom(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %7 = load i32, i32* @OXYGEN_EEPROM_CONTROL, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @OXYGEN_EEPROM_DIR_READ, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @oxygen_write8(%struct.oxygen* %6, i32 %7, i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %13, 100
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = call i32 @udelay(i32 1)
  %17 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %18 = load i32, i32* @OXYGEN_EEPROM_STATUS, align 4
  %19 = call i32 @oxygen_read8(%struct.oxygen* %17, i32 %18)
  %20 = load i32, i32* @OXYGEN_EEPROM_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %23, %12
  %29 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %30 = load i32, i32* @OXYGEN_EEPROM_DATA, align 4
  %31 = call i32 @oxygen_read16(%struct.oxygen* %29, i32 %30)
  ret i32 %31
}

declare dso_local i32 @oxygen_write8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
