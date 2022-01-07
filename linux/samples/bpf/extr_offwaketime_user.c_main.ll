; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_offwaketime_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_offwaketime_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to process /proc/kallsyms\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@map_fd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %10 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %12 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %12, i32* %11, align 4
  store i32 1, i32* %8, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %19 = call i32 @setrlimit(i32 %18, %struct.rlimit* %6)
  %20 = load i32, i32* @SIGINT, align 4
  %21 = load i32, i32* @int_exit, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  %23 = load i32, i32* @SIGTERM, align 4
  %24 = load i32, i32* @int_exit, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  %26 = call i64 (...) @load_kallsyms()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %52

30:                                               ; preds = %2
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %32 = call i64 @load_bpf_file(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** @bpf_log_buf, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  store i32 1, i32* %3, align 4
  br label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @atoi(i8* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @sleep(i32 %46)
  %48 = load i32*, i32** @map_fd, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @print_stacks(i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %34, %28
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @load_kallsyms(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @print_stacks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
