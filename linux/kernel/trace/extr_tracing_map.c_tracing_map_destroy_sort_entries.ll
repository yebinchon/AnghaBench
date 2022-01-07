; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_destroy_sort_entries.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_destroy_sort_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_sort_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_map_destroy_sort_entries(%struct.tracing_map_sort_entry** %0, i32 %1) #0 {
  %3 = alloca %struct.tracing_map_sort_entry**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tracing_map_sort_entry** %0, %struct.tracing_map_sort_entry*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %11, i64 %13
  %15 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %14, align 8
  %16 = call i32 @destroy_sort_entry(%struct.tracing_map_sort_entry* %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %3, align 8
  %22 = call i32 @vfree(%struct.tracing_map_sort_entry** %21)
  ret void
}

declare dso_local i32 @destroy_sort_entry(%struct.tracing_map_sort_entry*) #1

declare dso_local i32 @vfree(%struct.tracing_map_sort_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
