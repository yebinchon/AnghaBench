; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_ts64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_ts64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { %struct.timespec64, i32, i64 }
%struct.timespec64 = type { i64, i64 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@timekeeping_suspended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktime_get_ts64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 1), %struct.timekeeper** %3, align 8
  %7 = load i32, i32* @timekeeping_suspended, align 4
  %8 = call i32 @WARN_ON(i32 %7)
  br label %9

9:                                                ; preds = %23, %1
  %10 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  store i32 %10, i32* %5, align 4
  %11 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %12 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %17 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %16, i32 0, i32 1
  %18 = call i64 @timekeeping_get_ns(i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %20 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %19, i32 0, i32 0
  %21 = bitcast %struct.timespec64* %4 to i8*
  %22 = bitcast %struct.timespec64* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %9, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %35 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %37, %39
  %41 = call i32 @timespec64_add_ns(%struct.timespec64* %36, i64 %40)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i64 @timekeeping_get_ns(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @timespec64_add_ns(%struct.timespec64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
