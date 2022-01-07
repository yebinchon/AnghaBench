; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_timer.c_snd_gf1_timers_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_timer.c_snd_gf1_timers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { %struct.snd_timer*, %struct.snd_timer*, i32, i32 }
%struct.snd_timer = type { i32, i32, %struct.snd_gus_card*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_timer_id = type { i32, i64, i32, i32, i32 }

@snd_gf1_interrupt_timer1 = common dso_local global i32 0, align 4
@snd_gf1_interrupt_timer2 = common dso_local global i32 0, align 4
@SNDRV_TIMER_CLASS_CARD = common dso_local global i32 0, align 4
@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"GF1 timer\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GF1 timer #1\00", align 1
@snd_gf1_timer1_free = common dso_local global i32 0, align 4
@snd_gf1_timer1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"GF1 timer #2\00", align 1
@snd_gf1_timer2_free = common dso_local global i32 0, align 4
@snd_gf1_timer2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_timers_init(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca %struct.snd_timer*, align 8
  %4 = alloca %struct.snd_timer_id, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %5 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %6 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.snd_timer*, %struct.snd_timer** %7, align 8
  %9 = icmp ne %struct.snd_timer* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %12 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.snd_timer*, %struct.snd_timer** %13, align 8
  %15 = icmp ne %struct.snd_timer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %92

17:                                               ; preds = %10
  %18 = load i32, i32* @snd_gf1_interrupt_timer1, align 4
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %20 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @snd_gf1_interrupt_timer2, align 4
  %23 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %24 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @SNDRV_TIMER_CLASS_CARD, align 4
  %27 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %4, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %29 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %4, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %31 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %4, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %37 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %4, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %42 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i64 @snd_timer_new(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %4, %struct.snd_timer** %3)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %17
  %47 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %48 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %52 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %53 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %52, i32 0, i32 2
  store %struct.snd_gus_card* %51, %struct.snd_gus_card** %53, align 8
  %54 = load i32, i32* @snd_gf1_timer1_free, align 4
  %55 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %56 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @snd_gf1_timer1, align 4
  %58 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %59 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %46, %17
  %61 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %62 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %63 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store %struct.snd_timer* %61, %struct.snd_timer** %64, align 8
  %65 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %69 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i64 @snd_timer_new(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %4, %struct.snd_timer** %3)
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %60
  %74 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %75 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %79 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %80 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %79, i32 0, i32 2
  store %struct.snd_gus_card* %78, %struct.snd_gus_card** %80, align 8
  %81 = load i32, i32* @snd_gf1_timer2_free, align 4
  %82 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %83 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @snd_gf1_timer2, align 4
  %85 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %86 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %73, %60
  %88 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %89 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %90 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store %struct.snd_timer* %88, %struct.snd_timer** %91, align 8
  br label %92

92:                                               ; preds = %87, %16
  ret void
}

declare dso_local i64 @snd_timer_new(%struct.TYPE_4__*, i8*, %struct.snd_timer_id*, %struct.snd_timer**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
