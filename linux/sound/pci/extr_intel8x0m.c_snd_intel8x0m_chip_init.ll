; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_RESETREGS = common dso_local global i32 0, align 4
@ICH_REG_OFF_BDBAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*, i32)* @snd_intel8x0m_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0m_chip_init(%struct.intel8x0m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0m*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel8x0m* %0, %struct.intel8x0m** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @snd_intel8x0m_ich_chip_init(%struct.intel8x0m* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %16 = call i32 @iagetword(%struct.intel8x0m* %15, i32 0)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %36, %14
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %20 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %25 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %26 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %27 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %25, %33
  %35 = call i32 @iputbyte(%struct.intel8x0m* %24, i64 %34, i32 0)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %17

39:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %43 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %48 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %49 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %50 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %48, %56
  %58 = load i32, i32* @ICH_RESETREGS, align 4
  %59 = call i32 @iputbyte(%struct.intel8x0m* %47, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %40

63:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %67 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %72 = load i64, i64* @ICH_REG_OFF_BDBAR, align 8
  %73 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %74 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %72, %80
  %82 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %83 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @iputdword(%struct.intel8x0m* %71, i64 %81, i32 %89)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %64

94:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @snd_intel8x0m_ich_chip_init(%struct.intel8x0m*, i32) #1

declare dso_local i32 @iagetword(%struct.intel8x0m*, i32) #1

declare dso_local i32 @iputbyte(%struct.intel8x0m*, i64, i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0m*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
