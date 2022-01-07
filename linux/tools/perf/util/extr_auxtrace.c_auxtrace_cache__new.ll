; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_cache__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_cache__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_cache = type { i64, i64, i32, i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auxtrace_cache* @auxtrace_cache__new(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.auxtrace_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_cache*, align 8
  %9 = alloca %struct.hlist_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.auxtrace_cache* @zalloc(i32 32)
  store %struct.auxtrace_cache* %12, %struct.auxtrace_cache** %8, align 8
  %13 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %14 = icmp ne %struct.auxtrace_cache* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.auxtrace_cache* null, %struct.auxtrace_cache** %4, align 8
  br label %65

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call %struct.hlist_head* @calloc(i64 %20, i32 4)
  store %struct.hlist_head* %21, %struct.hlist_head** %9, align 8
  %22 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %23 = icmp ne %struct.hlist_head* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %62

25:                                               ; preds = %16
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %31, i64 %32
  %34 = call i32 @INIT_HLIST_HEAD(%struct.hlist_head* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %40 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %41 = getelementptr inbounds %struct.auxtrace_cache, %struct.auxtrace_cache* %40, i32 0, i32 4
  store %struct.hlist_head* %39, %struct.hlist_head** %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %44 = getelementptr inbounds %struct.auxtrace_cache, %struct.auxtrace_cache* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %47 = getelementptr inbounds %struct.auxtrace_cache, %struct.auxtrace_cache* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %49 = getelementptr inbounds %struct.auxtrace_cache, %struct.auxtrace_cache* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 %50, %52
  %54 = udiv i64 %53, 100
  %55 = trunc i64 %54 to i32
  %56 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %57 = getelementptr inbounds %struct.auxtrace_cache, %struct.auxtrace_cache* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %60 = getelementptr inbounds %struct.auxtrace_cache, %struct.auxtrace_cache* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  store %struct.auxtrace_cache* %61, %struct.auxtrace_cache** %4, align 8
  br label %65

62:                                               ; preds = %24
  %63 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %64 = call i32 @free(%struct.auxtrace_cache* %63)
  store %struct.auxtrace_cache* null, %struct.auxtrace_cache** %4, align 8
  br label %65

65:                                               ; preds = %62, %38, %15
  %66 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %4, align 8
  ret %struct.auxtrace_cache* %66
}

declare dso_local %struct.auxtrace_cache* @zalloc(i32) #1

declare dso_local %struct.hlist_head* @calloc(i64, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(%struct.hlist_head*) #1

declare dso_local i32 @free(%struct.auxtrace_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
