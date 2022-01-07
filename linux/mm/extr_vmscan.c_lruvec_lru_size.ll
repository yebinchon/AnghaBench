; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_lruvec_lru_size.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_lruvec_lru_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruvec = type { i32 }
%struct.zone = type { i32 }
%struct.TYPE_3__ = type { %struct.zone* }

@MAX_NR_ZONES = common dso_local global i32 0, align 4
@NR_LRU_BASE = common dso_local global i32 0, align 4
@NR_ZONE_LRU_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lruvec_lru_size(%struct.lruvec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lruvec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zone*, align 8
  %10 = alloca i64, align 8
  store %struct.lruvec* %0, %struct.lruvec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = call i32 (...) @mem_cgroup_disabled()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_NR_ZONES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @mem_cgroup_get_zone_lru_size(%struct.lruvec* %19, i32 %20, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %14

28:                                               ; preds = %14
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %31 = call %struct.TYPE_3__* @lruvec_pgdat(%struct.lruvec* %30)
  %32 = load i32, i32* @NR_LRU_BASE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %32, %33
  %35 = call i64 @node_page_state(%struct.TYPE_3__* %31, i32 %34)
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %81, %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAX_NR_ZONES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %45 = call %struct.TYPE_3__* @lruvec_pgdat(%struct.lruvec* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.zone*, %struct.zone** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.zone, %struct.zone* %47, i64 %49
  store %struct.zone* %50, %struct.zone** %9, align 8
  %51 = load %struct.zone*, %struct.zone** %9, align 8
  %52 = call i32 @managed_zone(%struct.zone* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %81

55:                                               ; preds = %43
  %56 = call i32 (...) @mem_cgroup_disabled()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @mem_cgroup_get_zone_lru_size(%struct.lruvec* %59, i32 %60, i32 %61)
  store i64 %62, i64* %10, align 8
  br label %75

63:                                               ; preds = %55
  %64 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %65 = call %struct.TYPE_3__* @lruvec_pgdat(%struct.lruvec* %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.zone*, %struct.zone** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.zone, %struct.zone* %67, i64 %69
  %71 = load i32, i32* @NR_ZONE_LRU_BASE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %71, %72
  %74 = call i64 @zone_page_state(%struct.zone* %70, i32 %73)
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %63, %58
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @min(i64 %76, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %75, %54
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %39

84:                                               ; preds = %39
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i32 @mem_cgroup_disabled(...) #1

declare dso_local i64 @mem_cgroup_get_zone_lru_size(%struct.lruvec*, i32, i32) #1

declare dso_local i64 @node_page_state(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @lruvec_pgdat(%struct.lruvec*) #1

declare dso_local i32 @managed_zone(%struct.zone*) #1

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
