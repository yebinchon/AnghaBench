; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_proc_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_proc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BA1_FRMT = common dso_local global i32 0, align 4
@BA1_SPCR = common dso_local global i32 0, align 4
@SPCR_RUN = common dso_local global i32 0, align 4
@SPCR_RUNFR = common dso_local global i32 0, align 4
@SPCR_DRQEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SPCR_RUNFR never reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @snd_cs46xx_proc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_proc_start(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %4 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %5 = load i32, i32* @BA1_FRMT, align 4
  %6 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %4, i32 %5, i32 2783)
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %8 = load i32, i32* @BA1_SPCR, align 4
  %9 = load i32, i32* @SPCR_RUN, align 4
  %10 = load i32, i32* @SPCR_RUNFR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SPCR_DRQEN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %7, i32 %8, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 25
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = call i32 @udelay(i32 50)
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %21 = load i32, i32* @BA1_SPCR, align 4
  %22 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %20, i32 %21)
  %23 = load i32, i32* @SPCR_RUNFR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %15

31:                                               ; preds = %26, %15
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %33 = load i32, i32* @BA1_SPCR, align 4
  %34 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %32, i32 %33)
  %35 = load i32, i32* @SPCR_RUNFR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %40 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
