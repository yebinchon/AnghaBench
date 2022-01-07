; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.cake_sched_data = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CAKE_MAX_TINS = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @cake_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cake_reconfigure(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.cake_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.cake_sched_data* %8, %struct.cake_sched_data** %3, align 8
  %9 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %25 [
    i32 132, label %12
    i32 128, label %15
    i32 129, label %18
    i32 130, label %21
    i32 131, label %24
  ]

12:                                               ; preds = %1
  %13 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %14 = call i32 @cake_config_besteffort(%struct.Qdisc* %13)
  store i32 %14, i32* %5, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %17 = call i32 @cake_config_precedence(%struct.Qdisc* %16)
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %20 = call i32 @cake_config_diffserv8(%struct.Qdisc* %19)
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %23 = call i32 @cake_config_diffserv4(%struct.Qdisc* %22)
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %1, %24
  %26 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %27 = call i32 @cake_config_diffserv3(%struct.Qdisc* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %21, %18, %15, %12
  %29 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %57, %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CAKE_MAX_TINS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @cake_clear_tin(%struct.Qdisc* %37, i32 %38)
  %40 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %41 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %40, i32 0, i32 6
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %50 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %49, i32 0, i32 6
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 4
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %62 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %70 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %72 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %71, i32 0, i32 6
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %80 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %82 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %60
  %86 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %87 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %90 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %89, i32 0, i32 5
  store i64 %88, i64* %90, align 8
  br label %117

91:                                               ; preds = %60
  %92 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %93 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %98 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %101 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @USEC_PER_SEC, align 4
  %106 = sdiv i32 %105, 4
  %107 = call i32 @do_div(i32 %104, i32 %106)
  %108 = load i32, i32* @u32, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @max_t(i32 %108, i32 %109, i32 4194304)
  %111 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %112 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  br label %116

113:                                              ; preds = %91
  %114 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %115 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %114, i32 0, i32 5
  store i64 -1, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %96
  br label %117

117:                                              ; preds = %116, %85
  %118 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %121 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %125 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %128 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %131 = call i32 @qdisc_dev(%struct.Qdisc* %130)
  %132 = call i32 @psched_mtu(i32 %131)
  %133 = mul nsw i32 %129, %132
  %134 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %135 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @max(i32 %133, i64 %136)
  %138 = call i64 @min(i64 %126, i32 %137)
  %139 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %140 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  ret void
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @cake_config_besteffort(%struct.Qdisc*) #1

declare dso_local i32 @cake_config_precedence(%struct.Qdisc*) #1

declare dso_local i32 @cake_config_diffserv8(%struct.Qdisc*) #1

declare dso_local i32 @cake_config_diffserv4(%struct.Qdisc*) #1

declare dso_local i32 @cake_config_diffserv3(%struct.Qdisc*) #1

declare dso_local i32 @cake_clear_tin(%struct.Qdisc*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @max_t(i32, i32, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
