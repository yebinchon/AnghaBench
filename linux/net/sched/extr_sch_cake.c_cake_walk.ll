; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque
%struct.cake_sched_data = type { i32, i64*, %struct.cake_tin_data* }
%struct.cake_tin_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CAKE_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @cake_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cake_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca %struct.cake_sched_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cake_tin_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cake_sched_data* %10, %struct.cake_sched_data** %5, align 8
  %11 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %12 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %92

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %89, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %20 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %17
  %24 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %25 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %24, i32 0, i32 2
  %26 = load %struct.cake_tin_data*, %struct.cake_tin_data** %25, align 8
  %27 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %28 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %26, i64 %33
  store %struct.cake_tin_data* %34, %struct.cake_tin_data** %8, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %85, %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CAKE_QUEUES, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load %struct.cake_tin_data*, %struct.cake_tin_data** %8, align 8
  %41 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i64 @list_empty(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  %50 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %51 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %54 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %49, %39
  %58 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %59 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %85

62:                                               ; preds = %49
  %63 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %64 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %63, i32 0, i32 3
  %65 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %64, align 8
  %66 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %67 = bitcast %struct.Qdisc* %66 to %struct.Qdisc.0*
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CAKE_QUEUES, align 4
  %70 = mul i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %70, %71
  %73 = add i32 %72, 1
  %74 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %75 = call i64 %65(%struct.Qdisc.0* %67, i32 %73, %struct.qdisc_walker* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %79 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %88

80:                                               ; preds = %62
  %81 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %82 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %80, %57
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %35

88:                                               ; preds = %77, %35
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %17

92:                                               ; preds = %15, %17
  ret void
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
