; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_line_range__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_line_range__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_range = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_range__init(%struct.line_range* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.line_range*, align 8
  store %struct.line_range* %0, %struct.line_range** %3, align 8
  %4 = load %struct.line_range*, %struct.line_range** %3, align 8
  %5 = call i32 @memset(%struct.line_range* %4, i32 0, i32 4)
  %6 = call i32 @intlist__new(i32* null)
  %7 = load %struct.line_range*, %struct.line_range** %3, align 8
  %8 = getelementptr inbounds %struct.line_range, %struct.line_range* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.line_range*, %struct.line_range** %3, align 8
  %10 = getelementptr inbounds %struct.line_range, %struct.line_range* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @memset(%struct.line_range*, i32, i32) #1

declare dso_local i32 @intlist__new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
