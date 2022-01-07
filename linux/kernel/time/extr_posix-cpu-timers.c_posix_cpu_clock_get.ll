; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }
%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec64*)* @posix_cpu_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_cpu_clock_get(i32 %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CPUCLOCK_WHICH(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.task_struct* @get_task_for_clock_get(i32 %12)
  store %struct.task_struct* %13, %struct.task_struct** %7, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @CPUCLOCK_PERTHREAD(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = call i32 @cpu_clock_sample(i32 %24, %struct.task_struct* %25)
  store i32 %26, i32* %8, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = call i32 @cpu_clock_sample_group(i32 %28, %struct.task_struct* %29, i32 0)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %33 = call i32 @put_task_struct(%struct.task_struct* %32)
  %34 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ns_to_timespec64(i32 %35)
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.timespec64* %34 to i8*
  %39 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @CPUCLOCK_WHICH(i32) #1

declare dso_local %struct.task_struct* @get_task_for_clock_get(i32) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @cpu_clock_sample(i32, %struct.task_struct*) #1

declare dso_local i32 @cpu_clock_sample_group(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @ns_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
