; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_attach.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_attach.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"Dd\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ingress\00", align 1
@BPF_CGROUP_INET_INGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"egress\00", align 1
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to open cgroup path: '%s'\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"bpf_prog_detach() returned '%s' (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %21 [
    i32 100, label %19
    i32 68, label %20
  ]

19:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %26

20:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %26

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @usage(i8* %24)
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %20, %19
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @usage(i8* %35)
  store i32 %36, i32* %3, align 4
  br label %100

37:                                               ; preds = %27
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* @optind, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @BPF_CGROUP_INET_INGRESS, align 4
  store i32 %47, i32* %8, align 4
  br label %65

48:                                               ; preds = %37
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %48
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @usage(i8* %62)
  store i32 %63, i32* %3, align 4
  br label %100

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* @optind, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @O_DIRECTORY, align 4
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @open(i8* %70, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %81, i32* %3, align 4
  br label %100

82:                                               ; preds = %65
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @bpf_prog_detach(i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @errno, align 4
  %90 = call i8* @strerror(i32 %89)
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %90, i32 %91)
  br label %98

93:                                               ; preds = %82
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @attach_filter(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93, %85
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %77, %59, %32, %21
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @attach_filter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
