; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist__account_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist__account_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_stack = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.addr_location = type { i32 }
%struct.perf_sample = type { i32 }
%struct.branch_info = type { %struct.addr_map_symbol, %struct.TYPE_4__, i32 }
%struct.addr_map_symbol = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hist__account_cycles(%struct.branch_stack* %0, %struct.addr_location* %1, %struct.perf_sample* %2, i32 %3) #0 {
  %5 = alloca %struct.branch_stack*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.branch_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.addr_map_symbol*, align 8
  store %struct.branch_stack* %0, %struct.branch_stack** %5, align 8
  store %struct.addr_location* %1, %struct.addr_location** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %13 = icmp ne %struct.branch_stack* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %4
  %15 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %16 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %14
  %20 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %21 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %19
  %29 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %30 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %31 = call %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample* %29, %struct.addr_location* %30)
  store %struct.branch_info* %31, %struct.branch_info** %9, align 8
  %32 = load %struct.branch_info*, %struct.branch_info** %9, align 8
  %33 = icmp ne %struct.branch_info* %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  store %struct.addr_map_symbol* null, %struct.addr_map_symbol** %11, align 8
  %35 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %36 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %68, %34
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load %struct.branch_info*, %struct.branch_info** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %46, i32 0, i32 2
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %53

51:                                               ; preds = %42
  %52 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %11, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi %struct.addr_map_symbol* [ null, %50 ], [ %52, %51 ]
  %55 = load %struct.branch_info*, %struct.branch_info** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %55, i64 %57
  %59 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @addr_map_symbol__account_cycles(i32* %47, %struct.addr_map_symbol* %54, i32 %61)
  %63 = load %struct.branch_info*, %struct.branch_info** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %63, i64 %65
  %67 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %66, i32 0, i32 0
  store %struct.addr_map_symbol* %67, %struct.addr_map_symbol** %11, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.branch_info*, %struct.branch_info** %9, align 8
  %73 = call i32 @free(%struct.branch_info* %72)
  br label %74

74:                                               ; preds = %71, %28
  br label %75

75:                                               ; preds = %74, %19, %14, %4
  ret void
}

declare dso_local %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample*, %struct.addr_location*) #1

declare dso_local i32 @addr_map_symbol__account_cycles(i32*, %struct.addr_map_symbol*, i32) #1

declare dso_local i32 @free(%struct.branch_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
