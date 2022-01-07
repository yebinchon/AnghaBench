; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_config_diffserv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_config_diffserv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cake_sched_data = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@diffserv4 = common dso_local global i32 0, align 4
@bulk_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @cake_config_diffserv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_config_diffserv4(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.cake_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.cake_sched_data* %8, %struct.cake_sched_data** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = call i32 @qdisc_dev(%struct.Qdisc* %9)
  %11 = call i32 @psched_mtu(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %13 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 1024, i32* %6, align 4
  %15 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %16 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %15, i32 0, i32 1
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* @diffserv4, align 4
  %18 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %19 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @bulk_order, align 4
  %21 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %24 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @us_to_ns(i32 %31)
  %33 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %34 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @us_to_ns(i32 %35)
  %37 = call i32 @cake_set_rate(%struct.TYPE_2__* %26, i32 %27, i32 %28, i32 %32, i32 %36)
  %38 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %39 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 1
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %46 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @us_to_ns(i32 %47)
  %49 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %50 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @us_to_ns(i32 %51)
  %53 = call i32 @cake_set_rate(%struct.TYPE_2__* %41, i32 %43, i32 %44, i32 %48, i32 %52)
  %54 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %55 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 2
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 1
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %62 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @us_to_ns(i32 %63)
  %65 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %66 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @us_to_ns(i32 %67)
  %69 = call i32 @cake_set_rate(%struct.TYPE_2__* %57, i32 %59, i32 %60, i32 %64, i32 %68)
  %70 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %71 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 3
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 2
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %78 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @us_to_ns(i32 %79)
  %81 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %82 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @us_to_ns(i32 %83)
  %85 = call i32 @cake_set_rate(%struct.TYPE_2__* %73, i32 %75, i32 %76, i32 %80, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %88 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, 4
  %94 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %95 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 2
  %101 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %102 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 %106, 4
  %108 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %109 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %115 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  %119 = load i32, i32* %6, align 4
  %120 = ashr i32 %119, 4
  %121 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %122 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 1
  %128 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %129 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %127, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  %134 = ashr i32 %133, 2
  %135 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %136 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %135, i32 0, i32 2
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 %134, i32* %139, align 4
  ret i32 0
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @cake_set_rate(%struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @us_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
