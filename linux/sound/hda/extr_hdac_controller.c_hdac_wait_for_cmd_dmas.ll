; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_hdac_wait_for_cmd_dmas.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_hdac_wait_for_cmd_dmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@RIRBCTL = common dso_local global i32 0, align 4
@AZX_RBCTL_DMA_EN = common dso_local global i32 0, align 4
@CORBCTL = common dso_local global i32 0, align 4
@AZX_CORBCTL_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_bus*)* @hdac_wait_for_cmd_dmas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_wait_for_cmd_dmas(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  %3 = alloca i64, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = call i64 @msecs_to_jiffies(i32 100)
  %6 = add i64 %4, %5
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %9 = load i32, i32* @RIRBCTL, align 4
  %10 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %8, i32 %9)
  %11 = load i32, i32* @AZX_RBCTL_DMA_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @time_before(i64 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %7
  %20 = phi i1 [ false, %7 ], [ %18, %14 ]
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @udelay(i32 10)
  br label %7

23:                                               ; preds = %19
  %24 = load i64, i64* @jiffies, align 8
  %25 = call i64 @msecs_to_jiffies(i32 100)
  %26 = add i64 %24, %25
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %41, %23
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %29 = load i32, i32* @CORBCTL, align 4
  %30 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %28, i32 %29)
  %31 = load i32, i32* @AZX_CORBCTL_RUN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @time_before(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i1 [ false, %27 ], [ %38, %34 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call i32 @udelay(i32 10)
  br label %27

43:                                               ; preds = %39
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_hdac_chip_readb(%struct.hdac_bus*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
