; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_sock2.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_sock2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to open cgroup path: '%s'\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Output from kernel verifier:\0A%s\0A-------\0A\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@prog_cnt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid program id; program not found in file\0A\00", align 1
@prog_fd = common dso_local global i32* null, align 8
@BPF_CGROUP_INET_SOCK_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to attach prog to cgroup: '%s'\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @usage(i8* %14)
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @O_DIRECTORY, align 4
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @open(i8* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %30, i32* %3, align 4
  br label %74

31:                                               ; preds = %16
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @load_bpf_file(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %31
  %40 = load i8*, i8** @bpf_log_buf, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @prog_cnt, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %49
  %57 = load i32*, i32** @prog_fd, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @BPF_CGROUP_INET_SOCK_CREATE, align 4
  %64 = call i32 @bpf_prog_attach(i32 %61, i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load i32, i32* @errno, align 4
  %69 = call i8* @strerror(i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %67, %53, %37, %26, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
