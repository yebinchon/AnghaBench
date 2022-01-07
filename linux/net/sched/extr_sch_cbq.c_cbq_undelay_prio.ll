; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_undelay_prio.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_undelay_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_sched_data = type { %struct.cbq_class** }
%struct.cbq_class = type { i64, %struct.cbq_class*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cbq_sched_data*, i32, i64)* @cbq_undelay_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cbq_undelay_prio(%struct.cbq_sched_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.cbq_sched_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cbq_class*, align 8
  %9 = alloca %struct.cbq_class*, align 8
  %10 = alloca i64, align 8
  store %struct.cbq_sched_data* %0, %struct.cbq_sched_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %12 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %11, i32 0, i32 0
  %13 = load %struct.cbq_class**, %struct.cbq_class*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %13, i64 %15
  %17 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  store %struct.cbq_class* %17, %struct.cbq_class** %9, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %20 = icmp eq %struct.cbq_class* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %115

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %101, %22
  %24 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %25 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %24, i32 0, i32 1
  %26 = load %struct.cbq_class*, %struct.cbq_class** %25, align 8
  store %struct.cbq_class* %26, %struct.cbq_class** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %23
  %34 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %35 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %34, i32 0, i32 1
  %36 = load %struct.cbq_class*, %struct.cbq_class** %35, align 8
  %37 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 1
  store %struct.cbq_class* %36, %struct.cbq_class** %38, align 8
  %39 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %40 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %39, i32 0, i32 1
  store %struct.cbq_class* null, %struct.cbq_class** %40, align 8
  %41 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %45 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %47 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %49 = call i32 @cbq_activate_class(%struct.cbq_class* %48)
  %50 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %51 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %52 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %51, i32 0, i32 0
  %53 = load %struct.cbq_class**, %struct.cbq_class*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %53, i64 %55
  %57 = load %struct.cbq_class*, %struct.cbq_class** %56, align 8
  %58 = icmp eq %struct.cbq_class* %50, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %33
  %60 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %61 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %62 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %61, i32 0, i32 0
  %63 = load %struct.cbq_class**, %struct.cbq_class*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %63, i64 %65
  store %struct.cbq_class* %60, %struct.cbq_class** %66, align 8
  %67 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %68 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %69 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %68, i32 0, i32 0
  %70 = load %struct.cbq_class**, %struct.cbq_class*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %70, i64 %72
  %74 = load %struct.cbq_class*, %struct.cbq_class** %73, align 8
  %75 = icmp eq %struct.cbq_class* %67, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %59
  %77 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %78 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %77, i32 0, i32 0
  %79 = load %struct.cbq_class**, %struct.cbq_class*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %79, i64 %81
  store %struct.cbq_class* null, %struct.cbq_class** %82, align 8
  store i64 0, i64* %4, align 8
  br label %115

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %83, %33
  %85 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %86 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %85, i32 0, i32 1
  %87 = load %struct.cbq_class*, %struct.cbq_class** %86, align 8
  store %struct.cbq_class* %87, %struct.cbq_class** %8, align 8
  br label %100

88:                                               ; preds = %23
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %91 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %97 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %95, %88
  br label %100

100:                                              ; preds = %99, %84
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  store %struct.cbq_class* %102, %struct.cbq_class** %9, align 8
  %103 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %104 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %103, i32 0, i32 0
  %105 = load %struct.cbq_class**, %struct.cbq_class*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %105, i64 %107
  %109 = load %struct.cbq_class*, %struct.cbq_class** %108, align 8
  %110 = icmp ne %struct.cbq_class* %102, %109
  br i1 %110, label %23, label %111

111:                                              ; preds = %101
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %7, align 8
  %114 = sub nsw i64 %112, %113
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %111, %76, %21
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i32 @cbq_activate_class(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
