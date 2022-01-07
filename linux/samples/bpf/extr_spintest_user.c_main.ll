; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_spintest_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_spintest_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.ksym = type { i8* }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to process /proc/kallsyms\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"kprobing funcs:\00", align 1
@map_fd = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"ksym not found. Is kallsyms loaded?\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca %struct.ksym*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %14 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %16 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @snprintf(i8* %17, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %23 = call i32 @setrlimit(i32 %22, %struct.rlimit* %6)
  %24 = call i64 (...) @load_kallsyms()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %92

28:                                               ; preds = %2
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %30 = call i64 @load_bpf_file(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** @bpf_log_buf, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 1, i32* %3, align 4
  br label %92

35:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %91

39:                                               ; preds = %36
  store i64 0, i64* %7, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %64, %62, %39
  %42 = load i32*, i32** @map_fd, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @bpf_map_get_next_key(i32 %44, i64* %7, i64* %8)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load i32*, i32** @map_fd, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bpf_map_lookup_elem(i32 %50, i64* %8, i64* %9)
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = call %struct.ksym* @ksym_search(i64 %57)
  store %struct.ksym* %58, %struct.ksym** %11, align 8
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %7, align 8
  %60 = load %struct.ksym*, %struct.ksym** %11, align 8
  %61 = icmp ne %struct.ksym* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %47
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %41

64:                                               ; preds = %47
  %65 = load %struct.ksym*, %struct.ksym** %11, align 8
  %66 = getelementptr inbounds %struct.ksym, %struct.ksym* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %41

69:                                               ; preds = %41
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32*, i32** @map_fd, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @bpf_map_get_next_key(i32 %78, i64* %7, i64* %8)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32*, i32** @map_fd, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bpf_map_delete_elem(i32 %84, i64* %8)
  br label %75

86:                                               ; preds = %75
  %87 = call i32 @sleep(i32 1)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %36

91:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %32, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @load_kallsyms(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i64*, i64*) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ksym* @ksym_search(i64) #1

declare dso_local i32 @bpf_map_delete_elem(i32, i64*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
