; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_advance.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@tk_core = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@shadow_timekeeper = common dso_local global %struct.timekeeper zeroinitializer, align 8
@timekeeper_lock = common dso_local global i32 0, align 4
@timekeeping_suspended = common dso_local global i32 0, align 4
@TK_ADV_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @timekeeping_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timekeeping_advance(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca %struct.timekeeper*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 1), %struct.timekeeper** %3, align 8
  store %struct.timekeeper* @shadow_timekeeper, %struct.timekeeper** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %10)
  %12 = load i32, i32* @timekeeping_suspended, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %99

16:                                               ; preds = %1
  %17 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %18 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %17, i32 0, i32 1
  %19 = call i32 @tk_clock_read(%struct.TYPE_4__* %18)
  %20 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %21 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %25 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @clocksource_delta(i32 %19, i32 %23, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %31 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @TK_ADV_TICK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %99

39:                                               ; preds = %34, %16
  %40 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @timekeeping_check_update(%struct.timekeeper* %40, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ilog2(i64 %43)
  %45 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %46 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ilog2(i64 %47)
  %49 = sub nsw i32 %44, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @max(i32 0, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = call i64 (...) @ntp_tick_length()
  %53 = call i32 @ilog2(i64 %52)
  %54 = add nsw i32 %53, 1
  %55 = sub nsw i32 64, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %82, %39
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %63 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @logarithmic_accumulation(%struct.timekeeper* %67, i64 %68, i32 %69, i32* %8)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %73 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 %74, %76
  %78 = icmp slt i64 %71, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %66
  br label %60

83:                                               ; preds = %60
  %84 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @timekeeping_adjust(%struct.timekeeper* %84, i64 %85)
  %87 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %88 = call i32 @accumulate_nsecs_to_secs(%struct.timekeeper* %87)
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 0))
  %92 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @timekeeping_update(%struct.timekeeper* %92, i32 %93)
  %95 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %96 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %97 = call i32 @memcpy(%struct.timekeeper* %95, %struct.timekeeper* %96, i32 16)
  %98 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 0))
  br label %99

99:                                               ; preds = %83, %38, %15
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (...) @clock_was_set_delayed()
  br label %106

106:                                              ; preds = %104, %99
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @clocksource_delta(i32, i32, i32) #1

declare dso_local i32 @tk_clock_read(%struct.TYPE_4__*) #1

declare dso_local i32 @timekeeping_check_update(%struct.timekeeper*, i64) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @ntp_tick_length(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @logarithmic_accumulation(%struct.timekeeper*, i64, i32, i32*) #1

declare dso_local i32 @timekeeping_adjust(%struct.timekeeper*, i64) #1

declare dso_local i32 @accumulate_nsecs_to_secs(%struct.timekeeper*) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @memcpy(%struct.timekeeper*, %struct.timekeeper*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clock_was_set_delayed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
