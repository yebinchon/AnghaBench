; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { %struct.snd_timer*, %struct.TYPE_2__* }
%struct.snd_timer = type { i32, %struct.snd_ad1816a*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_timer_id = type { i32, i64, i32, i32, i32 }

@SNDRV_TIMER_CLASS_CARD = common dso_local global i32 0, align 4
@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"AD1816A\00", align 1
@snd_ad1816a_timer_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ad1816a_timer(%struct.snd_ad1816a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ad1816a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_timer*, align 8
  %7 = alloca %struct.snd_timer_id, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @SNDRV_TIMER_CLASS_CARD, align 4
  %10 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %7, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %12 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %7, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @snd_timer_new(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %7, %struct.snd_timer** %6)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %2
  %30 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %31 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %34 = call i32 @snd_ad1816a_chip_id(%struct.snd_ad1816a* %33)
  %35 = call i32 @strcpy(i32 %32, i32 %34)
  %36 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %37 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %38 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %37, i32 0, i32 1
  store %struct.snd_ad1816a* %36, %struct.snd_ad1816a** %38, align 8
  %39 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %40 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %40, i32 0, i32 0
  store %struct.snd_timer* %39, %struct.snd_timer** %41, align 8
  %42 = load i32, i32* @snd_ad1816a_timer_table, align 4
  %43 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %44 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %29, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @snd_timer_new(%struct.TYPE_2__*, i8*, %struct.snd_timer_id*, %struct.snd_timer**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_ad1816a_chip_id(%struct.snd_ad1816a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
