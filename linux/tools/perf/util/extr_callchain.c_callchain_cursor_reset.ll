; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_cursor_reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_cursor_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { %struct.callchain_cursor_node*, %struct.callchain_cursor_node**, i64 }
%struct.callchain_cursor_node = type { i32, %struct.callchain_cursor_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callchain_cursor_reset(%struct.callchain_cursor* %0) #0 {
  %2 = alloca %struct.callchain_cursor*, align 8
  %3 = alloca %struct.callchain_cursor_node*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %2, align 8
  %4 = load %struct.callchain_cursor*, %struct.callchain_cursor** %2, align 8
  %5 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.callchain_cursor*, %struct.callchain_cursor** %2, align 8
  %7 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %6, i32 0, i32 0
  %8 = load %struct.callchain_cursor*, %struct.callchain_cursor** %2, align 8
  %9 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %8, i32 0, i32 1
  store %struct.callchain_cursor_node** %7, %struct.callchain_cursor_node*** %9, align 8
  %10 = load %struct.callchain_cursor*, %struct.callchain_cursor** %2, align 8
  %11 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %10, i32 0, i32 0
  %12 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %11, align 8
  store %struct.callchain_cursor_node* %12, %struct.callchain_cursor_node** %3, align 8
  br label %13

13:                                               ; preds = %21, %1
  %14 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %15 = icmp ne %struct.callchain_cursor_node* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %18 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @map__zput(i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %23 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %22, i32 0, i32 1
  %24 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %23, align 8
  store %struct.callchain_cursor_node* %24, %struct.callchain_cursor_node** %3, align 8
  br label %13

25:                                               ; preds = %13
  ret void
}

declare dso_local i32 @map__zput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
