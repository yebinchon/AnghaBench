; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_match_flow.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_match_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.flow_keys = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*)* @choke_match_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choke_match_flow(%struct.sk_buff* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flow_keys, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_flow_dissect_flow_keys(%struct.sk_buff* %25, %struct.flow_keys* %6, i32 0)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @make_flow_keys_digest(i32* %29, %struct.flow_keys* %6)
  br label %31

31:                                               ; preds = %21, %15
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_flow_dissect_flow_keys(%struct.sk_buff* %41, %struct.flow_keys* %6, i32 0)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @make_flow_keys_digest(i32* %45, %struct.flow_keys* %6)
  br label %47

47:                                               ; preds = %37, %31
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @memcmp(i32* %50, i32* %53, i32 4)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %47, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @choke_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_flow_dissect_flow_keys(%struct.sk_buff*, %struct.flow_keys*, i32) #1

declare dso_local i32 @make_flow_keys_digest(i32*, %struct.flow_keys*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
