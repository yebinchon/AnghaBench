; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_do_adjtimex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_do_adjtimex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i64 }
%struct.__kernel_timex = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.audit_ntp_data = type { i32 }
%struct.timespec64 = type { i32, i32 }

@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ADJ_SETOFFSET = common dso_local global i32 0, align 4
@ADJ_NANO = common dso_local global i32 0, align 4
@timekeeper_lock = common dso_local global i32 0, align 4
@TK_MIRROR = common dso_local global i32 0, align 4
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@TK_ADV_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_adjtimex(%struct.__kernel_timex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__kernel_timex*, align 8
  %4 = alloca %struct.timekeeper*, align 8
  %5 = alloca %struct.audit_ntp_data, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec64, align 4
  store %struct.__kernel_timex* %0, %struct.__kernel_timex** %3, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 1), %struct.timekeeper** %4, align 8
  %12 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %13 = call i32 @timekeeping_validate_timex(%struct.__kernel_timex* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %20 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ADJ_SETOFFSET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %27 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %32 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %37 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ADJ_NANO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 1000
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %42, %25
  %47 = call i32 @timekeeping_inject_offset(%struct.timespec64* %11)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %46
  %53 = bitcast %struct.timespec64* %11 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = call i32 @audit_tk_injoffset(i64 %54)
  br label %56

56:                                               ; preds = %52, %18
  %57 = call i32 @audit_ntp_init(%struct.audit_ntp_data* %5)
  %58 = call i32 @ktime_get_real_ts64(%struct.timespec64* %7)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %59)
  %61 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  %62 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %63 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  store i64 %64, i64* %8, align 8
  %65 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %66 = call i32 @__do_adjtimex(%struct.__kernel_timex* %65, %struct.timespec64* %7, i64* %9, %struct.audit_ntp_data* %5)
  store i32 %66, i32* %10, align 4
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @__timekeeping_set_tai_offset(%struct.timekeeper* %71, i64 %72)
  %74 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %75 = load i32, i32* @TK_MIRROR, align 4
  %76 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @timekeeping_update(%struct.timekeeper* %74, i32 %77)
  br label %79

79:                                               ; preds = %70, %56
  %80 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %81 = call i32 @tk_update_leap_state(%struct.timekeeper* %80)
  %82 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %83)
  %85 = call i32 @audit_ntp_log(%struct.audit_ntp_data* %5)
  %86 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %87 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ADJ_FREQUENCY, align 4
  %90 = load i32, i32* @ADJ_TICK, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = load i32, i32* @TK_ADV_FREQ, align 4
  %96 = call i32 @timekeeping_advance(i32 %95)
  br label %97

97:                                               ; preds = %94, %79
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 (...) @clock_was_set()
  br label %103

103:                                              ; preds = %101, %97
  %104 = call i32 (...) @ntp_notify_cmos_timer()
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %50, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @timekeeping_validate_timex(%struct.__kernel_timex*) #1

declare dso_local i32 @timekeeping_inject_offset(%struct.timespec64*) #1

declare dso_local i32 @audit_tk_injoffset(i64) #1

declare dso_local i32 @audit_ntp_init(%struct.audit_ntp_data*) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @__do_adjtimex(%struct.__kernel_timex*, %struct.timespec64*, i64*, %struct.audit_ntp_data*) #1

declare dso_local i32 @__timekeeping_set_tai_offset(%struct.timekeeper*, i64) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @tk_update_leap_state(%struct.timekeeper*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @audit_ntp_log(%struct.audit_ntp_data*) #1

declare dso_local i32 @timekeeping_advance(i32) #1

declare dso_local i32 @clock_was_set(...) #1

declare dso_local i32 @ntp_notify_cmos_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
