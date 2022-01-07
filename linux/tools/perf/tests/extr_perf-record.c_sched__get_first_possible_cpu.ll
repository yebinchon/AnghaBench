; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_perf-record.c_sched__get_first_possible_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_perf-record.c_sched__get_first_possible_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"sched_getaffinity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @sched__get_first_possible_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched__get_first_possible_cpu(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 1024, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @CPU_ZERO(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @sched_getaffinity(i32 %12, i32 4, i32* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINVAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 262144
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 2
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %20, %16
  %27 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %54

28:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @CPU_ISSET(i32 %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @CPU_CLR(i32 %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %41
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %26
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @sched_getaffinity(i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
