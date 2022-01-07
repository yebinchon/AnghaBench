; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_overlimit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_overlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, i32, i32, i32, i32, %struct.cbq_class*, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cbq_sched_data = type { i64, i64, i64 }

@TC_CBQ_MAXLEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_overlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_overlimit(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i64, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %7 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %8 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.cbq_sched_data* @qdisc_priv(i32 %9)
  store %struct.cbq_sched_data* %10, %struct.cbq_sched_data** %3, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %4, align 8
  %18 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %82, label %22

22:                                               ; preds = %1
  %23 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %24 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %34 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %40, %43
  %45 = sub nsw i32 %36, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %4, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %32, %22
  %50 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %51 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %54 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %59 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %62 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %49
  %64 = load i64, i64* %4, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i64 1, i64* %4, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %69 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %74 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %76 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %81 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %67, %1
  %83 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %84 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %89 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %82
  %94 = load i64, i64* %4, align 8
  %95 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %96 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %99 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TC_CBQ_MAXLEVEL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %97
  %104 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %105 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %6, align 8
  %107 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %108 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %107, i32 0, i32 5
  %109 = load %struct.cbq_class*, %struct.cbq_class** %108, align 8
  store %struct.cbq_class* %109, %struct.cbq_class** %5, align 8
  br label %110

110:                                              ; preds = %131, %103
  %111 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %112 = icmp ne %struct.cbq_class* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %115 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %118 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  store i64 %120, i64* %4, align 8
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %113
  %125 = load i64, i64* %4, align 8
  %126 = icmp sle i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i64 1, i64* %4, align 8
  br label %128

128:                                              ; preds = %127, %124
  %129 = load i64, i64* %4, align 8
  store i64 %129, i64* %6, align 8
  br label %130

130:                                              ; preds = %128, %113
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %133 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %132, i32 0, i32 5
  %134 = load %struct.cbq_class*, %struct.cbq_class** %133, align 8
  store %struct.cbq_class* %134, %struct.cbq_class** %5, align 8
  br label %110

135:                                              ; preds = %110
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %138 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %97
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
