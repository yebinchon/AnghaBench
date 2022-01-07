; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_riptide = type { %struct.TYPE_2__*, i32, i32, i32, %struct.cmdif* }
%struct.TYPE_2__ = type { i32 }
%struct.cmdif = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_riptide_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_riptide*, align 8
  %6 = alloca %struct.cmdif*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_riptide*
  store %struct.snd_riptide* %8, %struct.snd_riptide** %5, align 8
  %9 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %10 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %9, i32 0, i32 4
  %11 = load %struct.cmdif*, %struct.cmdif** %10, align 8
  store %struct.cmdif* %11, %struct.cmdif** %6, align 8
  %12 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %13 = icmp ne %struct.cmdif* %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %2
  %15 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %16 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %20 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_EOBIRQ(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %14
  %25 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %26 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_EOSIRQ(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %32 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_EOCIRQ(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30, %24, %14
  %37 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %38 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %42 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %41, i32 0, i32 2
  %43 = call i32 @tasklet_schedule(i32* %42)
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %46 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %51 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_MPUIRQ(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %57 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %62 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snd_mpu401_uart_interrupt(i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %55, %49, %44
  %68 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %69 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SET_AIACK(i32 %70)
  br label %72

72:                                               ; preds = %67, %2
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local i64 @IS_EOBIRQ(i32) #1

declare dso_local i64 @IS_EOSIRQ(i32) #1

declare dso_local i64 @IS_EOCIRQ(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @IS_MPUIRQ(i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @SET_AIACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
