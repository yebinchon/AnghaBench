; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_StopPlay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_StopPlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"K1212_DEBUG: StopPlay [%s] %d\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@K1212_STATE_ERRORSTOP = common dso_local global i64 0, align 8
@K1212_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*)* @snd_korg1212_StopPlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_StopPlay(%struct.snd_korg1212* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_korg1212*, align 8
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %3, align 8
  %4 = load i32*, i32** @stateName, align 8
  %5 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %6 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %11 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12)
  %14 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %15 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %22 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %24 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @K1212_STATE_ERRORSTOP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %30 = call i32 @snd_korg1212_SendStop(%struct.snd_korg1212* %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %33 = load i32, i32* @K1212_STATE_OPEN, align 4
  %34 = call i32 @snd_korg1212_setCardState(%struct.snd_korg1212* %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32, i64) #1

declare dso_local i32 @snd_korg1212_SendStop(%struct.snd_korg1212*) #1

declare dso_local i32 @snd_korg1212_setCardState(%struct.snd_korg1212*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
