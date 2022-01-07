; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_codec_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_codec_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@YDSXGR_SECSTATUSADR = common dso_local global i32 0, align 4
@YDSXGR_PRISTATUSADR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"codec_ready: codec %i is not ready [0x%x]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*, i32)* @snd_ymfpci_codec_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_codec_ready(%struct.snd_ymfpci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @YDSXGR_SECSTATUSADR, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @YDSXGR_PRISTATUSADR, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @msecs_to_jiffies(i32 750)
  %18 = add i64 %16, %17
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %28, %14
  %20 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %20, i32 %21)
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %46

26:                                               ; preds = %19
  %27 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @time_before(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %19, label %33

33:                                               ; preds = %28
  %34 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %40, i32 %41)
  %43 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %33, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
