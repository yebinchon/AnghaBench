; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c___annotate_browser__search.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c___annotate_browser__search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotate_browser = type { i32, i32 }
%struct.annotation_line = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"String not found!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotate_browser*)* @__annotate_browser__search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__annotate_browser__search(%struct.annotate_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.annotate_browser*, align 8
  %4 = alloca %struct.annotation_line*, align 8
  %5 = alloca i32, align 4
  store %struct.annotate_browser* %0, %struct.annotate_browser** %3, align 8
  %6 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %7 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %8 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.annotation_line* @annotate_browser__find_string(%struct.annotate_browser* %6, i32 %9, i32* %5)
  store %struct.annotation_line* %10, %struct.annotation_line** %4, align 8
  %11 = load %struct.annotation_line*, %struct.annotation_line** %4, align 8
  %12 = icmp eq %struct.annotation_line* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @ui_helpline__puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %17 = load %struct.annotation_line*, %struct.annotation_line** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @annotate_browser__set_top(%struct.annotate_browser* %16, %struct.annotation_line* %17, i32 %18)
  %20 = load %struct.annotate_browser*, %struct.annotate_browser** %3, align 8
  %21 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.annotation_line* @annotate_browser__find_string(%struct.annotate_browser*, i32, i32*) #1

declare dso_local i32 @ui_helpline__puts(i8*) #1

declare dso_local i32 @annotate_browser__set_top(%struct.annotate_browser*, %struct.annotation_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
