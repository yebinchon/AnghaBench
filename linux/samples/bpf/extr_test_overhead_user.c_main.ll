; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_overhead_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_overhead_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BASE\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s_kprobe_kern.o\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"w/KPROBE\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s_tp_kern.o\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"w/TRACEPOINT\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s_raw_tp_kern.o\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"w/RAW_TRACEPOINT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %11 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %13 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %13, i32* %12, align 4
  store i32 8, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %14 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %15 = call i32 @setrlimit(i32 %14, %struct.rlimit* %6)
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @atoi(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i64 [ %22, %24 ], [ %27, %25 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @atoi(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i64 [ %38, %40 ], [ %43, %41 ]
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @run_perf_test(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 12
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @snprintf(i8* %61, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %67 = call i64 @load_bpf_file(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i8*, i8** @bpf_log_buf, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  store i32 1, i32* %3, align 4
  br label %126

72:                                               ; preds = %60
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 2
  %77 = call i32 @run_perf_test(i32 %74, i32 %76)
  %78 = call i32 (...) @unload_progs()
  br label %79

79:                                               ; preds = %72, %56
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 48
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @snprintf(i8* %84, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %90 = call i64 @load_bpf_file(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i8*, i8** @bpf_log_buf, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  store i32 1, i32* %3, align 4
  br label %126

95:                                               ; preds = %83
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = ashr i32 %98, 4
  %100 = call i32 @run_perf_test(i32 %97, i32 %99)
  %101 = call i32 (...) @unload_progs()
  br label %102

102:                                              ; preds = %95, %79
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 192
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @snprintf(i8* %107, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %113 = call i64 @load_bpf_file(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i8*, i8** @bpf_log_buf, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  store i32 1, i32* %3, align 4
  br label %126

118:                                              ; preds = %106
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = ashr i32 %121, 6
  %123 = call i32 @run_perf_test(i32 %120, i32 %122)
  %124 = call i32 (...) @unload_progs()
  br label %125

125:                                              ; preds = %118, %102
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %115, %92, %69
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @run_perf_test(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @unload_progs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
