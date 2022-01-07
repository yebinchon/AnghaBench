; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_choose_next_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_choose_next_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_aggregate = type { i32 }
%struct.qfq_sched = type { i32*, i32, i32 }
%struct.qfq_group = type { i64, i64, i64, i32 }

@ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_aggregate* (%struct.qfq_sched*)* @qfq_choose_next_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched* %0) #0 {
  %2 = alloca %struct.qfq_aggregate*, align 8
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_group*, align 8
  %5 = alloca %struct.qfq_aggregate*, align 8
  %6 = alloca %struct.qfq_aggregate*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  %10 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %11 = call i32 @qfq_update_eligible(%struct.qfq_sched* %10)
  %12 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %13 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %16 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %18 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ER, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store %struct.qfq_aggregate* null, %struct.qfq_aggregate** %2, align 8
  br label %112

25:                                               ; preds = %1
  %26 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %27 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %28 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @ER, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_sched* %26, i32 %32)
  store %struct.qfq_group* %33, %struct.qfq_group** %4, align 8
  %34 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %35 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %38 = call %struct.qfq_aggregate* @qfq_slot_head(%struct.qfq_group* %37)
  store %struct.qfq_aggregate* %38, %struct.qfq_aggregate** %5, align 8
  %39 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %40 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %39)
  %41 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %42 = call %struct.qfq_aggregate* @qfq_slot_scan(%struct.qfq_group* %41)
  store %struct.qfq_aggregate* %42, %struct.qfq_aggregate** %6, align 8
  %43 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %6, align 8
  %44 = icmp eq %struct.qfq_aggregate* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %25
  %46 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %47 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %50 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @ER, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @__clear_bit(i32 %48, i32* %53)
  br label %104

55:                                               ; preds = %25
  %56 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %6, align 8
  %57 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %60 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @qfq_round_down(i32 %58, i64 %61)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %64 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  store %struct.qfq_aggregate* %69, %struct.qfq_aggregate** %2, align 8
  br label %112

70:                                               ; preds = %55
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %73 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %76 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = shl i64 2, %77
  %79 = add i64 %74, %78
  %80 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %81 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %83 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %86 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @ER, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = call i32 @__clear_bit(i32 %84, i32* %89)
  %91 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %92 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %93 = call i32 @qfq_calc_state(%struct.qfq_sched* %91, %struct.qfq_group* %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %95 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %98 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @__set_bit(i32 %96, i32* %102)
  br label %104

104:                                              ; preds = %70, %45
  %105 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %106 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %107 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @qfq_unblock_groups(%struct.qfq_sched* %105, i32 %108, i64 %109)
  %111 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  store %struct.qfq_aggregate* %111, %struct.qfq_aggregate** %2, align 8
  br label %112

112:                                              ; preds = %104, %68, %24
  %113 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  ret %struct.qfq_aggregate* %113
}

declare dso_local i32 @qfq_update_eligible(%struct.qfq_sched*) #1

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_sched*, i32) #1

declare dso_local %struct.qfq_aggregate* @qfq_slot_head(%struct.qfq_group*) #1

declare dso_local i32 @qfq_front_slot_remove(%struct.qfq_group*) #1

declare dso_local %struct.qfq_aggregate* @qfq_slot_scan(%struct.qfq_group*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i32 @qfq_calc_state(%struct.qfq_sched*, %struct.qfq_group*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @qfq_unblock_groups(%struct.qfq_sched*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
