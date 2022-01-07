; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_poke_via_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_poke_via_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SPIOWRITE_SCB_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dsp_spos: SPIOWriteTask not responding\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 32768
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 36864
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %78

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 65535
  %23 = or i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %25 = load i32, i32* @SPIOWRITE_SCB_ADDR, align 4
  %26 = shl i32 %25, 2
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %24, i32 %26, i32 %27)
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %30 = load i32, i32* @SPIOWRITE_SCB_ADDR, align 4
  %31 = add nsw i32 %30, 1
  %32 = shl i32 %31, 2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %29, i32 %32, i32 %33)
  %35 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %36 = load i32, i32* @SPIOWRITE_SCB_ADDR, align 4
  %37 = add nsw i32 %36, 2
  %38 = shl i32 %37, 2
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %35, i32 %38, i32 %39)
  %41 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %42 = load i32, i32* @SPIOWRITE_SCB_ADDR, align 4
  %43 = add nsw i32 %42, 6
  %44 = shl i32 %43, 2
  %45 = load i32, i32* @SPIOWRITE_SCB_ADDR, align 4
  %46 = shl i32 %45, 16
  %47 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %41, i32 %44, i32 %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %62, %18
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 25
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = call i32 @udelay(i32 125)
  %53 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %54 = load i32, i32* @SPIOWRITE_SCB_ADDR, align 4
  %55 = add nsw i32 %54, 6
  %56 = shl i32 %55, 2
  %57 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %65

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %48

65:                                               ; preds = %60, %48
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 25
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %70 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %68, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
