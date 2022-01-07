; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@test_flags = common dso_local global i32 0, align 4
@num_map_entries = common dso_local global i8* null, align 8
@max_cnt = common dso_local global i8* null, align 8
@fixup_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8

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
  store i32 8, i32* %8, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %19 = call i32 @setrlimit(i32 %18, %struct.rlimit* %6)
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @atoi(i8* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @test_flags, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i8* [ %26, %28 ], [ %32, %29 ]
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* @test_flags, align 4
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @atoi(i8* %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i8* [ %43, %45 ], [ %49, %46 ]
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @atoi(i8* %59)
  store i8* %60, i8** @num_map_entries, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 4
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @atoi(i8* %67)
  store i8* %68, i8** @max_cnt, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %71 = load i32, i32* @fixup_map, align 4
  %72 = call i64 @load_bpf_file_fixup_map(i8* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** @bpf_log_buf, align 8
  %76 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  store i32 1, i32* %3, align 4
  br label %81

77:                                               ; preds = %69
  %78 = call i32 (...) @fill_lpm_trie()
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @run_perf_test(i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @load_bpf_file_fixup_map(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fill_lpm_trie(...) #1

declare dso_local i32 @run_perf_test(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
