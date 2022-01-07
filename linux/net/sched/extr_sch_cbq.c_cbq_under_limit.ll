; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_under_limit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_under_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, i64, i64, %struct.TYPE_2__, %struct.cbq_class*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cbq_sched_data = type { i64, i64 }

@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cbq_class* (%struct.cbq_class*)* @cbq_under_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cbq_class* @cbq_under_limit(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.cbq_sched_data*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %3, align 8
  %6 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %7 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cbq_sched_data* @qdisc_priv(i32 %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %4, align 8
  %10 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %10, %struct.cbq_class** %5, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %16, %struct.cbq_class** %2, align 8
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %25 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %28 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23, %17
  %32 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %33 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %34, %struct.cbq_class** %2, align 8
  br label %80

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %74, %35
  %37 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 4
  %39 = load %struct.cbq_class*, %struct.cbq_class** %38, align 8
  store %struct.cbq_class* %39, %struct.cbq_class** %3, align 8
  %40 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %41 = icmp ne %struct.cbq_class* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %49 = call i32 @cbq_overlimit(%struct.cbq_class* %48)
  store %struct.cbq_class* null, %struct.cbq_class** %2, align 8
  br label %80

50:                                               ; preds = %36
  %51 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %52 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %55 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store %struct.cbq_class* null, %struct.cbq_class** %2, align 8
  br label %80

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %62 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %68 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %71 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br label %74

74:                                               ; preds = %66, %60
  %75 = phi i1 [ false, %60 ], [ %73, %66 ]
  br i1 %75, label %36, label %76

76:                                               ; preds = %74
  %77 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %78 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  store %struct.cbq_class* %79, %struct.cbq_class** %2, align 8
  br label %80

80:                                               ; preds = %76, %58, %42, %31, %15
  %81 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  ret %struct.cbq_class* %81
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

declare dso_local i32 @cbq_overlimit(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
