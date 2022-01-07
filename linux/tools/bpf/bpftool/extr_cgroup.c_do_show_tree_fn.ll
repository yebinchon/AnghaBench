; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_show_tree_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_do_show_tree_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.FTW = type { i32 }

@FTW_D = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't open cgroup %s: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@SHOW_TREE_FN_ERR = common dso_local global i32 0, align 4
@__MAX_BPF_ATTACH_TYPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"can't query bpf programs attached to %s: %s\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"programs\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32, %struct.FTW*)* @do_show_tree_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show_tree_fn(i8* %0, %struct.stat* %1, i32 %2, %struct.FTW* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.FTW*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.FTW* %3, %struct.FTW** %9, align 8
  store i32 1, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @FTW_D, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %114

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @strerror(i64 %26)
  %28 = call i32 @p_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load i32, i32* @SHOW_TREE_FN_ERR, align 4
  store i32 %29, i32* %5, align 4
  br label %114

30:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @__MAX_BPF_ATTACH_TYPE, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @count_attached_bpf_progs(i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EINVAL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @strerror(i64 %47)
  %49 = call i32 @p_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* @SHOW_TREE_FN_ERR, align 4
  store i32 %52, i32* %5, align 4
  br label %114

53:                                               ; preds = %41, %35
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %61

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %31

61:                                               ; preds = %56, %31
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @close(i32 %65)
  store i32 0, i32* %5, align 4
  br label %114

67:                                               ; preds = %61
  %68 = load i64, i64* @json_output, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* @json_wtr, align 4
  %72 = call i32 @jsonw_start_object(i32 %71)
  %73 = load i32, i32* @json_wtr, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @jsonw_string_field(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @json_wtr, align 4
  %77 = call i32 @jsonw_name(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @json_wtr, align 4
  %79 = call i32 @jsonw_start_array(i32 %78)
  br label %83

80:                                               ; preds = %67
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %70
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @__MAX_BPF_ATTACH_TYPE, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.FTW*, %struct.FTW** %9, align 8
  %92 = getelementptr inbounds %struct.FTW, %struct.FTW* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @show_attached_bpf_progs(i32 %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %84

98:                                               ; preds = %84
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EINVAL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i64 0, i64* @errno, align 8
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i64, i64* @json_output, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @json_wtr, align 4
  %108 = call i32 @jsonw_end_array(i32 %107)
  %109 = load i32, i32* @json_wtr, align 4
  %110 = call i32 @jsonw_end_object(i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @close(i32 %112)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %64, %45, %24, %17
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @p_err(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @count_attached_bpf_progs(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @jsonw_start_object(i32) #1

declare dso_local i32 @jsonw_string_field(i32, i8*, i8*) #1

declare dso_local i32 @jsonw_name(i32, i8*) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @show_attached_bpf_progs(i32, i32, i32) #1

declare dso_local i32 @jsonw_end_array(i32) #1

declare dso_local i32 @jsonw_end_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
