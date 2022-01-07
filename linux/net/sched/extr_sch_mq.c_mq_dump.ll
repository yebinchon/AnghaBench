; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @mq_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %9)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 1
  %16 = call i32 @memset(%struct.TYPE_10__* %15, i32 0, i32 56)
  %17 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = call i32 @memset(%struct.TYPE_10__* %18, i32 0, i32 56)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %135, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %138

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_9__* @netdev_get_tx_queue(%struct.net_device* %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.Qdisc*, %struct.Qdisc** %30, align 8
  store %struct.Qdisc* %31, %struct.Qdisc** %6, align 8
  %32 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %33 = call i32 @qdisc_lock(%struct.Qdisc* %32)
  %34 = call i32 @spin_lock_bh(i32 %33)
  %35 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %36 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %26
  %39 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %40 = call i32 @qdisc_qlen_sum(%struct.Qdisc* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %42 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %41, i32 0, i32 1
  %43 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 1
  %48 = call i32 @__gnet_stats_copy_basic(i32* null, %struct.TYPE_10__* %42, i32 %45, %struct.TYPE_10__* %47)
  %49 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 0
  %51 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %52 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @__gnet_stats_copy_queue(%struct.TYPE_10__* %50, i32 %53, %struct.TYPE_10__* %55, i32 %56)
  br label %131

58:                                               ; preds = %26
  %59 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %64 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %62
  store i64 %67, i64* %65, align 8
  %68 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %69 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %73 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %71
  store i64 %76, i64* %74, align 8
  %77 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %78 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %80
  store i64 %85, i64* %83, align 8
  %86 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %87 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %91 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %89
  store i64 %94, i64* %92, align 8
  %95 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %96 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %100 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %98
  store i64 %103, i64* %101, align 8
  %104 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %105 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %109 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %107
  store i64 %112, i64* %110, align 8
  %113 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %114 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %118 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %116
  store i64 %121, i64* %119, align 8
  %122 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %123 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %127 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %125
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %58, %38
  %132 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %133 = call i32 @qdisc_lock(%struct.Qdisc* %132)
  %134 = call i32 @spin_unlock_bh(i32 %133)
  br label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %20

138:                                              ; preds = %20
  %139 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %140 = call i32 @mq_offload_stats(%struct.Qdisc* %139)
  ret i32 %140
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qlen_sum(%struct.Qdisc*) #1

declare dso_local i32 @__gnet_stats_copy_basic(i32*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @__gnet_stats_copy_queue(%struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @mq_offload_stats(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
