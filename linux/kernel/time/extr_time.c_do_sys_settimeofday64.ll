; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_time.c_do_sys_settimeofday64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_time.c_do_sys_settimeofday64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timezone = type { i32 }
%struct.timespec64 = type { i32 }

@do_sys_settimeofday64.firsttime = internal global i32 1, align 4
@EINVAL = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.timezone zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sys_settimeofday64(%struct.timespec64* %0, %struct.timezone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.timezone*, align 8
  %6 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %4, align 8
  store %struct.timezone* %1, %struct.timezone** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %8 = icmp ne %struct.timespec64* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %11 = call i32 @timespec64_valid_settod(%struct.timespec64* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %9, %2
  %17 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %18 = load %struct.timezone*, %struct.timezone** %5, align 8
  %19 = call i32 @security_settime64(%struct.timespec64* %17, %struct.timezone* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.timezone*, %struct.timezone** %5, align 8
  %26 = icmp ne %struct.timezone* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load %struct.timezone*, %struct.timezone** %5, align 8
  %29 = getelementptr inbounds %struct.timezone, %struct.timezone* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 900
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.timezone*, %struct.timezone** %5, align 8
  %34 = getelementptr inbounds %struct.timezone, %struct.timezone* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, -900
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %32
  %41 = load %struct.timezone*, %struct.timezone** %5, align 8
  %42 = bitcast %struct.timezone* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timezone* @sys_tz to i8*), i8* align 4 %42, i64 4, i1 false)
  %43 = call i32 (...) @update_vsyscall_tz()
  %44 = load i32, i32* @do_sys_settimeofday64.firsttime, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  store i32 0, i32* @do_sys_settimeofday64.firsttime, align 4
  %47 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %48 = icmp ne %struct.timespec64* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (...) @timekeeping_warp_clock()
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %55 = icmp ne %struct.timespec64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %58 = call i32 @do_settimeofday64(%struct.timespec64* %57)
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56, %37, %22, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @timespec64_valid_settod(%struct.timespec64*) #1

declare dso_local i32 @security_settime64(%struct.timespec64*, %struct.timezone*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_vsyscall_tz(...) #1

declare dso_local i32 @timekeeping_warp_clock(...) #1

declare dso_local i32 @do_settimeofday64(%struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
