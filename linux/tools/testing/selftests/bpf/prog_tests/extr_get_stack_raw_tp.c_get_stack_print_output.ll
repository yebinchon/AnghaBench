; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_get_stack_raw_tp.c_get_stack_print_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_get_stack_raw_tp.c_get_stack_print_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.get_stack_trace_t = type { i32, i64, i64, i32* }
%struct.ksym = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"___bpf_prog_run\00", align 1
@get_stack_print_output.cnt = internal global i32 0, align 4
@env = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"kern_stack\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"corrupted kernel stack\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"user_stack\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"corrupted user stack\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @get_stack_print_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_stack_print_output(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.get_stack_trace_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ksym*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.get_stack_trace_t*
  store %struct.get_stack_trace_t* %19, %struct.get_stack_trace_t** %12, align 8
  %20 = load i32, i32* @get_stack_print_output.cnt, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @get_stack_print_output.cnt, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 32
  br i1 %24, label %25, label %70

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  br label %65

38:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.ksym* @ksym_search(i32 %48)
  store %struct.ksym* %49, %struct.ksym** %15, align 8
  %50 = load %struct.ksym*, %struct.ksym** %15, align 8
  %51 = icmp ne %struct.ksym* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.ksym*, %struct.ksym** %15, align 8
  %54 = getelementptr inbounds %struct.ksym, %struct.ksym* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @strcmp(i32 %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %17, align 4
  br label %64

60:                                               ; preds = %52, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %39

64:                                               ; preds = %59, %39
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %124

70:                                               ; preds = %4
  %71 = load %struct.get_stack_trace_t*, %struct.get_stack_trace_t** %12, align 8
  %72 = getelementptr inbounds %struct.get_stack_trace_t, %struct.get_stack_trace_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = icmp sgt i32 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %112

83:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load %struct.get_stack_trace_t*, %struct.get_stack_trace_t** %12, align 8
  %90 = getelementptr inbounds %struct.get_stack_trace_t, %struct.get_stack_trace_t* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.ksym* @ksym_search(i32 %95)
  store %struct.ksym* %96, %struct.ksym** %15, align 8
  %97 = load %struct.ksym*, %struct.ksym** %15, align 8
  %98 = icmp ne %struct.ksym* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = load %struct.ksym*, %struct.ksym** %15, align 8
  %101 = getelementptr inbounds %struct.ksym, %struct.ksym* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = call i64 @strcmp(i32 %102, i8* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 1, i32* %9, align 4
  br label %111

107:                                              ; preds = %99, %88
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %84

111:                                              ; preds = %106, %84
  br label %112

112:                                              ; preds = %111, %79
  %113 = load %struct.get_stack_trace_t*, %struct.get_stack_trace_t** %12, align 8
  %114 = getelementptr inbounds %struct.get_stack_trace_t, %struct.get_stack_trace_t* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.get_stack_trace_t*, %struct.get_stack_trace_t** %12, align 8
  %119 = getelementptr inbounds %struct.get_stack_trace_t, %struct.get_stack_trace_t* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %122, %117, %112
  br label %124

124:                                              ; preds = %123, %69
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @CHECK(i32 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %142

142:                                              ; preds = %136, %133
  ret void
}

declare dso_local %struct.ksym* @ksym_search(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @CHECK(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
