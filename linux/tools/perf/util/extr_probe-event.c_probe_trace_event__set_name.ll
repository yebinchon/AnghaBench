; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_probe_trace_event__set_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_probe_trace_event__set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.perf_probe_event = type { i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.strlist = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@PERFPROBE_GROUP = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_event*, %struct.perf_probe_event*, %struct.strlist*, i32)* @probe_trace_event__set_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_trace_event__set_name(%struct.probe_trace_event* %0, %struct.perf_probe_event* %1, %struct.strlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.probe_trace_event*, align 8
  %7 = alloca %struct.perf_probe_event*, align 8
  %8 = alloca %struct.strlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %6, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %7, align 8
  store %struct.strlist* %2, %struct.strlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %15 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %20 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %25 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  br label %68

27:                                               ; preds = %18, %4
  %28 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %29 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %34 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  br label %67

36:                                               ; preds = %27
  %37 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %38 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %44 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %51 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strisglob(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %58 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %10, align 8
  br label %66

61:                                               ; preds = %49, %42, %36
  %62 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %63 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %32
  br label %68

68:                                               ; preds = %67, %23
  %69 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %70 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %75 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %80 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %11, align 8
  br label %94

82:                                               ; preds = %73, %68
  %83 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %84 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %89 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %11, align 8
  br label %93

91:                                               ; preds = %82
  %92 = load i8*, i8** @PERFPROBE_GROUP, align 8
  store i8* %92, i8** %11, align 8
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %78
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %96 = load i8*, i8** %10, align 8
  %97 = load %struct.strlist*, %struct.strlist** %8, align 8
  %98 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %99 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @get_new_event_name(i8* %95, i32 64, i8* %96, %struct.strlist* %97, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %134

108:                                              ; preds = %94
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @strdup(i8* %110)
  %112 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %113 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i8* @strdup(i8* %114)
  %116 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %117 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %119 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %108
  %123 = load %struct.probe_trace_event*, %struct.probe_trace_event** %6, align 8
  %124 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %122, %108
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %122
  %131 = load %struct.strlist*, %struct.strlist** %8, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @strlist__add(%struct.strlist* %131, i8* %132)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %127, %106
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strisglob(i8*) #1

declare dso_local i32 @get_new_event_name(i8*, i32, i8*, %struct.strlist*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlist__add(%struct.strlist*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
