; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_detect_dups.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_detect_dups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_sort_entry = type { i8* }

@cmp_entries_dup = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Duplicates detected: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map_sort_entry**, i32, i32)* @detect_dups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_dups(%struct.tracing_map_sort_entry** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tracing_map_sort_entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.tracing_map_sort_entry** %0, %struct.tracing_map_sort_entry*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %63

14:                                               ; preds = %3
  %15 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* @cmp_entries_dup, align 8
  %18 = inttoptr i64 %17 to i32 (i8*, i8*)*
  %19 = call i32 @sort(%struct.tracing_map_sort_entry** %15, i32 %16, i32 8, i32 (i8*, i8*)* %18, i32* null)
  %20 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %4, align 8
  %21 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %20, i64 0
  %22 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %21, align 8
  %23 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %54, %14
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %30, i64 %32
  %34 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %33, align 8
  %35 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @memcmp(i8* %36, i8* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %47, i64 %49
  %51 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %50, align 8
  %52 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32, i32* %8, align 4
  %59 = icmp ugt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WARN_ONCE(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %13
  ret void
}

declare dso_local i32 @sort(%struct.tracing_map_sort_entry**, i32, i32, i32 (i8*, i8*)*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
