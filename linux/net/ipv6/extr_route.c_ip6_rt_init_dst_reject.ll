; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_init_dst_reject.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_init_dst_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@dst_discard_out = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i32 0, align 4
@ip6_pkt_prohibit_out = common dso_local global i32 0, align 4
@ip6_pkt_prohibit = common dso_local global i32 0, align 4
@ip6_pkt_discard_out = common dso_local global i32 0, align 4
@ip6_pkt_discard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_info*, i32)* @ip6_rt_init_dst_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_rt_init_dst_reject(%struct.rt6_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ip6_rt_type_to_error(i32 %5)
  %7 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %8 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %30 [
    i32 131, label %11
    i32 130, label %20
    i32 129, label %29
    i32 128, label %29
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @dst_discard_out, align 4
  %13 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @dst_discard, align 4
  %17 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %18 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i32, i32* @ip6_pkt_prohibit_out, align 4
  %22 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %23 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ip6_pkt_prohibit, align 4
  %26 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %27 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %39

29:                                               ; preds = %2, %2
  br label %30

30:                                               ; preds = %2, %29
  %31 = load i32, i32* @ip6_pkt_discard_out, align 4
  %32 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %33 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ip6_pkt_discard, align 4
  %36 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %37 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %20, %11
  ret void
}

declare dso_local i32 @ip6_rt_type_to_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
