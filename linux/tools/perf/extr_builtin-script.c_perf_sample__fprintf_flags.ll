; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_IP_FLAG_CHARS = common dso_local global i8* null, align 8
@PERF_IP_FLAG_IN_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"  %-15s%4s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"(x)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PERF_IP_FLAG_TRACE_BEGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"  tr strt %-7s%4s \00", align 1
@PERF_IP_FLAG_TRACE_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"  tr end  %-7s%4s \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  %-19s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @perf_sample__fprintf_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [33 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** @PERF_IP_FLAG_CHARS, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** @PERF_IP_FLAG_CHARS, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PERF_IP_FLAG_IN_TX, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PERF_IP_FLAG_IN_TX, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i8* @sample_flags_to_name(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %32)
  store i32 %33, i32* %3, align 4
  br label %133

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PERF_IP_FLAG_IN_TX, align 4
  %42 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = call i8* @sample_flags_to_name(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %55)
  store i32 %56, i32* %3, align 4
  br label %133

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PERF_IP_FLAG_IN_TX, align 4
  %66 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %64, %68
  %70 = call i8* @sample_flags_to_name(i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %80 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* %79)
  store i32 %80, i32* %3, align 4
  br label %133

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %58
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 %99
  store i8 %96, i8* %100, align 1
  br label %101

101:                                              ; preds = %91, %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %4, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %83

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %121, %107
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 32
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 %118
  store i8 63, i8* %119, align 1
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %4, align 4
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %108

126:                                              ; preds = %108
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %132 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %131)
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %73, %49, %26
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sample_flags_to_name(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
