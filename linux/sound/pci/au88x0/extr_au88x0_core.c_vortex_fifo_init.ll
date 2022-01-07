; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@VORTEX_FIFO_ADBCTRL = common dso_local global i32 0, align 4
@NR_ADB = common dso_local global i32 0, align 4
@FIFO_U0 = common dso_local global i32 0, align 4
@FIFO_U1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad adb fifo reset!\0A\00", align 1
@FIFO_SIZE = common dso_local global i32 0, align 4
@VORTEX_FIFO_WTCTRL = common dso_local global i32 0, align 4
@NR_WT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bad wt fifo reset (0x%08x, 0x%08x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @vortex_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_fifo_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load i32, i32* @VORTEX_FIFO_ADBCTRL, align 4
  %6 = load i32, i32* @NR_ADB, align 4
  %7 = sub nsw i32 %6, 1
  %8 = mul nsw i32 %7, 4
  %9 = add nsw i32 %5, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @NR_ADB, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @FIFO_U0, align 4
  %21 = load i32, i32* @FIFO_U1, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @hwwrite(i32 %18, i32 %19, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @hwread(i32 %26, i32 %27)
  %29 = load i32, i32* @FIFO_U0, align 4
  %30 = load i32, i32* @FIFO_U1, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %15
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %15
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @FIFO_SIZE, align 4
  %44 = call i32 @vortex_fifo_clearadbdata(%struct.TYPE_7__* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %3, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* @VORTEX_FIFO_WTCTRL, align 4
  %52 = load i32, i32* @NR_WT, align 4
  %53 = sub nsw i32 %52, 1
  %54 = mul nsw i32 %53, 4
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @NR_WT, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %95, %50
  %59 = load i32, i32* %3, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FIFO_U0, align 4
  %67 = call i32 @hwwrite(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @hwread(i32 %70, i32 %71)
  %73 = load i32, i32* @FIFO_U0, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %61
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @hwread(i32 %84, i32 %85)
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %75, %61
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @FIFO_SIZE, align 4
  %92 = call i32 @vortex_fifo_clearwtdata(%struct.TYPE_7__* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %3, align 4
  br label %58

98:                                               ; preds = %58
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @hwwrite(i32 %101, i32 94216, i32 97)
  ret void
}

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @vortex_fifo_clearadbdata(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @vortex_fifo_clearwtdata(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
