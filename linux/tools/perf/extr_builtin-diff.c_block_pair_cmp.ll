; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_block_pair_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_block_pair_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.block_info* }
%struct.block_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @block_pair_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_pair_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.block_info*, align 8
  %7 = alloca %struct.block_info*, align 8
  %8 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %9 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %10 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %9, i32 0, i32 0
  %11 = load %struct.block_info*, %struct.block_info** %10, align 8
  store %struct.block_info* %11, %struct.block_info** %6, align 8
  %12 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 0
  %14 = load %struct.block_info*, %struct.block_info** %13, align 8
  store %struct.block_info* %14, %struct.block_info** %7, align 8
  %15 = load %struct.block_info*, %struct.block_info** %6, align 8
  %16 = getelementptr inbounds %struct.block_info, %struct.block_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.block_info*, %struct.block_info** %7, align 8
  %21 = getelementptr inbounds %struct.block_info, %struct.block_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  store i32 -1, i32* %3, align 4
  br label %57

25:                                               ; preds = %19
  %26 = load %struct.block_info*, %struct.block_info** %6, align 8
  %27 = getelementptr inbounds %struct.block_info, %struct.block_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.block_info*, %struct.block_info** %7, align 8
  %32 = getelementptr inbounds %struct.block_info, %struct.block_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i32 %30, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %25
  %40 = load %struct.block_info*, %struct.block_info** %6, align 8
  %41 = getelementptr inbounds %struct.block_info, %struct.block_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.block_info*, %struct.block_info** %7, align 8
  %44 = getelementptr inbounds %struct.block_info, %struct.block_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.block_info*, %struct.block_info** %6, align 8
  %49 = getelementptr inbounds %struct.block_info, %struct.block_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.block_info*, %struct.block_info** %7, align 8
  %52 = getelementptr inbounds %struct.block_info, %struct.block_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %47, %39, %25
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
