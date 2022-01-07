; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_inject_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_inject_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i32 }
%struct.timespec64 = type { i64 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@timekeeper_lock = common dso_local global i32 0, align 4
@TK_CLEAR_NTP = common dso_local global i32 0, align 4
@TK_MIRROR = common dso_local global i32 0, align 4
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec64*)* @timekeeping_inject_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timekeeping_inject_offset(%struct.timespec64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca %struct.timekeeper*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 1), %struct.timekeeper** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %10 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NSEC_PER_SEC, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %13
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %23)
  %25 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  %26 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %27 = call i32 @timekeeping_forward_now(%struct.timekeeper* %26)
  %28 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %29 = call i32 @tk_xtime(%struct.timekeeper* %28)
  %30 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @timespec64_add(i32 %29, i64 %32)
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = bitcast %struct.timespec64* %6 to i8*
  %36 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %38 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %37, i32 0, i32 0
  %39 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %40 = call i64 @timespec64_compare(i32* %38, %struct.timespec64* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = call i32 @timespec64_valid_settod(%struct.timespec64* %6)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %61

48:                                               ; preds = %42
  %49 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %50 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %51 = call i32 @tk_xtime_add(%struct.timekeeper* %49, %struct.timespec64* %50)
  %52 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %53 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %54 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %57 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @timespec64_sub(i32 %55, i64 %58)
  %60 = call i32 @tk_set_wall_to_mono(%struct.timekeeper* %52, i32 %59)
  br label %61

61:                                               ; preds = %48, %45
  %62 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %63 = load i32, i32* @TK_CLEAR_NTP, align 4
  %64 = load i32, i32* @TK_MIRROR, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @timekeeping_update(%struct.timekeeper* %62, i32 %67)
  %69 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %70)
  %72 = call i32 (...) @clock_was_set()
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %61, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_forward_now(%struct.timekeeper*) #1

declare dso_local i64 @timespec64_add(i32, i64) #1

declare dso_local i32 @tk_xtime(%struct.timekeeper*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_compare(i32*, %struct.timespec64*) #1

declare dso_local i32 @timespec64_valid_settod(%struct.timespec64*) #1

declare dso_local i32 @tk_xtime_add(%struct.timekeeper*, %struct.timespec64*) #1

declare dso_local i32 @tk_set_wall_to_mono(%struct.timekeeper*, i32) #1

declare dso_local i32 @timespec64_sub(i32, i64) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clock_was_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
