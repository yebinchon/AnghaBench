; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_read_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_read_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@OXYGEN_AC97_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_AC97_REG_DIR_READ = common dso_local global i32 0, align 4
@OXYGEN_AC97_REG_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_AC97_REGS = common dso_local global i32 0, align 4
@OXYGEN_AC97_INT_READ_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AC'97 read timeout on codec %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_read_ac97(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @UINT_MAX, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @OXYGEN_AC97_REG_ADDR_SHIFT, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @OXYGEN_AC97_REG_DIR_READ, align 4
  %17 = load i32, i32* %10, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @OXYGEN_AC97_REG_CODEC_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  store i32 5, i32* %8, align 4
  br label %24

24:                                               ; preds = %52, %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = call i32 @udelay(i32 5)
  %29 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %30 = load i32, i32* @OXYGEN_AC97_REGS, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @oxygen_write32(%struct.oxygen* %29, i32 %30, i32 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %35 = load i32, i32* @OXYGEN_AC97_INT_READ_DONE, align 4
  %36 = call i64 @oxygen_ac97_wait(%struct.oxygen* %34, i32 %35)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %40 = load i32, i32* @OXYGEN_AC97_REGS, align 4
  %41 = call i32 @oxygen_read16(%struct.oxygen* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = xor i32 %49, 65535
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %8, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %57 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %45
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @oxygen_write32(%struct.oxygen*, i32, i32) #1

declare dso_local i64 @oxygen_ac97_wait(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
