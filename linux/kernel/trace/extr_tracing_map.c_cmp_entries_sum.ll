; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_cmp_entries_sum.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_cmp_entries_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_sort_entry = type { %struct.tracing_map_elt* }
%struct.tracing_map_elt = type { %struct.tracing_map_field*, %struct.TYPE_2__* }
%struct.tracing_map_field = type { i32 (i8*, i8*)*, i32 }
%struct.TYPE_2__ = type { %struct.tracing_map_sort_key }
%struct.tracing_map_sort_key = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_entries_sum(%struct.tracing_map_sort_entry** %0, %struct.tracing_map_sort_entry** %1) #0 {
  %3 = alloca %struct.tracing_map_sort_entry**, align 8
  %4 = alloca %struct.tracing_map_sort_entry**, align 8
  %5 = alloca %struct.tracing_map_elt*, align 8
  %6 = alloca %struct.tracing_map_elt*, align 8
  %7 = alloca %struct.tracing_map_sort_key*, align 8
  %8 = alloca %struct.tracing_map_field*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.tracing_map_sort_entry** %0, %struct.tracing_map_sort_entry*** %3, align 8
  store %struct.tracing_map_sort_entry** %1, %struct.tracing_map_sort_entry*** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %3, align 8
  %14 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %13, align 8
  %15 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %14, i32 0, i32 0
  %16 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %15, align 8
  store %struct.tracing_map_elt* %16, %struct.tracing_map_elt** %5, align 8
  %17 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %4, align 8
  %18 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %17, align 8
  %19 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %18, i32 0, i32 0
  %20 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %19, align 8
  store %struct.tracing_map_elt* %20, %struct.tracing_map_elt** %6, align 8
  %21 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %5, align 8
  %22 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.tracing_map_sort_key* %24, %struct.tracing_map_sort_key** %7, align 8
  %25 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %5, align 8
  %26 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %25, i32 0, i32 0
  %27 = load %struct.tracing_map_field*, %struct.tracing_map_field** %26, align 8
  %28 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %29 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %27, i64 %30
  store %struct.tracing_map_field* %31, %struct.tracing_map_field** %8, align 8
  %32 = load %struct.tracing_map_field*, %struct.tracing_map_field** %8, align 8
  %33 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %32, i32 0, i32 0
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %33, align 8
  store i32 (i8*, i8*)* %34, i32 (i8*, i8*)** %9, align 8
  %35 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %5, align 8
  %36 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %35, i32 0, i32 0
  %37 = load %struct.tracing_map_field*, %struct.tracing_map_field** %36, align 8
  %38 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %39 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %37, i64 %40
  %42 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %41, i32 0, i32 1
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %45 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %44, i32 0, i32 0
  %46 = load %struct.tracing_map_field*, %struct.tracing_map_field** %45, align 8
  %47 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %48 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %46, i64 %49
  %51 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %50, i32 0, i32 1
  %52 = bitcast i32* %51 to i8*
  store i8* %52, i8** %11, align 8
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 %53(i8* %54, i8* %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %58 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %2
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %2
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
