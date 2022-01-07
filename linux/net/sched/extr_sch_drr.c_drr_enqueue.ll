; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drr_sched = type { i32 }
%struct.drr_class = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @drr_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drr_sched*, align 8
  %10 = alloca %struct.drr_class*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @qdisc_pkt_len(%struct.sk_buff* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %16 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.drr_sched* %16, %struct.drr_sched** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = call %struct.drr_class* @drr_classify(%struct.sk_buff* %17, %struct.Qdisc* %18, i32* %11)
  store %struct.drr_class* %19, %struct.drr_class** %10, align 8
  %20 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %21 = icmp eq %struct.drr_class* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %33 = call i32 @__qdisc_drop(%struct.sk_buff* %31, %struct.sk_buff** %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %98

35:                                               ; preds = %3
  %36 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %37 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %36, i32 0, i32 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %47 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %46, i32 0, i32 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %50 = call i32 @qdisc_enqueue(%struct.sk_buff* %45, %struct.TYPE_10__* %48, %struct.sk_buff** %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %35
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @net_xmit_drop_count(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %63 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %68 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %67)
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %98

71:                                               ; preds = %35
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %76 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %75, i32 0, i32 2
  %77 = load %struct.drr_sched*, %struct.drr_sched** %9, align 8
  %78 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %77, i32 0, i32 0
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %81 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %84 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %71
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %88 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %93 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %85, %69, %30
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.drr_class* @drr_classify(%struct.sk_buff*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

declare dso_local i32 @__qdisc_drop(%struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.TYPE_10__*, %struct.sk_buff**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
