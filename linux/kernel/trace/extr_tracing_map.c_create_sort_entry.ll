; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_create_sort_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_create_sort_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_sort_entry = type { %struct.tracing_map_elt*, i8* }
%struct.tracing_map_elt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracing_map_sort_entry* (i8*, %struct.tracing_map_elt*)* @create_sort_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracing_map_sort_entry* @create_sort_entry(i8* %0, %struct.tracing_map_elt* %1) #0 {
  %3 = alloca %struct.tracing_map_sort_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tracing_map_elt*, align 8
  %6 = alloca %struct.tracing_map_sort_entry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tracing_map_sort_entry* @kzalloc(i32 16, i32 %7)
  store %struct.tracing_map_sort_entry* %8, %struct.tracing_map_sort_entry** %6, align 8
  %9 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %6, align 8
  %10 = icmp ne %struct.tracing_map_sort_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.tracing_map_sort_entry* null, %struct.tracing_map_sort_entry** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %6, align 8
  %15 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %5, align 8
  %17 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %6, align 8
  %18 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %17, i32 0, i32 0
  store %struct.tracing_map_elt* %16, %struct.tracing_map_elt** %18, align 8
  %19 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %6, align 8
  store %struct.tracing_map_sort_entry* %19, %struct.tracing_map_sort_entry** %3, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %3, align 8
  ret %struct.tracing_map_sort_entry* %21
}

declare dso_local %struct.tracing_map_sort_entry* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
