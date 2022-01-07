; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex3_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex3_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@full_range = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@text_only = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Usage:\0A  -a display wider latency range\0A  -t text only\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"  heatmap of IO latency\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@sym = common dso_local global i8** null, align 8
@num_colors = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"  %s %s\00", align 1
@color = common dso_local global i8** null, align 8
@nocolor = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c" - many events with this latency\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" - few events\0A\00", align 1
@map_fd = common dso_local global i32* null, align 8

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
  store i32 1048576, i32* %9, align 4
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %11 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @snprintf(i8* %12, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %18 = call i64 @setrlimit(i32 %17, %struct.rlimit* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %121

22:                                               ; preds = %2
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = call i64 @load_bpf_file(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** @bpf_log_buf, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %121

29:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* @full_range, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* @text_only, align 4
  br label %63

52:                                               ; preds = %43
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %121

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %30

68:                                               ; preds = %30
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* @text_only, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i8**, i8*** @sym, align 8
  %74 = load i32, i32* @num_colors, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %78)
  br label %89

80:                                               ; preds = %68
  %81 = load i8**, i8*** @color, align 8
  %82 = load i32, i32* @num_colors, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @nocolor, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %80, %72
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %91 = load i32, i32* @text_only, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8**, i8*** @sym, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  br label %104

98:                                               ; preds = %89
  %99 = load i8**, i8*** @color, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** @nocolor, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %98, %93
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %118, %104
  %107 = load i32, i32* %8, align 4
  %108 = srem i32 %107, 20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (...) @print_banner()
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i32*, i32** @map_fd, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @print_hist(i32 %115)
  %117 = call i32 @sleep(i32 2)
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %106

121:                                              ; preds = %60, %26, %20
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_banner(...) #1

declare dso_local i32 @print_hist(i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
