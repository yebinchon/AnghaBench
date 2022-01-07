; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_select_tin.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_select_tin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cake_tin_data = type { i32 }
%struct.Qdisc = type { i64 }
%struct.sk_buff = type { i32, i32 }
%struct.cake_sched_data = type { i32, i32, i32, i64, i32, i32*, i32*, %struct.cake_tin_data* }

@CAKE_FLAG_WASH = common dso_local global i32 0, align 4
@CAKE_DIFFSERV_BESTEFFORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cake_tin_data* (%struct.Qdisc*, %struct.sk_buff*)* @cake_select_tin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cake_tin_data* @cake_select_tin(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cake_sched_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cake_sched_data* %10, %struct.cake_sched_data** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %13 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CAKE_FLAG_WASH, align 4
  %16 = and i32 %14, %15
  %17 = call i64 @cake_handle_diffserv(%struct.sk_buff* %11, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %22 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %26 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %30 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CAKE_DIFFSERV_BESTEFFORT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %108

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %41 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %46 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %107

53:                                               ; preds = %38, %35
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @TC_H_MAJ(i32 %56)
  %58 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %59 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @TC_H_MIN(i32 %65)
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @TC_H_MIN(i32 %71)
  %73 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %74 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %68
  %78 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %79 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @TC_H_MIN(i32 %83)
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  br label %106

89:                                               ; preds = %68, %62, %53
  %90 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %91 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %98 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %77
  br label %107

107:                                              ; preds = %106, %44
  br label %108

108:                                              ; preds = %107, %34
  %109 = load %struct.cake_sched_data*, %struct.cake_sched_data** %5, align 8
  %110 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %109, i32 0, i32 7
  %111 = load %struct.cake_tin_data*, %struct.cake_tin_data** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %111, i64 %113
  ret %struct.cake_tin_data* %114
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @cake_handle_diffserv(%struct.sk_buff*, i32) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
