; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_has_perf_query_support.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_has_perf_query_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perf_query_supported = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"perf_query_support: cannot open directory \22/\22 (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"perf_query_support: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"HINT: non root or kernel doesn't support TASK_FD_QUERY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_perf_query_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_perf_query_support() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @perf_query_supported, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %37

11:                                               ; preds = %0
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @p_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %37

20:                                               ; preds = %11
  store i32 0, i32* @errno, align 4
  store i32 256, i32* %3, align 4
  %21 = call i32 (...) @getpid()
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %24 = call i32 @bpf_task_fd_query(i32 %21, i32 %22, i32 0, i8* %23, i32* %3, i32* %4, i32* %5, i32* %1, i32* %2)
  %25 = load i32, i32* @errno, align 4
  %26 = icmp eq i32 %25, 524
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* @perf_query_supported, align 4
  br label %34

28:                                               ; preds = %20
  store i32 2, i32* @perf_query_supported, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %34, %16, %10
  %38 = load i32, i32* @perf_query_supported, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @p_err(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bpf_task_fd_query(i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
