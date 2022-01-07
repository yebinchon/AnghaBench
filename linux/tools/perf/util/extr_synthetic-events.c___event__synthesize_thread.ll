; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c___event__synthesize_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c___event__synthesize_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { i32 }
%struct.perf_tool = type { i32 }
%struct.machine = type { i8* }
%struct.dirent = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/proc/%d/task\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"couldn't open %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.perf_event*, %union.perf_event*, %union.perf_event*, %union.perf_event*, i32, i32, i32, %struct.perf_tool*, %struct.machine*, i32)* @__event__synthesize_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__event__synthesize_thread(%union.perf_event* %0, %union.perf_event* %1, %union.perf_event* %2, %union.perf_event* %3, i32 %4, i32 %5, i32 %6, %struct.perf_tool* %7, %struct.machine* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %union.perf_event*, align 8
  %13 = alloca %union.perf_event*, align 8
  %14 = alloca %union.perf_event*, align 8
  %15 = alloca %union.perf_event*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.perf_tool*, align 8
  %20 = alloca %struct.machine*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.dirent*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %12, align 8
  store %union.perf_event* %1, %union.perf_event** %13, align 8
  store %union.perf_event* %2, %union.perf_event** %14, align 8
  store %union.perf_event* %3, %union.perf_event** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.perf_tool* %7, %struct.perf_tool** %19, align 8
  store %struct.machine* %8, %struct.machine** %20, align 8
  store i32 %9, i32* %21, align 4
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %22, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %23, align 8
  store i32 0, i32* %28, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %74, label %38

38:                                               ; preds = %10
  %39 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %40 = load %union.perf_event*, %union.perf_event** %12, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load %struct.machine*, %struct.machine** %20, align 8
  %44 = call i32 @perf_event__synthesize_comm(%struct.perf_tool* %39, %union.perf_event* %40, i32 %41, i32 %42, %struct.machine* %43)
  store i32 %44, i32* %26, align 4
  %45 = load i32, i32* %26, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

48:                                               ; preds = %38
  %49 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %50 = load %union.perf_event*, %union.perf_event** %15, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %26, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.machine*, %struct.machine** %20, align 8
  %55 = call i64 @perf_event__synthesize_namespaces(%struct.perf_tool* %49, %union.perf_event* %50, i32 %51, i32 %52, i32 %53, %struct.machine* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

58:                                               ; preds = %48
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %26, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %64 = load %union.perf_event*, %union.perf_event** %13, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %26, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.machine*, %struct.machine** %20, align 8
  %69 = load i32, i32* %21, align 4
  %70 = call i32 @perf_event__synthesize_mmap_events(%struct.perf_tool* %63, %union.perf_event* %64, i32 %65, i32 %66, i32 %67, %struct.machine* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

73:                                               ; preds = %62, %58
  store i32 0, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

74:                                               ; preds = %10
  %75 = load %struct.machine*, %struct.machine** %20, align 8
  %76 = call i64 @machine__is_default_guest(%struct.machine* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

79:                                               ; preds = %74
  %80 = trunc i64 %33 to i32
  %81 = load %struct.machine*, %struct.machine** %20, align 8
  %82 = getelementptr inbounds %struct.machine, %struct.machine* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @snprintf(i8* %35, i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %83, i32 %84)
  %86 = call i32* @opendir(i8* %35)
  store i32* %86, i32** %24, align 8
  %87 = load i32*, i32** %24, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %158, %104, %91
  %93 = load i32*, i32** %24, align 8
  %94 = call %struct.dirent* @readdir(i32* %93)
  store %struct.dirent* %94, %struct.dirent** %25, align 8
  %95 = icmp ne %struct.dirent* %94, null
  br i1 %95, label %96, label %159

96:                                               ; preds = %92
  %97 = load %struct.dirent*, %struct.dirent** %25, align 8
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strtol(i32 %99, i8** %30, i32 10)
  store i32 %100, i32* %31, align 4
  %101 = load i8*, i8** %30, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %92

105:                                              ; preds = %96
  store i32 -1, i32* %28, align 4
  %106 = load %union.perf_event*, %union.perf_event** %12, align 8
  %107 = load i32, i32* %31, align 4
  %108 = load %struct.machine*, %struct.machine** %20, align 8
  %109 = call i64 @perf_event__prepare_comm(%union.perf_event* %106, i32 %107, %struct.machine* %108, i32* %26, i32* %27)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %159

112:                                              ; preds = %105
  %113 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %114 = load %union.perf_event*, %union.perf_event** %14, align 8
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %26, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.machine*, %struct.machine** %20, align 8
  %120 = call i64 @perf_event__synthesize_fork(%struct.perf_tool* %113, %union.perf_event* %114, i32 %115, i32 %116, i32 %117, i32 %118, %struct.machine* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %159

123:                                              ; preds = %112
  %124 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %125 = load %union.perf_event*, %union.perf_event** %15, align 8
  %126 = load i32, i32* %31, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.machine*, %struct.machine** %20, align 8
  %130 = call i64 @perf_event__synthesize_namespaces(%struct.perf_tool* %124, %union.perf_event* %125, i32 %126, i32 %127, i32 %128, %struct.machine* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %159

133:                                              ; preds = %123
  %134 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %135 = load %union.perf_event*, %union.perf_event** %12, align 8
  %136 = load %struct.machine*, %struct.machine** %20, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i64 @perf_tool__process_synth_event(%struct.perf_tool* %134, %union.perf_event* %135, %struct.machine* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %159

141:                                              ; preds = %133
  store i32 0, i32* %28, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.perf_tool*, %struct.perf_tool** %19, align 8
  %147 = load %union.perf_event*, %union.perf_event** %13, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.machine*, %struct.machine** %20, align 8
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @perf_event__synthesize_mmap_events(%struct.perf_tool* %146, %union.perf_event* %147, i32 %148, i32 %149, i32 %150, %struct.machine* %151, i32 %152)
  store i32 %153, i32* %28, align 4
  %154 = load i32, i32* %28, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %159

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157, %141
  br label %92

159:                                              ; preds = %156, %140, %132, %122, %111, %92
  %160 = load i32*, i32** %24, align 8
  %161 = call i32 @closedir(i32* %160)
  %162 = load i32, i32* %28, align 4
  store i32 %162, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %163

163:                                              ; preds = %159, %89, %78, %73, %72, %57, %47
  %164 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %11, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_event__synthesize_comm(%struct.perf_tool*, %union.perf_event*, i32, i32, %struct.machine*) #2

declare dso_local i64 @perf_event__synthesize_namespaces(%struct.perf_tool*, %union.perf_event*, i32, i32, i32, %struct.machine*) #2

declare dso_local i32 @perf_event__synthesize_mmap_events(%struct.perf_tool*, %union.perf_event*, i32, i32, i32, %struct.machine*, i32) #2

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strtol(i32, i8**, i32) #2

declare dso_local i64 @perf_event__prepare_comm(%union.perf_event*, i32, %struct.machine*, i32*, i32*) #2

declare dso_local i64 @perf_event__synthesize_fork(%struct.perf_tool*, %union.perf_event*, i32, i32, i32, i32, %struct.machine*) #2

declare dso_local i64 @perf_tool__process_synth_event(%struct.perf_tool*, %union.perf_event*, %struct.machine*, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
