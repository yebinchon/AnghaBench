; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_cmp_entries_key.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_cmp_entries_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_sort_entry = type { %struct.tracing_map_elt* }
%struct.tracing_map_elt = type { i8*, %struct.tracing_map_field*, %struct.TYPE_2__* }
%struct.tracing_map_field = type { i32 (i8*, i8*)*, i32 }
%struct.TYPE_2__ = type { %struct.tracing_map_sort_key }
%struct.tracing_map_sort_key = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_entries_key(%struct.tracing_map_sort_entry** %0, %struct.tracing_map_sort_entry** %1) #0 {
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
  %22 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.tracing_map_sort_key* %24, %struct.tracing_map_sort_key** %7, align 8
  %25 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %5, align 8
  %26 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %25, i32 0, i32 1
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
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.tracing_map_field*, %struct.tracing_map_field** %8, align 8
  %39 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %37, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %44 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.tracing_map_field*, %struct.tracing_map_field** %8, align 8
  %47 = getelementptr inbounds %struct.tracing_map_field, %struct.tracing_map_field* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %45, i64 %49
  store i8* %50, i8** %11, align 8
  %51 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 %51(i8* %52, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %56 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %2
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %2
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
