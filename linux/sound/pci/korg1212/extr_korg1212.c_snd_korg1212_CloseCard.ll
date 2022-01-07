; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_CloseCard.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_CloseCard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"K1212_DEBUG: CloseCard [%s] %d\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@K1212_STATE_SETUP = common dso_local global i64 0, align 8
@K1212_DB_SelectPlayMode = common dso_local global i32 0, align 4
@K1212_MODE_StopPlay = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"K1212_DEBUG: CloseCard - RC = %d [%s]\0A\00", align 1
@K1212_CMDRET_Success = common dso_local global i32 0, align 4
@K1212_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*)* @snd_korg1212_CloseCard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_CloseCard(%struct.snd_korg1212* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_korg1212*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %3, align 8
  %5 = load i32*, i32** @stateName, align 8
  %6 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %7 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %12 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %16 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %19 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %25 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  store i32 0, i32* %2, align 4
  br label %84

27:                                               ; preds = %1
  %28 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %29 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @K1212_STATE_SETUP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %35 = load i32, i32* @K1212_DB_SelectPlayMode, align 4
  %36 = load i32, i32* @K1212_MODE_StopPlay, align 4
  %37 = call i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212* %34, i32 %35, i32 %36, i32 0, i32 0, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** @stateName, align 8
  %43 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %44 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %40, %33
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @K1212_CMDRET_Success, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %55 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  store i32 0, i32* %2, align 4
  br label %84

57:                                               ; preds = %49
  br label %68

58:                                               ; preds = %27
  %59 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %60 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @K1212_STATE_SETUP, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %66 = call i32 @snd_korg1212_SendStopAndWait(%struct.snd_korg1212* %65)
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %57
  %69 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %70 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @K1212_STATE_READY, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %76 = call i32 @snd_korg1212_TurnOnIdleMonitor(%struct.snd_korg1212* %75)
  %77 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %78 = load i64, i64* @K1212_STATE_READY, align 8
  %79 = call i32 @snd_korg1212_setCardState(%struct.snd_korg1212* %77, i64 %78)
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %82 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %53, %23
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_korg1212_SendStopAndWait(%struct.snd_korg1212*) #1

declare dso_local i32 @snd_korg1212_TurnOnIdleMonitor(%struct.snd_korg1212*) #1

declare dso_local i32 @snd_korg1212_setCardState(%struct.snd_korg1212*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
