; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_azf3328 = type { %struct.snd_timer*, %struct.TYPE_3__* }
%struct.snd_timer = type { %struct.TYPE_4__, %struct.snd_azf3328*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_timer_id = type { i32, i64, i32, i32, i32 }

@SNDRV_TIMER_CLASS_CARD = common dso_local global i32 0, align 4
@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@seqtimer_scaling = common dso_local global i32 0, align 4
@snd_azf3328_timer_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"AZF3328\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"AZF3328 timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_azf3328*, i32)* @snd_azf3328_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_timer(%struct.snd_azf3328* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_azf3328*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_timer*, align 8
  %6 = alloca %struct.snd_timer_id, align 8
  %7 = alloca i32, align 4
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.snd_timer* null, %struct.snd_timer** %5, align 8
  %8 = load i32, i32* @SNDRV_TIMER_CLASS_CARD, align 4
  %9 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %11 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %13 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %6, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @seqtimer_scaling, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snd_azf3328_timer_hw, i32 0, i32 1), align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snd_azf3328_timer_hw, i32 0, i32 1), align 4
  %24 = load i32, i32* @seqtimer_scaling, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snd_azf3328_timer_hw, i32 0, i32 0), align 4
  %26 = sdiv i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snd_azf3328_timer_hw, i32 0, i32 0), align 4
  %27 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %28 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @snd_timer_new(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %6, %struct.snd_timer** %5)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %36 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %40 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %41 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %40, i32 0, i32 1
  store %struct.snd_azf3328* %39, %struct.snd_azf3328** %41, align 8
  %42 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %43 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %42, i32 0, i32 0
  %44 = bitcast %struct.TYPE_4__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 bitcast (%struct.TYPE_4__* @snd_azf3328_timer_hw to i8*), i64 8, i1 false)
  %45 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %46 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %47 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %46, i32 0, i32 0
  store %struct.snd_timer* %45, %struct.snd_timer** %47, align 8
  %48 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %49 = call i32 @snd_azf3328_timer_stop(%struct.snd_timer* %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %34, %33
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @snd_timer_new(%struct.TYPE_3__*, i8*, %struct.snd_timer_id*, %struct.snd_timer**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_azf3328_timer_stop(%struct.snd_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
