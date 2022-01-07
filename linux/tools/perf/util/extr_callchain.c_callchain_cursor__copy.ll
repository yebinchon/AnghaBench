; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_cursor__copy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_cursor__copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { i32 }
%struct.callchain_cursor_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_cursor__copy(%struct.callchain_cursor* %0, %struct.callchain_cursor* %1) #0 {
  %3 = alloca %struct.callchain_cursor*, align 8
  %4 = alloca %struct.callchain_cursor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.callchain_cursor_node*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %3, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %8 = call i32 @callchain_cursor_reset(%struct.callchain_cursor* %7)
  %9 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %10 = call i32 @callchain_cursor_commit(%struct.callchain_cursor* %9)
  br label %11

11:                                               ; preds = %2, %49
  %12 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %13 = call %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %12)
  store %struct.callchain_cursor_node* %13, %struct.callchain_cursor_node** %6, align 8
  %14 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %15 = icmp eq %struct.callchain_cursor_node* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %52

17:                                               ; preds = %11
  %18 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %19 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %20 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %23 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %26 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %29 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %32 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %31, i32 0, i32 4
  %33 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %34 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %37 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %40 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %43 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @callchain_cursor_append(%struct.callchain_cursor* %18, i32 %21, i32 %24, i32 %27, i32 %30, i32* %32, i32 %35, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %17
  br label %52

49:                                               ; preds = %17
  %50 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %51 = call i32 @callchain_cursor_advance(%struct.callchain_cursor* %50)
  br label %11

52:                                               ; preds = %48, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @callchain_cursor_reset(%struct.callchain_cursor*) #1

declare dso_local i32 @callchain_cursor_commit(%struct.callchain_cursor*) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor*) #1

declare dso_local i32 @callchain_cursor_append(%struct.callchain_cursor*, i32, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @callchain_cursor_advance(%struct.callchain_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
