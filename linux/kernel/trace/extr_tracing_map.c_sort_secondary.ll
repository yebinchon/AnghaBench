; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_sort_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_sort_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i32 }
%struct.tracing_map_sort_entry = type { i32 }
%struct.tracing_map_sort_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map*, %struct.tracing_map_sort_entry**, i32, %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key*)* @sort_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_secondary(%struct.tracing_map* %0, %struct.tracing_map_sort_entry** %1, i32 %2, %struct.tracing_map_sort_key* %3, %struct.tracing_map_sort_key* %4) #0 {
  %6 = alloca %struct.tracing_map*, align 8
  %7 = alloca %struct.tracing_map_sort_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tracing_map_sort_key*, align 8
  %10 = alloca %struct.tracing_map_sort_key*, align 8
  %11 = alloca i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)*, align 8
  %12 = alloca i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tracing_map_sort_entry**, align 8
  %17 = alloca %struct.tracing_map_sort_entry**, align 8
  store %struct.tracing_map* %0, %struct.tracing_map** %6, align 8
  store %struct.tracing_map_sort_entry** %1, %struct.tracing_map_sort_entry*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tracing_map_sort_key* %3, %struct.tracing_map_sort_key** %9, align 8
  store %struct.tracing_map_sort_key* %4, %struct.tracing_map_sort_key** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %18 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %19 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %9, align 8
  %20 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_key(%struct.tracing_map* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_key, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %11, align 8
  br label %26

25:                                               ; preds = %5
  store i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_sum, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %11, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %28 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %10, align 8
  %29 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @is_key(%struct.tracing_map* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_key, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %12, align 8
  br label %35

34:                                               ; preds = %26
  store i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_sum, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %12, align 8
  br label %35

35:                                               ; preds = %34, %33
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %38, 1
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %42, i64 %44
  store %struct.tracing_map_sort_entry** %45, %struct.tracing_map_sort_entry*** %16, align 8
  %46 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %46, i64 %49
  store %struct.tracing_map_sort_entry** %50, %struct.tracing_map_sort_entry*** %17, align 8
  %51 = load i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)*, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %11, align 8
  %52 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %16, align 8
  %53 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %17, align 8
  %54 = call i32 %51(%struct.tracing_map_sort_entry** %52, %struct.tracing_map_sort_entry** %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %41
  %57 = load i32, i32* %15, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 %60, 2
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %88

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %15, align 4
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %88

71:                                               ; preds = %65
  %72 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %73 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %10, align 8
  %74 = call i32 @set_sort_key(%struct.tracing_map* %72, %struct.tracing_map_sort_key* %73)
  %75 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %75, i64 %77
  %79 = load i32, i32* %15, align 4
  %80 = load i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)*, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %12, align 8
  %81 = bitcast i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* %80 to i32 (i8*, i8*)*
  %82 = call i32 @sort(%struct.tracing_map_sort_entry** %78, i32 %79, i32 8, i32 (i8*, i8*)* %81, i32* null)
  %83 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %84 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %9, align 8
  %85 = call i32 @set_sort_key(%struct.tracing_map* %83, %struct.tracing_map_sort_key* %84)
  %86 = load i32, i32* %13, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %88

88:                                               ; preds = %71, %68, %63
  %89 = load i32, i32* %13, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %36

91:                                               ; preds = %36
  ret void
}

declare dso_local i64 @is_key(%struct.tracing_map*, i32) #1

declare dso_local i32 @cmp_entries_key(%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**) #1

declare dso_local i32 @cmp_entries_sum(%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**) #1

declare dso_local i32 @set_sort_key(%struct.tracing_map*, %struct.tracing_map_sort_key*) #1

declare dso_local i32 @sort(%struct.tracing_map_sort_entry**, i32, i32, i32 (i8*, i8*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
