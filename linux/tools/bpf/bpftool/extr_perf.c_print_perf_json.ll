; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_print_perf_json.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_print_perf_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"prog_id\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fd_type\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"raw_tracepoint\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"tracepoint\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"kprobe\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"kretprobe\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"uprobe\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"uretprobe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8*, i32, i32)* @print_perf_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_perf_json(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* @json_wtr, align 4
  %16 = call i32 @jsonw_start_object(i32 %15)
  %17 = load i32, i32* @json_wtr, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @jsonw_int_field(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @json_wtr, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @jsonw_int_field(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @json_wtr, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @jsonw_uint_field(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %97 [
    i32 131, label %27
    i32 130, label %33
    i32 133, label %39
    i32 132, label %59
    i32 129, label %79
    i32 128, label %88
  ]

27:                                               ; preds = %7
  %28 = load i32, i32* @json_wtr, align 4
  %29 = call i32 @jsonw_string_field(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* @json_wtr, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @jsonw_string_field(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  br label %98

33:                                               ; preds = %7
  %34 = load i32, i32* @json_wtr, align 4
  %35 = call i32 @jsonw_string_field(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32, i32* @json_wtr, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @jsonw_string_field(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  br label %98

39:                                               ; preds = %7
  %40 = load i32, i32* @json_wtr, align 4
  %41 = call i32 @jsonw_string_field(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @json_wtr, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @jsonw_string_field(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @json_wtr, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @jsonw_lluint_field(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @json_wtr, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @jsonw_lluint_field(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %47
  br label %98

59:                                               ; preds = %7
  %60 = load i32, i32* @json_wtr, align 4
  %61 = call i32 @jsonw_string_field(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @json_wtr, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @jsonw_string_field(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @json_wtr, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @jsonw_lluint_field(i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  br label %78

74:                                               ; preds = %59
  %75 = load i32, i32* @json_wtr, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @jsonw_lluint_field(i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %67
  br label %98

79:                                               ; preds = %7
  %80 = load i32, i32* @json_wtr, align 4
  %81 = call i32 @jsonw_string_field(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %82 = load i32, i32* @json_wtr, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @jsonw_string_field(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @json_wtr, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @jsonw_lluint_field(i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  br label %98

88:                                               ; preds = %7
  %89 = load i32, i32* @json_wtr, align 4
  %90 = call i32 @jsonw_string_field(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %91 = load i32, i32* @json_wtr, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @jsonw_string_field(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @json_wtr, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @jsonw_lluint_field(i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  br label %98

97:                                               ; preds = %7
  br label %98

98:                                               ; preds = %97, %88, %79, %78, %58, %33, %27
  %99 = load i32, i32* @json_wtr, align 4
  %100 = call i32 @jsonw_end_object(i32 %99)
  ret void
}

declare dso_local i32 @jsonw_start_object(i32) #1

declare dso_local i32 @jsonw_int_field(i32, i8*, i32) #1

declare dso_local i32 @jsonw_uint_field(i32, i8*, i32) #1

declare dso_local i32 @jsonw_string_field(i32, i8*, i8*) #1

declare dso_local i32 @jsonw_lluint_field(i32, i8*, i32) #1

declare dso_local i32 @jsonw_end_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
