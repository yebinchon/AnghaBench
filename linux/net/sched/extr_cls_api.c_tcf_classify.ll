; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i64, i32 (%struct.sk_buff.0*, %struct.tcf_proto*, %struct.tcf_result*)*, i32, %struct.TYPE_4__*, i32 }
%struct.sk_buff.0 = type opaque
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcf_result = type { %struct.tcf_proto* }

@ETH_P_ALL = common dso_local global i32 0, align 4
@TC_ACT_UNSPEC = common dso_local global i32 0, align 4
@TC_ACT_EXT_VAL_MASK = common dso_local global i32 0, align 4
@TC_ACT_GOTO_CHAIN = common dso_local global i32 0, align 4
@TC_ACT_RECLASSIFY = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_SKB_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca %struct.tcf_result*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %7, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %45, %4
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %14 = icmp ne %struct.tcf_proto* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i64 @tc_skb_protocol(%struct.sk_buff* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %19 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ETH_P_ALL, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %45

31:                                               ; preds = %23, %15
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %33 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %32, i32 0, i32 1
  %34 = load i32 (%struct.sk_buff.0*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.sk_buff.0*, %struct.tcf_proto*, %struct.tcf_result*)** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = bitcast %struct.sk_buff* %35 to %struct.sk_buff.0*
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %38 = load %struct.tcf_result*, %struct.tcf_result** %8, align 8
  %39 = call i32 %34(%struct.sk_buff.0* %36, %struct.tcf_proto* %37, %struct.tcf_result* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %47 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.tcf_proto* @rcu_dereference_bh(i32 %48)
  store %struct.tcf_proto* %49, %struct.tcf_proto** %7, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* @TC_ACT_UNSPEC, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @tc_skb_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
