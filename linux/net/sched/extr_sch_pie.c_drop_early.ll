; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_drop_early.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_drop_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pie_sched_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@MAX_PROB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32)* @drop_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_early(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pie_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.pie_sched_data* %11, %struct.pie_sched_data** %6, align 8
  %12 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %13 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = call i32 @qdisc_dev(%struct.Qdisc* %16)
  %18 = call i32 @psched_mtu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %150

25:                                               ; preds = %2
  %26 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %27 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %31 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 2
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_PROB, align 4
  %42 = sdiv i32 %41, 5
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %150

45:                                               ; preds = %36, %25
  %46 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 2, %50
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %150

54:                                               ; preds = %45
  %55 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %56 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @div_u64(i32 %66, i32 %67)
  %69 = mul nsw i32 %65, %68
  store i32 %69, i32* %8, align 4
  br label %75

70:                                               ; preds = %60, %54
  %71 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %72 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %80 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %83 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @MAX_PROB, align 4
  %88 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %89 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %87, %91
  %93 = icmp sgt i32 %86, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %96 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %85
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %103 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %108 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %100
  %113 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %114 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MAX_PROB, align 4
  %118 = sdiv i32 %117, 100
  %119 = mul nsw i32 %118, 85
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %150

122:                                              ; preds = %112, %100
  %123 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %124 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %130 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MAX_PROB, align 4
  %134 = sdiv i32 %133, 2
  %135 = icmp sge i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 1, i32* %3, align 4
  br label %150

137:                                              ; preds = %128, %122
  %138 = call i32 @prandom_bytes(i32* %7, i32 8)
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %144 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i32 0, i32* %145, align 4
  %146 = load %struct.pie_sched_data*, %struct.pie_sched_data** %6, align 8
  %147 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  store i32 0, i32* %148, align 8
  store i32 1, i32* %3, align 4
  br label %150

149:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %142, %136, %121, %53, %44, %24
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @prandom_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
