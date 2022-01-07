; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OXYGEN_EEPROM_DATA = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_DIR_WRITE = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_STATUS = common dso_local global i32 0, align 4
@OXYGEN_EEPROM_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EEPROM write timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oxygen_write_eeprom(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = load i32, i32* @OXYGEN_EEPROM_DATA, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @oxygen_write16(%struct.oxygen* %8, i32 %9, i32 %10)
  %12 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %13 = load i32, i32* @OXYGEN_EEPROM_CONTROL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @OXYGEN_EEPROM_DIR_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @oxygen_write8(%struct.oxygen* %12, i32 %13, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %31, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 10
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = call i32 @msleep(i32 1)
  %23 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %24 = load i32, i32* @OXYGEN_EEPROM_STATUS, align 4
  %25 = call i32 @oxygen_read8(%struct.oxygen* %23, i32 %24)
  %26 = load i32, i32* @OXYGEN_EEPROM_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %41

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %36 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
