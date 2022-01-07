; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_SetupForPlay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_SetupForPlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"K1212_DEBUG: SetupForPlay [%s] %d\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@K1212_STATE_SETUP = common dso_local global i32 0, align 4
@K1212_DB_SelectPlayMode = common dso_local global i32 0, align 4
@K1212_MODE_SetupPlay = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"K1212_DEBUG: SetupForPlay - RC = %d [%s]\0A\00", align 1
@K1212_CMDRET_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*)* @snd_korg1212_SetupForPlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_SetupForPlay(%struct.snd_korg1212* %0) #0 {
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
  %14 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %16 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %23 = load i32, i32* @K1212_STATE_SETUP, align 4
  %24 = call i32 @snd_korg1212_setCardState(%struct.snd_korg1212* %22, i32 %23)
  %25 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %26 = load i32, i32* @K1212_DB_SelectPlayMode, align 4
  %27 = load i32, i32* @K1212_MODE_SetupPlay, align 4
  %28 = call i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212* %25, i32 %26, i32 %27, i32 0, i32 0, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** @stateName, align 8
  %34 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %35 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %31, %21
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @K1212_CMDRET_Success, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %46

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32, i32) #1

declare dso_local i32 @snd_korg1212_setCardState(%struct.snd_korg1212*, i32) #1

declare dso_local i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
