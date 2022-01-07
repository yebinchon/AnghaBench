; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_update_option.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_update_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_plugin_options = type { i32, i64, i64, %struct.trace_plugin_options* }
%struct.tep_plugin_option = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@trace_plugin_options = common dso_local global %struct.trace_plugin_options* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tep_plugin_option*)* @update_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_option(i8* %0, %struct.tep_plugin_option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tep_plugin_option*, align 8
  %6 = alloca %struct.trace_plugin_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tep_plugin_option* %1, %struct.tep_plugin_option** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %11 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %16 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %116

22:                                               ; preds = %14
  br label %37

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %116

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** @trace_plugin_options, align 8
  store %struct.trace_plugin_options* %38, %struct.trace_plugin_options** %6, align 8
  br label %39

39:                                               ; preds = %76, %37
  %40 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %41 = icmp ne %struct.trace_plugin_options* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %44 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %76

48:                                               ; preds = %42
  %49 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %50 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcmp(i64 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %76

56:                                               ; preds = %48
  %57 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %58 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %61 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i64 %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %76

66:                                               ; preds = %56
  %67 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %68 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %69 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @update_option_value(%struct.tep_plugin_option* %67, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %112

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %65, %55, %47
  %77 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %78 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %77, i32 0, i32 3
  %79 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %78, align 8
  store %struct.trace_plugin_options* %79, %struct.trace_plugin_options** %6, align 8
  br label %39

80:                                               ; preds = %75, %39
  %81 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** @trace_plugin_options, align 8
  store %struct.trace_plugin_options* %81, %struct.trace_plugin_options** %6, align 8
  br label %82

82:                                               ; preds = %107, %80
  %83 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %84 = icmp ne %struct.trace_plugin_options* %83, null
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  %86 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %87 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %107

91:                                               ; preds = %85
  %92 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %93 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %96 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i64 %94, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %107

101:                                              ; preds = %91
  %102 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %103 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %104 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @update_option_value(%struct.tep_plugin_option* %102, i32 %105)
  store i32 %106, i32* %8, align 4
  br label %111

107:                                              ; preds = %100, %90
  %108 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %6, align 8
  %109 = getelementptr inbounds %struct.trace_plugin_options, %struct.trace_plugin_options* %108, i32 0, i32 3
  %110 = load %struct.trace_plugin_options*, %struct.trace_plugin_options** %109, align 8
  store %struct.trace_plugin_options* %110, %struct.trace_plugin_options** %6, align 8
  br label %82

111:                                              ; preds = %101, %82
  br label %112

112:                                              ; preds = %111, %74
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %28, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @update_option_value(%struct.tep_plugin_option*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
