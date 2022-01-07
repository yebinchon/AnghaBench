; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i32, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"trace.add_events\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"event selector. use 'perf list' to list available events\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"trace.show_timestamp\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"trace.show_duration\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"trace.show_arg_names\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"trace.show_zeros\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"trace.show_zeros has to be set when trace.show_arg_names=no\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"trace.show_prefix\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"trace.no_inherit\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"trace.args_alignment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @trace__config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.option, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.trace*
  store %struct.trace* %13, %struct.trace** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.trace*, %struct.trace** %7, align 8
  %19 = getelementptr inbounds %struct.trace, %struct.trace* %18, i32 0, i32 7
  %20 = call i32 @OPT_CALLBACK(i8 signext 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 (%struct.option*, i8*, i32)* @parse_events_option)
  %21 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @parse_events_option(%struct.option* %9, i8* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 -1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %17
  br label %129

27:                                               ; preds = %3
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @perf_config_bool(i8* %32, i8* %33)
  %35 = load %struct.trace*, %struct.trace** %7, align 8
  %36 = getelementptr inbounds %struct.trace, %struct.trace* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  br label %128

37:                                               ; preds = %27
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @perf_config_bool(i8* %42, i8* %43)
  %45 = load %struct.trace*, %struct.trace** %7, align 8
  %46 = getelementptr inbounds %struct.trace, %struct.trace* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  br label %127

47:                                               ; preds = %37
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @perf_config_bool(i8* %52, i8* %53)
  %55 = load %struct.trace*, %struct.trace** %7, align 8
  %56 = getelementptr inbounds %struct.trace, %struct.trace* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.trace*, %struct.trace** %7, align 8
  %58 = getelementptr inbounds %struct.trace, %struct.trace* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load %struct.trace*, %struct.trace** %7, align 8
  %63 = getelementptr inbounds %struct.trace, %struct.trace* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %51
  br label %126

65:                                               ; preds = %47
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @perf_config_bool(i8* %70, i8* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load %struct.trace*, %struct.trace** %7, align 8
  %75 = getelementptr inbounds %struct.trace, %struct.trace* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 @pr_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  br label %130

83:                                               ; preds = %78, %69
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.trace*, %struct.trace** %7, align 8
  %86 = getelementptr inbounds %struct.trace, %struct.trace* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %125

87:                                               ; preds = %65
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = call i8* @perf_config_bool(i8* %92, i8* %93)
  %95 = load %struct.trace*, %struct.trace** %7, align 8
  %96 = getelementptr inbounds %struct.trace, %struct.trace* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  br label %124

97:                                               ; preds = %87
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i8* @perf_config_bool(i8* %102, i8* %103)
  %105 = load %struct.trace*, %struct.trace** %7, align 8
  %106 = getelementptr inbounds %struct.trace, %struct.trace* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  br label %123

108:                                              ; preds = %97
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i64 @perf_config_int(i32* %11, i8* %113, i8* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.trace*, %struct.trace** %7, align 8
  %120 = getelementptr inbounds %struct.trace, %struct.trace* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %108
  br label %123

123:                                              ; preds = %122, %101
  br label %124

124:                                              ; preds = %123, %91
  br label %125

125:                                              ; preds = %124, %83
  br label %126

126:                                              ; preds = %125, %64
  br label %127

127:                                              ; preds = %126, %41
  br label %128

128:                                              ; preds = %127, %31
  br label %129

129:                                              ; preds = %128, %26
  br label %130

130:                                              ; preds = %129, %81
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @OPT_CALLBACK(i8 signext, i8*, i32*, i8*, i8*, i64 (%struct.option*, i8*, i32)*) #1

declare dso_local i64 @parse_events_option(%struct.option*, i8*, i32) #1

declare dso_local i8* @perf_config_bool(i8*, i8*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i64 @perf_config_int(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
