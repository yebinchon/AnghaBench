; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }
%struct.list_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32*, %struct.perf_event_attr*, i8*, %struct.list_head*)* @add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event(%struct.list_head* %0, i32* %1, %struct.perf_event_attr* %2, i8* %3, %struct.list_head* %4) #0 {
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.perf_event_attr* %2, %struct.perf_event_attr** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.list_head* %4, %struct.list_head** %10, align 8
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.list_head*, %struct.list_head** %10, align 8
  %16 = call i64 @__add_event(%struct.list_head* %11, i32* %12, %struct.perf_event_attr* %13, i8* %14, i32* null, %struct.list_head* %15, i32 0, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i32 [ 0, %18 ], [ %21, %19 ]
  ret i32 %23
}

declare dso_local i64 @__add_event(%struct.list_head*, i32*, %struct.perf_event_attr*, i8*, i32*, %struct.list_head*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
