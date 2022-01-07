; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_show_tree.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_show_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@query_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cgroup v2 isn't mounted\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"effective\00", align 1
@BPF_F_QUERY_EFFECTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"duplicated argument: %s\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"expected no more arguments, 'effective', got: '%s'?\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s\0A%-8s %-15s %-15s %-15s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"CgroupPath\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"AttachType\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"AttachFlags\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@do_show_tree_fn = common dso_local global i32 0, align 4
@FTW_MOUNT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"can't iterate over %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_show_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show_tree(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* @query_flags, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = call i8* (...) @find_cgroup_root()
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

17:                                               ; preds = %11
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %6, align 8
  br label %49

19:                                               ; preds = %2
  %20 = call i8* (...) @GET_ARG()
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %47, %19
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @is_prefix(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* @query_flags, align 4
  %31 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %3, align 4
  br label %79

38:                                               ; preds = %29
  %39 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %40 = load i32, i32* @query_flags, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @query_flags, align 4
  %42 = call i32 (...) @NEXT_ARG()
  br label %47

43:                                               ; preds = %24
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %3, align 4
  br label %79

47:                                               ; preds = %38
  br label %21

48:                                               ; preds = %21
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i64, i64* @json_output, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @json_wtr, align 4
  %54 = call i32 @jsonw_start_array(i32 %53)
  br label %57

55:                                               ; preds = %49
  %56 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @do_show_tree_fn, align 4
  %60 = load i32, i32* @FTW_MOUNT, align 4
  %61 = call i32 @nftw(i8* %58, i32 %59, i32 1024, i32 %60)
  switch i32 %61, label %68 [
    i32 129, label %62
    i32 128, label %67
  ]

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @strerror(i32 %64)
  %66 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %63, i32 %65)
  store i32 -1, i32* %8, align 4
  br label %69

67:                                               ; preds = %57
  store i32 -1, i32* %8, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %67, %62
  %70 = load i64, i64* @json_output, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @json_wtr, align 4
  %74 = call i32 @jsonw_end_array(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %43, %34, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @find_cgroup_root(...) #1

declare dso_local i32 @p_err(i8*, ...) #1

declare dso_local i8* @GET_ARG(...) #1

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i32 @NEXT_ARG(...) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @nftw(i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @jsonw_end_array(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
