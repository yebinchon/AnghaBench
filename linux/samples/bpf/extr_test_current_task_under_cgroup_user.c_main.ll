; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_current_task_under_cgroup_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_current_task_under_cgroup_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@CGROUP_PATH = common dso_local global i8* null, align 8
@map_fd = common dso_local global i32* null, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Adding target cgroup to map\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"BPF Helper didn't write correct PID to map, but: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"BPF cgroup negative test did not work\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i64 (...) @getpid()
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %19 = call i64 @load_bpf_file(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** @bpf_log_buf, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = call i64 (...) @setup_cgroup_environment()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %83

28:                                               ; preds = %24
  %29 = load i8*, i8** @CGROUP_PATH, align 8
  %30 = call i32 @create_and_get_cgroup(i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %83

34:                                               ; preds = %28
  %35 = load i32*, i32** @map_fd, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BPF_ANY, align 4
  %39 = call i64 (i32, i32*, ...) @bpf_map_update_elem(i32 %37, i32* %9, i32* %8, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %83

43:                                               ; preds = %34
  %44 = load i8*, i8** @CGROUP_PATH, align 8
  %45 = call i64 @join_cgroup(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %83

48:                                               ; preds = %43
  %49 = call i32 (...) @sync()
  %50 = load i32*, i32** @map_fd, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bpf_map_lookup_elem(i32 %52, i32* %9, i64* %6)
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  br label %83

61:                                               ; preds = %48
  %62 = call i64 @join_cgroup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %83

65:                                               ; preds = %61
  store i64 0, i64* %6, align 8
  %66 = load i32*, i32** @map_fd, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BPF_ANY, align 4
  %70 = call i64 (i32, i32*, ...) @bpf_map_update_elem(i32 %68, i32* %9, i64* %6, i32 %69)
  %71 = call i32 (...) @sync()
  %72 = load i32*, i32** @map_fd, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bpf_map_lookup_elem(i32 %74, i32* %9, i64* %6)
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %83

82:                                               ; preds = %65
  br label %84

83:                                               ; preds = %79, %64, %57, %47, %41, %33, %27
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @close(i32 %85)
  %87 = call i32 (...) @cleanup_cgroup_environment()
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @setup_cgroup_environment(...) #1

declare dso_local i32 @create_and_get_cgroup(i8*) #1

declare dso_local i64 @bpf_map_update_elem(i32, i32*, ...) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @join_cgroup(i8*) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cleanup_cgroup_environment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
