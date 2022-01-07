; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_sock.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_sock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"db:m:p:6\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid device name\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cgroup path not given\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"One of device, mark or priority must be given\0A\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to open cgroup path: '%s'\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to load prog: '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Output from kernel verifier:\0A%s\0A-------\0A\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@BPF_CGROUP_INET_SOCK_CREATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to attach prog to cgroup: '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to detach prog from cgroup: '%s'\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %16 = load i32, i32* @PF_INET, align 4
  store i32 %16, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %17

17:                                               ; preds = %53, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %15, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load i32, i32* %15, align 4
  switch i32 %23, label %48 [
    i32 100, label %24
    i32 98, label %25
    i32 109, label %40
    i32 112, label %43
    i32 54, label %46
  ]

24:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %53

25:                                               ; preds = %22
  %26 = load i32, i32* @optarg, align 4
  %27 = call i64 @if_nametoindex(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @optarg, align 4
  %32 = call i64 @strtoumax(i32 %31, i32* null, i32 0)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %37, i32* %3, align 4
  br label %148

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  br label %53

40:                                               ; preds = %22
  %41 = load i32, i32* @optarg, align 4
  %42 = call i64 @strtoumax(i32 %41, i32* null, i32 0)
  store i64 %42, i64* %7, align 8
  br label %53

43:                                               ; preds = %22
  %44 = load i32, i32* @optarg, align 4
  %45 = call i64 @strtoumax(i32 %44, i32* null, i32 0)
  store i64 %45, i64* %8, align 8
  br label %53

46:                                               ; preds = %22
  %47 = load i32, i32* @PF_INET6, align 4
  store i32 %47, i32* %13, align 4
  br label %53

48:                                               ; preds = %22
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @usage(i8* %51)
  store i32 %52, i32* %3, align 4
  br label %148

53:                                               ; preds = %46, %43, %40, %39, %24
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* @optind, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @show_sockopts(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %148

61:                                               ; preds = %54
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* @optind, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %148

73:                                               ; preds = %61
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %88, i32* %3, align 4
  br label %148

89:                                               ; preds = %82, %79, %76, %73
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @O_DIRECTORY, align 4
  %92 = load i32, i32* @O_RDONLY, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @open(i8* %90, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i32, i32* @errno, align 4
  %99 = call i8* @strerror(i32 %98)
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %101, i32* %3, align 4
  br label %148

102:                                              ; preds = %89
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @prog_load(i64 %106, i64 %107, i64 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i32, i32* @errno, align 4
  %114 = call i8* @strerror(i32 %113)
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = load i8*, i8** @bpf_log_buf, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %118, i32* %3, align 4
  br label %148

119:                                              ; preds = %105
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @BPF_CGROUP_INET_SOCK_CREATE, align 4
  %123 = call i32 @bpf_prog_attach(i32 %120, i32 %121, i32 %122, i32 0)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* @errno, align 4
  %128 = call i8* @strerror(i32 %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %130, i32* %3, align 4
  br label %148

131:                                              ; preds = %119
  br label %144

132:                                              ; preds = %102
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @BPF_CGROUP_INET_SOCK_CREATE, align 4
  %135 = call i32 @bpf_prog_detach(i32 %133, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i32, i32* @errno, align 4
  %140 = call i8* @strerror(i32 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %142, i32* %3, align 4
  br label %148

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %131
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @close(i32 %145)
  %147 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %138, %126, %112, %97, %85, %69, %58, %48, %35
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @if_nametoindex(i32) #1

declare dso_local i64 @strtoumax(i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @show_sockopts(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @prog_load(i64, i64, i64) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
