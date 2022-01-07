; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALI_SCR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ALI_INTERRUPTSR = common dso_local global i32 0, align 4
@ALI_INT_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AC'97 reset failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ALI_RTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*, i32)* @snd_intel8x0_ali_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_ali_chip_init(%struct.intel8x0* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %9 = load i32, i32* @ALI_SCR, align 4
  %10 = call i32 @ICHREG(i32 %9)
  %11 = call i32 @igetdword(%struct.intel8x0* %8, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, 2
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 2147483647
  store i32 %23, i32* %6, align 4
  %24 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %25 = load i32, i32* @ALI_SCR, align 4
  %26 = call i32 @ICHREG(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @iputdword(%struct.intel8x0* %24, i32 %26, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %45, %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @HZ, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %36 = load i32, i32* @ALI_INTERRUPTSR, align 4
  %37 = call i32 @ICHREG(i32 %36)
  %38 = call i32 @igetdword(%struct.intel8x0* %35, i32 %37)
  %39 = load i32, i32* @ALI_INT_GPIO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %61

43:                                               ; preds = %34
  %44 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %50 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %90

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %42
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %84, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @HZ, align 4
  %65 = sdiv i32 %64, 2
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %69 = load i32, i32* @ALI_RTSR, align 4
  %70 = call i32 @ICHREG(i32 %69)
  %71 = call i32 @igetdword(%struct.intel8x0* %68, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %87

76:                                               ; preds = %67
  %77 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %78 = load i32, i32* @ALI_RTSR, align 4
  %79 = call i32 @ICHREG(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, 128
  %82 = call i32 @iputdword(%struct.intel8x0* %77, i32 %79, i32 %81)
  %83 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %62

87:                                               ; preds = %75, %62
  %88 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %89 = call i32 @do_ali_reset(%struct.intel8x0* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %57
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @do_ali_reset(%struct.intel8x0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
