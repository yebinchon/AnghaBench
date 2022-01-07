; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@query_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"effective\00", align 1
@BPF_F_QUERY_EFFECTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicated argument: %s\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"expected no more arguments, 'effective', got: '%s'?\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"can't open cgroup %s\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%-8s %-15s %-15s %-15s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"AttachType\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"AttachFlags\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@__MAX_BPF_ATTACH_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* @query_flags, align 4
  %10 = call i32 @REQ_ARGS(i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %85

13:                                               ; preds = %2
  %14 = call i8* (...) @GET_ARG()
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %41, %13
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @is_prefix(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load i32, i32* @query_flags, align 4
  %25 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @p_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 -1, i32* %3, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load i32, i32* @BPF_F_QUERY_EFFECTIVE, align 4
  %34 = load i32, i32* @query_flags, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @query_flags, align 4
  %36 = call i32 (...) @NEXT_ARG()
  br label %41

37:                                               ; preds = %18
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @p_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %3, align 4
  br label %85

41:                                               ; preds = %32
  br label %15

42:                                               ; preds = %15
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 @open(i8* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %83

51:                                               ; preds = %42
  %52 = load i64, i64* @json_output, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @json_wtr, align 4
  %56 = call i32 @jsonw_start_array(i32 %55)
  br label %59

57:                                               ; preds = %51
  %58 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @__MAX_BPF_ATTACH_TYPE, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @show_attached_bpf_progs(i32 %65, i32 %66, i32 0)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %60

74:                                               ; preds = %60
  %75 = load i64, i64* @json_output, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @json_wtr, align 4
  %79 = call i32 @jsonw_end_array(i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @close(i32 %81)
  br label %83

83:                                               ; preds = %80, %48
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %37, %28, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @REQ_ARGS(i32) #1

declare dso_local i8* @GET_ARG(...) #1

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i32 @p_err(i8*, i8*) #1

declare dso_local i32 @NEXT_ARG(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @show_attached_bpf_progs(i32, i32, i32) #1

declare dso_local i32 @jsonw_end_array(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
