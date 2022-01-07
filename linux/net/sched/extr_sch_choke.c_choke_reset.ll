; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.choke_sched_data = type { i64, i64, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @choke_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choke_reset(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.choke_sched_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.choke_sched_data* %6, %struct.choke_sched_data** %3, align 8
  br label %7

7:                                                ; preds = %38, %37, %1
  %8 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %7
  %16 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %16, i32 0, i32 4
  %18 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  %19 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %20 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %18, i64 %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %25 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  %28 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %29 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = and i64 %27, %31
  %33 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %34 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %15
  br label %7

38:                                               ; preds = %15
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %41 = call i32 @rtnl_qdisc_drop(%struct.sk_buff* %39, %struct.Qdisc* %40)
  br label %7

42:                                               ; preds = %7
  %43 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %50 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %49, i32 0, i32 4
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %50, align 8
  %52 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %53 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(%struct.sk_buff** %51, i32 0, i32 %58)
  %60 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %61 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %63 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %65 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %64, i32 0, i32 3
  %66 = call i32 @red_restart(i32* %65)
  ret void
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @rtnl_qdisc_drop(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @memset(%struct.sk_buff**, i32, i32) #1

declare dso_local i32 @red_restart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
