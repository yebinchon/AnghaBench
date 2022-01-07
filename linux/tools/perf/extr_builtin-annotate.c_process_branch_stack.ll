; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-annotate.c_process_branch_stack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-annotate.c_process_branch_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_stack = type { i32 }
%struct.addr_location = type { i32 }
%struct.perf_sample = type { i32 }
%struct.addr_map_symbol = type { i32 }
%struct.branch_info = type { %struct.addr_map_symbol, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch_stack*, %struct.addr_location*, %struct.perf_sample*)* @process_branch_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_branch_stack(%struct.branch_stack* %0, %struct.addr_location* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.branch_stack*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.addr_map_symbol*, align 8
  %8 = alloca %struct.branch_info*, align 8
  %9 = alloca i32, align 4
  store %struct.branch_stack* %0, %struct.branch_stack** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  store %struct.addr_map_symbol* null, %struct.addr_map_symbol** %7, align 8
  %10 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %11 = icmp ne %struct.branch_stack* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %14 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %3
  br label %61

18:                                               ; preds = %12
  %19 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %20 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %21 = call %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample* %19, %struct.addr_location* %20)
  store %struct.branch_info* %21, %struct.branch_info** %8, align 8
  %22 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %23 = icmp ne %struct.branch_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %61

25:                                               ; preds = %18
  %26 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %27 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %55, %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %35 = icmp ne %struct.addr_map_symbol* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %38 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %38, i64 %40
  %42 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %41, i32 0, i32 2
  %43 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %46, i32 0, i32 1
  %48 = call i32 @process_basic_block(%struct.addr_map_symbol* %37, i32* %42, i32* %47)
  br label %49

49:                                               ; preds = %36, %33
  %50 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %50, i64 %52
  %54 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %53, i32 0, i32 0
  store %struct.addr_map_symbol* %54, %struct.addr_map_symbol** %7, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %60 = call i32 @free(%struct.branch_info* %59)
  br label %61

61:                                               ; preds = %58, %24, %17
  ret void
}

declare dso_local %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample*, %struct.addr_location*) #1

declare dso_local i32 @process_basic_block(%struct.addr_map_symbol*, i32*, i32*) #1

declare dso_local i32 @free(%struct.branch_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
