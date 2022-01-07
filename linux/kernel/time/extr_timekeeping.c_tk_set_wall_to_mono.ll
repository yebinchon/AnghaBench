; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_set_wall_to_mono.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_set_wall_to_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { i64, i32, i32, %struct.timespec64 }
%struct.timespec64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*, i64)* @tk_set_wall_to_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tk_set_wall_to_mono(%struct.timekeeper* %0, i64 %1) #0 {
  %3 = alloca %struct.timespec64, align 4
  %4 = alloca %struct.timekeeper*, align 8
  %5 = alloca %struct.timespec64, align 4
  %6 = bitcast %struct.timespec64* %3 to i64*
  store i64 %1, i64* %6, align 4
  store %struct.timekeeper* %0, %struct.timekeeper** %4, align 8
  %7 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %8 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 0, %10
  %12 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %13 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 0, %15
  %17 = call i32 @set_normalized_timespec64(%struct.timespec64* %5, i32 %11, i32 %16)
  %18 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %19 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = bitcast %struct.timespec64* %5 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i64 @timespec64_to_ktime(i64 %22)
  %24 = icmp ne i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %28 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %27, i32 0, i32 3
  %29 = bitcast %struct.timespec64* %28 to i8*
  %30 = bitcast %struct.timespec64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 8, i1 false)
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 0, %32
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @set_normalized_timespec64(%struct.timespec64* %5, i32 %33, i32 %36)
  %38 = bitcast %struct.timespec64* %5 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = call i64 @timespec64_to_ktime(i64 %39)
  %41 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %42 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %44 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %47 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ktime_set(i32 %48, i32 0)
  %50 = call i32 @ktime_add(i64 %45, i32 %49)
  %51 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %52 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @set_normalized_timespec64(%struct.timespec64*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @timespec64_to_ktime(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_add(i64, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
