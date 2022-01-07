; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_change_clocksource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_change_clocksource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.clocksource* }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i32, i32 (%struct.clocksource*)* }

@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@timekeeper_lock = common dso_local global i32 0, align 4
@TK_CLEAR_NTP = common dso_local global i32 0, align 4
@TK_MIRROR = common dso_local global i32 0, align 4
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @change_clocksource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_clocksource(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca %struct.clocksource*, align 8
  %5 = alloca %struct.clocksource*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 1), %struct.timekeeper** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.clocksource*
  store %struct.clocksource* %8, %struct.clocksource** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %9)
  %11 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  %12 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %13 = call i32 @timekeeping_forward_now(%struct.timekeeper* %12)
  %14 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %15 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @try_module_get(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %21 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %20, i32 0, i32 0
  %22 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %21, align 8
  %23 = icmp ne i64 (%struct.clocksource*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %26 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %25, i32 0, i32 0
  %27 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %26, align 8
  %28 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %29 = call i64 %27(%struct.clocksource* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24, %19
  %32 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %33 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.clocksource*, %struct.clocksource** %34, align 8
  store %struct.clocksource* %35, %struct.clocksource** %5, align 8
  %36 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %37 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %38 = call i32 @tk_setup_internals(%struct.timekeeper* %36, %struct.clocksource* %37)
  %39 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %40 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %39, i32 0, i32 2
  %41 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %40, align 8
  %42 = icmp ne i32 (%struct.clocksource*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %45 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %44, i32 0, i32 2
  %46 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %45, align 8
  %47 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %48 = call i32 %46(%struct.clocksource* %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %51 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @module_put(i32 %52)
  br label %59

54:                                               ; preds = %24
  %55 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %56 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @module_put(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %62 = load i32, i32* @TK_CLEAR_NTP, align 4
  %63 = load i32, i32* @TK_MIRROR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @timekeeping_update(%struct.timekeeper* %61, i32 %66)
  %68 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %69)
  ret i32 0
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_forward_now(%struct.timekeeper*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @tk_setup_internals(%struct.timekeeper*, %struct.clocksource*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
