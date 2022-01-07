; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_process_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_process_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.pie_sched_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@QUEUE_THRESHOLD = common dso_local global i32 0, align 4
@DQCOUNT_INVALID = common dso_local global i32 0, align 4
@PIE_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.sk_buff*)* @pie_process_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pie_process_dequeue(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pie_sched_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.pie_sched_data* %11, %struct.pie_sched_data** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QUEUE_THRESHOLD, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %21 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DQCOUNT_INVALID, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = call i8* (...) @psched_get_time()
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %30 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %33 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %19, %2
  %36 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %37 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DQCOUNT_INVALID, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %153

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %47 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %45
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %54 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @QUEUE_THRESHOLD, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %152

59:                                               ; preds = %42
  %60 = call i8* (...) @psched_get_time()
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %64 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %62, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %69 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PIE_SCALE, align 4
  %73 = shl i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %153

77:                                               ; preds = %59
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %9, align 4
  %81 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %82 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %89 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 4
  br label %108

91:                                               ; preds = %77
  %92 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %93 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %97 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 3
  %101 = sub nsw i32 %95, %100
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 3
  %104 = add nsw i32 %101, %103
  %105 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %106 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %91, %86
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @QUEUE_THRESHOLD, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* @DQCOUNT_INVALID, align 4
  %114 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %115 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  br label %126

117:                                              ; preds = %108
  %118 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %119 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = call i8* (...) @psched_get_time()
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %124 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %112
  %127 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %128 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %134 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %142 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, %140
  store i32 %145, i32* %143, align 4
  br label %150

146:                                              ; preds = %132
  %147 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %148 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %139
  br label %151

151:                                              ; preds = %150, %126
  br label %152

152:                                              ; preds = %151, %42
  br label %153

153:                                              ; preds = %76, %152, %35
  ret void
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @psched_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
