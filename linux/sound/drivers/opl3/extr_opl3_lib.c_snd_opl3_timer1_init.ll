; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer1_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { %struct.snd_timer*, %struct.TYPE_2__* }
%struct.snd_timer = type { i32, %struct.snd_opl3*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_timer_id = type { i32, i64, i32, i32, i32 }

@SNDRV_TIMER_CLASS_CARD = common dso_local global i32 0, align 4
@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AdLib timer #1\00", align 1
@snd_opl3_timer1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, i32)* @snd_opl3_timer1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_timer1_init(%struct.snd_opl3* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_timer*, align 8
  %6 = alloca %struct.snd_timer_id, align 8
  %7 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.snd_timer* null, %struct.snd_timer** %5, align 8
  %8 = load i32, i32* @SNDRV_TIMER_CLASS_CARD, align 4
  %9 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %11 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %13 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %22 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @snd_timer_new(%struct.TYPE_2__* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %6, %struct.snd_timer** %5)
  store i32 %24, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %28 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %32 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %33 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %32, i32 0, i32 1
  store %struct.snd_opl3* %31, %struct.snd_opl3** %33, align 8
  %34 = load i32, i32* @snd_opl3_timer1, align 4
  %35 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %36 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %39 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %40 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %39, i32 0, i32 0
  store %struct.snd_timer* %38, %struct.snd_timer** %40, align 8
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @snd_timer_new(%struct.TYPE_2__*, i8*, %struct.snd_timer_id*, %struct.snd_timer**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
