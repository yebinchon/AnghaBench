; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_fmt__find_by_alias.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_fmt__find_by_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_fmt = type { i64 }

@syscall_fmts = common dso_local global %struct.syscall_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.syscall_fmt* (i8*)* @syscall_fmt__find_by_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.syscall_fmt* @syscall_fmt__find_by_alias(i8* %0) #0 {
  %2 = alloca %struct.syscall_fmt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.syscall_fmt*, %struct.syscall_fmt** @syscall_fmts, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.syscall_fmt* %6)
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load %struct.syscall_fmt*, %struct.syscall_fmt** @syscall_fmts, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.syscall_fmt, %struct.syscall_fmt* %13, i64 %15
  %17 = getelementptr inbounds %struct.syscall_fmt, %struct.syscall_fmt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load %struct.syscall_fmt*, %struct.syscall_fmt** @syscall_fmts, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.syscall_fmt, %struct.syscall_fmt* %21, i64 %23
  %25 = getelementptr inbounds %struct.syscall_fmt, %struct.syscall_fmt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strcmp(i64 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.syscall_fmt*, %struct.syscall_fmt** @syscall_fmts, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.syscall_fmt, %struct.syscall_fmt* %31, i64 %33
  store %struct.syscall_fmt* %34, %struct.syscall_fmt** %2, align 8
  br label %40

35:                                               ; preds = %20, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %8

39:                                               ; preds = %8
  store %struct.syscall_fmt* null, %struct.syscall_fmt** %2, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.syscall_fmt*, %struct.syscall_fmt** %2, align 8
  ret %struct.syscall_fmt* %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.syscall_fmt*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
