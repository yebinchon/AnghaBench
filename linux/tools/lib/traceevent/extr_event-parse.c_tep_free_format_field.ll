; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_free_format_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_free_format_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { i64, i64, %struct.tep_format_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tep_free_format_field(%struct.tep_format_field* %0) #0 {
  %2 = alloca %struct.tep_format_field*, align 8
  store %struct.tep_format_field* %0, %struct.tep_format_field** %2, align 8
  %3 = load %struct.tep_format_field*, %struct.tep_format_field** %2, align 8
  %4 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %3, i32 0, i32 2
  %5 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %6 = call i32 @free(%struct.tep_format_field* %5)
  %7 = load %struct.tep_format_field*, %struct.tep_format_field** %2, align 8
  %8 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.tep_format_field*, %struct.tep_format_field** %2, align 8
  %11 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.tep_format_field*, %struct.tep_format_field** %2, align 8
  %16 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.tep_format_field*
  %19 = call i32 @free(%struct.tep_format_field* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.tep_format_field*, %struct.tep_format_field** %2, align 8
  %22 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.tep_format_field*
  %25 = call i32 @free(%struct.tep_format_field* %24)
  %26 = load %struct.tep_format_field*, %struct.tep_format_field** %2, align 8
  %27 = call i32 @free(%struct.tep_format_field* %26)
  ret void
}

declare dso_local i32 @free(%struct.tep_format_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
