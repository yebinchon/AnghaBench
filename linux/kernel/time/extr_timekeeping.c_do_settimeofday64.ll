; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_do_settimeofday64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_do_settimeofday64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i32 }
%struct.timespec64 = type { i64, i64 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@timekeeper_lock = common dso_local global i32 0, align 4
@TK_CLEAR_NTP = common dso_local global i32 0, align 4
@TK_MIRROR = common dso_local global i32 0, align 4
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_settimeofday64(%struct.timespec64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca %struct.timekeeper*, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 1), %struct.timekeeper** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %11 = call i32 @timespec64_valid_settod(%struct.timespec64* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %17)
  %19 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  %20 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %21 = call i32 @timekeeping_forward_now(%struct.timekeeper* %20)
  %22 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %23 = call { i64, i64 } @tk_xtime(%struct.timekeeper* %22)
  %24 = bitcast %struct.timespec64* %9 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  %29 = bitcast %struct.timespec64* %6 to i8*
  %30 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %40, %42
  %44 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %46 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %45, i32 0, i32 0
  %47 = call i64 @timespec64_compare(i32* %46, %struct.timespec64* %5)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %16
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %67

52:                                               ; preds = %16
  %53 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %54 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %55 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %struct.timespec64* %5 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @timespec64_sub(i32 %56, i64 %59, i64 %61)
  %63 = call i32 @tk_set_wall_to_mono(%struct.timekeeper* %53, i32 %62)
  %64 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %65 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %66 = call i32 @tk_set_xtime(%struct.timekeeper* %64, %struct.timespec64* %65)
  br label %67

67:                                               ; preds = %52, %49
  %68 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %69 = load i32, i32* @TK_CLEAR_NTP, align 4
  %70 = load i32, i32* @TK_MIRROR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @timekeeping_update(%struct.timekeeper* %68, i32 %73)
  %75 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %76)
  %78 = call i32 (...) @clock_was_set()
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %67
  %82 = bitcast %struct.timespec64* %5 to { i64, i64 }*
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %82, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @audit_tk_injoffset(i64 %84, i64 %86)
  br label %88

88:                                               ; preds = %81, %67
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @timespec64_valid_settod(%struct.timespec64*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_forward_now(%struct.timekeeper*) #1

declare dso_local { i64, i64 } @tk_xtime(%struct.timekeeper*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_compare(i32*, %struct.timespec64*) #1

declare dso_local i32 @tk_set_wall_to_mono(%struct.timekeeper*, i32) #1

declare dso_local i32 @timespec64_sub(i32, i64, i64) #1

declare dso_local i32 @tk_set_xtime(%struct.timekeeper*, %struct.timespec64*) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clock_was_set(...) #1

declare dso_local i32 @audit_tk_injoffset(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
