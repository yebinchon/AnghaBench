; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_fastpath_timer_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_fastpath_timer_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__, %struct.signal_struct*, %struct.posix_cputimers }
%struct.TYPE_4__ = type { i64 }
%struct.signal_struct = type { %struct.TYPE_3__, %struct.posix_cputimers }
%struct.TYPE_3__ = type { i32 }
%struct.posix_cputimers = type { i32, i32 }

@CPUCLOCK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @fastpath_timer_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastpath_timer_check(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.posix_cputimers*, align 8
  %5 = alloca %struct.signal_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 2
  store %struct.posix_cputimers* %12, %struct.posix_cputimers** %4, align 8
  %13 = load %struct.posix_cputimers*, %struct.posix_cputimers** %4, align 8
  %14 = call i32 @expiry_cache_is_inactive(%struct.posix_cputimers* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @CPUCLOCK_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call i32 @task_sample_cputime(%struct.task_struct* %21, i32* %20)
  %23 = load %struct.posix_cputimers*, %struct.posix_cputimers** %4, align 8
  %24 = call i64 @task_cputimers_expired(i32* %20, %struct.posix_cputimers* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %81 [
    i32 0, label %31
    i32 1, label %79
  ]

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load %struct.signal_struct*, %struct.signal_struct** %34, align 8
  store %struct.signal_struct* %35, %struct.signal_struct** %5, align 8
  %36 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %37 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %36, i32 0, i32 1
  store %struct.posix_cputimers* %37, %struct.posix_cputimers** %4, align 8
  %38 = load %struct.posix_cputimers*, %struct.posix_cputimers** %4, align 8
  %39 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @READ_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %32
  %44 = load %struct.posix_cputimers*, %struct.posix_cputimers** %4, align 8
  %45 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @READ_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @CPUCLOCK_MAX, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %9, align 8
  %53 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %10, align 8
  %54 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %55 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @proc_sample_cputime_atomic(i32* %56, i32* %53)
  %58 = load %struct.posix_cputimers*, %struct.posix_cputimers** %4, align 8
  %59 = call i64 @task_cputimers_expired(i32* %53, %struct.posix_cputimers* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %63

62:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %81 [
    i32 0, label %66
    i32 1, label %79
  ]

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %43, %32
  %68 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %69 = call i64 @dl_task(%struct.task_struct* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %79

78:                                               ; preds = %71, %67
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77, %63, %28
  %80 = load i32, i32* %2, align 4
  ret i32 %80

81:                                               ; preds = %63, %28
  unreachable
}

declare dso_local i32 @expiry_cache_is_inactive(%struct.posix_cputimers*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @task_sample_cputime(%struct.task_struct*, i32*) #1

declare dso_local i64 @task_cputimers_expired(i32*, %struct.posix_cputimers*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @proc_sample_cputime_atomic(i32*, i32*) #1

declare dso_local i64 @dl_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
