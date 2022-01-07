; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flow.c_flow_get_skgid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flow.c_flow_get_skgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @flow_get_skgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_get_skgid(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.sock* @skb_to_full_sk(%struct.sk_buff* %6)
  store %struct.sock* %7, %struct.sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @from_kgid(i32* @init_user_ns, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %15, %10, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.sock* @skb_to_full_sk(%struct.sk_buff*) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
