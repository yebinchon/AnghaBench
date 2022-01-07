; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_getboottime64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_getboottime64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timekeeper }
%struct.timekeeper = type { i32, i32 }
%struct.timespec64 = type { i32 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getboottime64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), %struct.timekeeper** %3, align 8
  %6 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %7 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %10 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ktime_sub(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ktime_to_timespec64(i32 %14)
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.timespec64* %13 to i8*
  %18 = bitcast %struct.timespec64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  ret void
}

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
