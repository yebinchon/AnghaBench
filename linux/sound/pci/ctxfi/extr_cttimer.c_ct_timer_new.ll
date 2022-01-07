; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_timer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_timer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer = type { i32*, %struct.ct_atc*, i32, i32, i32, i32 }
%struct.ct_atc = type { %struct.TYPE_2__*, %struct.hw* }
%struct.TYPE_2__ = type { i32 }
%struct.hw = type { i32, %struct.ct_timer*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@use_system_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Use xfi-native timer\0A\00", align 1
@ct_xfitimer_ops = common dso_local global i32 0, align 4
@ct_timer_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Use system timer\0A\00", align 1
@ct_systimer_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ct_timer* @ct_timer_new(%struct.ct_atc* %0) #0 {
  %2 = alloca %struct.ct_timer*, align 8
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca %struct.ct_timer*, align 8
  %5 = alloca %struct.hw*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ct_timer* @kzalloc(i32 32, i32 %6)
  store %struct.ct_timer* %7, %struct.ct_timer** %4, align 8
  %8 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %9 = icmp ne %struct.ct_timer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ct_timer* null, %struct.ct_timer** %2, align 8
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %13 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %16 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %15, i32 0, i32 4
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %19 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %22 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %25 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %26 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %25, i32 0, i32 1
  store %struct.ct_atc* %24, %struct.ct_atc** %26, align 8
  %27 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %28 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %27, i32 0, i32 1
  %29 = load %struct.hw*, %struct.hw** %28, align 8
  store %struct.hw* %29, %struct.hw** %5, align 8
  %30 = load i32, i32* @use_system_timer, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %11
  %33 = load %struct.hw*, %struct.hw** %5, align 8
  %34 = getelementptr inbounds %struct.hw, %struct.hw* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %45 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %44, i32 0, i32 0
  store i32* @ct_xfitimer_ops, i32** %45, align 8
  %46 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %47 = load %struct.hw*, %struct.hw** %5, align 8
  %48 = getelementptr inbounds %struct.hw, %struct.hw* %47, i32 0, i32 1
  store %struct.ct_timer* %46, %struct.ct_timer** %48, align 8
  %49 = load i32, i32* @ct_timer_interrupt, align 4
  %50 = load %struct.hw*, %struct.hw** %5, align 8
  %51 = getelementptr inbounds %struct.hw, %struct.hw* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %61

52:                                               ; preds = %32, %11
  %53 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %54 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_info(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  %60 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %59, i32 0, i32 0
  store i32* @ct_systimer_ops, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %37
  %62 = load %struct.ct_timer*, %struct.ct_timer** %4, align 8
  store %struct.ct_timer* %62, %struct.ct_timer** %2, align 8
  br label %63

63:                                               ; preds = %61, %10
  %64 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  ret %struct.ct_timer* %64
}

declare dso_local %struct.ct_timer* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
