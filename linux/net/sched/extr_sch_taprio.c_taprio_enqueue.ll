; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.taprio_sched = type { i32, %struct.Qdisc** }

@SOCK_TXTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @taprio_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.taprio_sched*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.taprio_sched* %12, %struct.taprio_sched** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %16 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %15, i32 0, i32 1
  %17 = load %struct.Qdisc**, %struct.Qdisc*** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %17, i64 %19
  %21 = load %struct.Qdisc*, %struct.Qdisc** %20, align 8
  store %struct.Qdisc* %21, %struct.Qdisc** %9, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %23 = icmp ne %struct.Qdisc* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %32 = call i32 @qdisc_drop(%struct.sk_buff* %29, %struct.Qdisc* %30, %struct.sk_buff** %31)
  store i32 %32, i32* %4, align 4
  br label %92

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SOCK_TXTIME, align 4
  %43 = call i64 @sock_flag(i64 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %48 = call i32 @is_valid_interval(%struct.sk_buff* %46, %struct.Qdisc* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %54 = call i32 @qdisc_drop(%struct.sk_buff* %51, %struct.Qdisc* %52, %struct.sk_buff** %53)
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %45
  br label %79

56:                                               ; preds = %38, %33
  %57 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %58 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @TXTIME_ASSIST_IS_ENABLED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %65 = call i32 @get_packet_txtime(%struct.sk_buff* %63, %struct.Qdisc* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %62
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %76 = call i32 @qdisc_drop(%struct.sk_buff* %73, %struct.Qdisc* %74, %struct.sk_buff** %75)
  store i32 %76, i32* %4, align 4
  br label %92

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %80, %struct.sk_buff* %81)
  %83 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %91 = call i32 @qdisc_enqueue(%struct.sk_buff* %88, %struct.Qdisc* %89, %struct.sk_buff** %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %79, %72, %50, %28
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i64 @sock_flag(i64, i32) #1

declare dso_local i32 @is_valid_interval(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i64 @TXTIME_ASSIST_IS_ENABLED(i32) #1

declare dso_local i32 @get_packet_txtime(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
