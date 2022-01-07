; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_synth_field_size.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_synth_field_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"gfp_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @synth_field_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_field_size(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 4, i32* %3, align 4
  br label %106

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 4, i32* %3, align 4
  br label %105

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 4, i32* %3, align 4
  br label %104

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 4, i32* %3, align 4
  br label %103

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 4, i32* %3, align 4
  br label %102

28:                                               ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 4, i32* %3, align 4
  br label %101

33:                                               ; preds = %28
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 4, i32* %3, align 4
  br label %100

38:                                               ; preds = %33
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 4, i32* %3, align 4
  br label %99

43:                                               ; preds = %38
  %44 = load i8*, i8** %2, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %98

48:                                               ; preds = %43
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %97

53:                                               ; preds = %48
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 4, i32* %3, align 4
  br label %96

58:                                               ; preds = %53
  %59 = load i8*, i8** %2, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 4, i32* %3, align 4
  br label %95

63:                                               ; preds = %58
  %64 = load i8*, i8** %2, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 8, i32* %3, align 4
  br label %94

68:                                               ; preds = %63
  %69 = load i8*, i8** %2, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 8, i32* %3, align 4
  br label %93

73:                                               ; preds = %68
  %74 = load i8*, i8** %2, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 4, i32* %3, align 4
  br label %92

78:                                               ; preds = %73
  %79 = load i8*, i8** %2, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 4, i32* %3, align 4
  br label %91

83:                                               ; preds = %78
  %84 = load i8*, i8** %2, align 8
  %85 = call i64 @synth_field_is_string(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 @synth_field_string_size(i8* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %57
  br label %97

97:                                               ; preds = %96, %52
  br label %98

98:                                               ; preds = %97, %47
  br label %99

99:                                               ; preds = %98, %42
  br label %100

100:                                              ; preds = %99, %37
  br label %101

101:                                              ; preds = %100, %32
  br label %102

102:                                              ; preds = %101, %27
  br label %103

103:                                              ; preds = %102, %22
  br label %104

104:                                              ; preds = %103, %17
  br label %105

105:                                              ; preds = %104, %12
  br label %106

106:                                              ; preds = %105, %7
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @synth_field_is_string(i8*) #1

declare dso_local i32 @synth_field_string_size(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
