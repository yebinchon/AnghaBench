; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__*, i8*** }
%struct.TYPE_2__ = type { i32 }

@OXYGEN_AC97_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_AC97_REG_DIR_WRITE = common dso_local global i32 0, align 4
@OXYGEN_AC97_REG_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_AC97_REGS = common dso_local global i32 0, align 4
@OXYGEN_AC97_INT_WRITE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AC'97 write timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oxygen_write_ac97(%struct.oxygen* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @OXYGEN_AC97_REG_ADDR_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %11, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @OXYGEN_AC97_REG_DIR_WRITE, align 4
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @OXYGEN_AC97_REG_CODEC_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 5, i32* %9, align 4
  br label %27

27:                                               ; preds = %58, %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = call i32 @udelay(i32 5)
  %32 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %33 = load i32, i32* @OXYGEN_AC97_REGS, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @oxygen_write32(%struct.oxygen* %32, i32 %33, i32 %34)
  %36 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %37 = load i32, i32* @OXYGEN_AC97_INT_WRITE_DONE, align 4
  %38 = call i64 @oxygen_ac97_wait(%struct.oxygen* %36, i32 %37)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = icmp uge i32 %42, 2
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %47 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %46, i32 0, i32 1
  %48 = load i8***, i8**** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8**, i8*** %48, i64 %50
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = udiv i32 %53, 2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  store i8* %45, i8** %56, align 8
  br label %68

57:                                               ; preds = %40, %30
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %9, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %63 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %61, %44
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @oxygen_write32(%struct.oxygen*, i32, i32) #1

declare dso_local i64 @oxygen_ac97_wait(%struct.oxygen*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
