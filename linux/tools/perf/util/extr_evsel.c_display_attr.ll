; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_display_attr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_display_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%.60s\0A\00", align 1
@graph_dotted_line = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"perf_event_attr:\0A\00", align 1
@__open_attr__fprintf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_attr*)* @display_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_attr(%struct.perf_event_attr* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %2, align 8
  %3 = load i32, i32* @verbose, align 4
  %4 = icmp sge i32 %3, 2
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load i8*, i8** @graph_dotted_line, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %13 = load i32, i32* @__open_attr__fprintf, align 4
  %14 = call i32 @perf_event_attr__fprintf(i32 %11, %struct.perf_event_attr* %12, i32 %13, i32* null)
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @graph_dotted_line, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @perf_event_attr__fprintf(i32, %struct.perf_event_attr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
