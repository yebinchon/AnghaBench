; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_ensure_phase_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_ensure_phase_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }

@GLOBAL_CLOCK_SELECT = common dso_local global i32 0, align 4
@CLOCK_RATE_MASK = common dso_local global i32 0, align 4
@snd_dice_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLOCK_RATE_SHIFT = common dso_local global i32 0, align 4
@NOTIFICATION_TIMEOUT_MS = common dso_local global i32 0, align 4
@GLOBAL_STATUS = common dso_local global i32 0, align 4
@STATUS_SOURCE_LOCKED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32)* @ensure_phase_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_phase_lock(%struct.snd_dice* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %12 = load i32, i32* @GLOBAL_CLOCK_SELECT, align 4
  %13 = call i32 @snd_dice_transaction_read_global(%struct.snd_dice* %11, i32 %12, i32* %6, i32 4)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %3, align 4
  br label %101

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @CLOCK_RATE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %40, %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** @snd_dice_rates, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32*, i32** @snd_dice_rates, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %25

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** @snd_dice_rates, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %101

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @CLOCK_RATE_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %58 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %57, i32 0, i32 0
  %59 = call i64 @completion_done(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %63 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %62, i32 0, i32 0
  %64 = call i32 @reinit_completion(i32* %63)
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @cpu_to_be32(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %69 = load i32, i32* @GLOBAL_CLOCK_SELECT, align 4
  %70 = call i32 @snd_dice_transaction_write_global(%struct.snd_dice* %68, i32 %69, i32* %6, i32 4)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %101

75:                                               ; preds = %65
  %76 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %77 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %76, i32 0, i32 0
  %78 = load i32, i32* @NOTIFICATION_TIMEOUT_MS, align 4
  %79 = call i32 @msecs_to_jiffies(i32 %78)
  %80 = call i64 @wait_for_completion_timeout(i32* %77, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %84 = load i32, i32* @GLOBAL_STATUS, align 4
  %85 = call i32 @snd_dice_transaction_read_global(%struct.snd_dice* %83, i32 %84, i32* %7, i32 4)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = load i32, i32* @STATUS_SOURCE_LOCKED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %101

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %75
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %96, %88, %73, %48, %16
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @snd_dice_transaction_read_global(%struct.snd_dice*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @completion_done(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_dice_transaction_write_global(%struct.snd_dice*, i32, i32*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
