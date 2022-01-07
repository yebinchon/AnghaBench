; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_schedule_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_schedule_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i8*, i32*, i32* }
%struct.qfq_aggregate = type { i64, i8*, %struct.qfq_group* }
%struct.qfq_group = type { i64, i8*, i32, i8*, i64 }

@IR = common dso_local global i64 0, align 8
@IB = common dso_local global i64 0, align 8
@ER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"qfq enqueue: new state %d %#lx S %lld F %lld V %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_aggregate*)* @qfq_schedule_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_schedule_agg(%struct.qfq_sched* %0, %struct.qfq_aggregate* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_aggregate*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_aggregate* %1, %struct.qfq_aggregate** %4, align 8
  %8 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %9 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %8, i32 0, i32 2
  %10 = load %struct.qfq_group*, %struct.qfq_group** %9, align 8
  store %struct.qfq_group* %10, %struct.qfq_group** %5, align 8
  %11 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %12 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %15 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @qfq_round_down(i8* %13, i64 %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %19 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %24 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %27 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @qfq_gt(i8* %25, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %124

32:                                               ; preds = %22
  %33 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @qfq_slot_rotate(%struct.qfq_group* %33, i8* %34)
  %36 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %37 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %40 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @IR, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @__clear_bit(i32 %38, i32* %43)
  %45 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %46 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %49 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @IB, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @__clear_bit(i32 %47, i32* %52)
  br label %79

54:                                               ; preds = %2
  %55 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %56 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @ER, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %65 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @qfq_gt(i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %71 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %77 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %69, %62, %54
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %82 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %85 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = shl i64 2, %86
  %88 = getelementptr i8, i8* %83, i64 %87
  %89 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %90 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %92 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %93 = call i32 @qfq_calc_state(%struct.qfq_sched* %91, %struct.qfq_group* %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %95 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %98 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @__set_bit(i32 %96, i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %106 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %113 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %117 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %120 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %111, i64 %115, i64 %118, i64 %122)
  br label %124

124:                                              ; preds = %79, %31
  %125 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %126 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @qfq_slot_insert(%struct.qfq_group* %125, %struct.qfq_aggregate* %126, i8* %127)
  ret void
}

declare dso_local i8* @qfq_round_down(i8*, i64) #1

declare dso_local i64 @qfq_gt(i8*, i8*) #1

declare dso_local i32 @qfq_slot_rotate(%struct.qfq_group*, i8*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @qfq_calc_state(%struct.qfq_sched*, %struct.qfq_group*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @qfq_slot_insert(%struct.qfq_group*, %struct.qfq_aggregate*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
