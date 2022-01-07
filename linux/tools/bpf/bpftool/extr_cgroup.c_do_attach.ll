; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_attach.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"too few parameters for cgroup attach\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't open cgroup %s\00", align 1
@__MAX_BPF_ATTACH_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid attach type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@BPF_F_ALLOW_MULTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@BPF_F_ALLOW_OVERRIDE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"unknown option: %s\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to attach program\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %110

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %110

28:                                               ; preds = %15
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @parse_attach_type(i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @__MAX_BPF_ATTACH_TYPE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %107

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  store i8** %42, i8*** %4, align 8
  %43 = call i32 @prog_parse_fd(i32* %3, i8*** %4)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %107

47:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %85, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @is_prefix(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @BPF_F_ALLOW_MULTI, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %84

64:                                               ; preds = %52
  %65 = load i8**, i8*** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @is_prefix(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %83

76:                                               ; preds = %64
  %77 = load i8**, i8*** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  br label %107

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %48

88:                                               ; preds = %48
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @bpf_prog_attach(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %104

97:                                               ; preds = %88
  %98 = load i64, i64* @json_output, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @json_wtr, align 4
  %102 = call i32 @jsonw_null(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @close(i32 %105)
  br label %107

107:                                              ; preds = %104, %76, %46, %36
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @close(i32 %108)
  br label %110

110:                                              ; preds = %107, %23, %13
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @p_err(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @parse_attach_type(i8*) #1

declare dso_local i32 @prog_parse_fd(i32*, i8***) #1

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i64 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @jsonw_null(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
