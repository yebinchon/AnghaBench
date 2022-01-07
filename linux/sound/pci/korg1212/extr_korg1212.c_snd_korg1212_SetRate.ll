; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_SetRate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_SetRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i32, i32, i64 }

@snd_korg1212_SetRate.s44 = internal global [3 x i32] [i32 133, i32 129, i32 131], align 4
@snd_korg1212_SetRate.s48 = internal global [3 x i32] [i32 132, i32 128, i32 130], align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTERCOMMAND_DELAY = common dso_local global i32 0, align 4
@K1212_DB_SetClockSourceRate = common dso_local global i32 0, align 4
@ClockSourceSelector = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"K1212_DEBUG: Set Clock Source Selector - RC = %d [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*, i32)* @snd_korg1212_SetRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_SetRate(%struct.snd_korg1212* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_korg1212*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %9 = call i32 @snd_korg1212_use_is_exclusive(%struct.snd_korg1212* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %28 [
    i32 44100, label %16
    i32 48000, label %22
  ]

16:                                               ; preds = %14
  %17 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %18 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* @snd_korg1212_SetRate.s44, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %24 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* @snd_korg1212_SetRate.s48, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %14
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %22, %16
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %34 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %37 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @INTERCOMMAND_DELAY, align 4
  %39 = call i32 @udelay(i32 %38)
  %40 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %41 = load i32, i32* @K1212_DB_SetClockSourceRate, align 4
  %42 = load i32*, i32** @ClockSourceSelector, align 8
  %43 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %44 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212* %40, i32 %41, i32 %48, i32 0, i32 0, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** @stateName, align 8
  %55 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %56 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %52, %31
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %28, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @snd_korg1212_use_is_exclusive(%struct.snd_korg1212*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
