; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_config_diffserv8.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_config_diffserv8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cake_sched_data = type { i32, i32, i32, i32, %struct.cake_tin_data*, i32, i32 }
%struct.cake_tin_data = type { i8*, i8* }

@diffserv8 = common dso_local global i32 0, align 4
@normal_order = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @cake_config_diffserv8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_config_diffserv8(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.cake_sched_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cake_tin_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %11 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.cake_sched_data* %11, %struct.cake_sched_data** %3, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %13 = call i32 @qdisc_dev(%struct.Qdisc* %12)
  %14 = call i64 @psched_mtu(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %16 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  store i64 256, i64* %6, align 8
  store i64 256, i64* %7, align 8
  %18 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %19 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %18, i32 0, i32 1
  store i32 8, i32* %19, align 4
  %20 = load i32, i32* @diffserv8, align 4
  %21 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @normal_order, align 4
  %24 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %25 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %73, %1
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %29 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %26
  %34 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %35 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %34, i32 0, i32 4
  %36 = load %struct.cake_tin_data*, %struct.cake_tin_data** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %36, i64 %37
  store %struct.cake_tin_data* %38, %struct.cake_tin_data** %9, align 8
  %39 = load %struct.cake_tin_data*, %struct.cake_tin_data** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %43 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @us_to_ns(i32 %44)
  %46 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %47 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @us_to_ns(i32 %48)
  %50 = call i32 @cake_set_rate(%struct.cake_tin_data* %39, i32 %40, i64 %41, i32 %45, i32 %49)
  %51 = load i32, i32* @u16, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i8* @max_t(i32 %51, i32 1, i64 %52)
  %54 = load %struct.cake_tin_data*, %struct.cake_tin_data** %9, align 8
  %55 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @u16, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i8* @max_t(i32 %56, i32 1, i64 %57)
  %59 = load %struct.cake_tin_data*, %struct.cake_tin_data** %9, align 8
  %60 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 7
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 3
  store i32 %64, i32* %5, align 4
  %65 = load i64, i64* %6, align 8
  %66 = mul i64 %65, 3
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = lshr i64 %67, 1
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = mul i64 %69, 7
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = lshr i64 %71, 3
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %33
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %26

76:                                               ; preds = %26
  ret i32 0
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @cake_set_rate(%struct.cake_tin_data*, i32, i64, i32, i32) #1

declare dso_local i32 @us_to_ns(i32) #1

declare dso_local i8* @max_t(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
