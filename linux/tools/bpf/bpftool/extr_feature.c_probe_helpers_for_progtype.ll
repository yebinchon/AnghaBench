; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_probe_helpers_for_progtype.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_probe_helpers_for_progtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prog_type_name = common dso_local global i8** null, align 8
@json_output = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s_available_helpers\00", align 1
@json_wtr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"eBPF helpers supported for program type %s:\00", align 1
@helper_name = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"#define %sBPF__PROG_TYPE_%s__HELPER_%s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\0A\09- %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @probe_helpers_for_progtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_helpers_for_progtype(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8**, i8*** @prog_type_name, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %23 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %20, %20
  br label %24

23:                                               ; preds = %20
  br label %118

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i64, i64* @json_output, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @json_wtr, align 4
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %34 = call i32 @jsonw_name(i32 %32, i8* %33)
  %35 = load i32, i32* @json_wtr, align 4
  %36 = call i32 @jsonw_start_array(i32 %35)
  br label %44

37:                                               ; preds = %25
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %28
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %103, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i8**, i8*** @helper_name, align 8
  %48 = call i32 @ARRAY_SIZE(i8** %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @bpf_probe_helper(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %53
  %60 = load i64, i64* @json_output, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* @json_wtr, align 4
  %67 = load i8**, i8*** @helper_name, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @jsonw_string(i32 %66, i8* %71)
  br label %73

73:                                               ; preds = %65, %62
  br label %102

74:                                               ; preds = %59
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8**, i8*** @helper_name, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %79, i8* %84, i8* %88)
  br label %101

90:                                               ; preds = %74
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8**, i8*** @helper_name, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %93, %90
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %73
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %45

106:                                              ; preds = %45
  %107 = load i64, i64* @json_output, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @json_wtr, align 4
  %111 = call i32 @jsonw_end_array(i32 %110)
  br label %118

112:                                              ; preds = %106
  %113 = load i8*, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %23, %117, %109
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @jsonw_name(i32, i8*) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @bpf_probe_helper(i32, i32, i32) #1

declare dso_local i32 @jsonw_string(i32, i8*) #1

declare dso_local i32 @jsonw_end_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
