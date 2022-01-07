; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_CLOCK_STATUS = common dso_local global i64 0, align 8
@CLOCK_STATUS_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*, i32*)* @get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock(%struct.snd_tscm* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tscm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = icmp slt i32 %10, 5
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %15 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %18 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %19 = load i64, i64* @TSCM_OFFSET_CLOCK_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @snd_fw_transaction(i32 %16, i32 %17, i64 %20, i32* %7, i32 4, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %13
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CLOCK_STATUS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %38

36:                                               ; preds = %26
  %37 = call i32 @msleep(i32 50)
  br label %9

38:                                               ; preds = %35, %9
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %39, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
