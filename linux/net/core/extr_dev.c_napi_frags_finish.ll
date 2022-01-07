; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_frags_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_frags_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@NAPI_GRO_FREE_STOLEN_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.sk_buff*, i32)* @napi_frags_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @napi_frags_finish(%struct.napi_struct* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %46 [
    i32 128, label %8
    i32 131, label %8
    i32 132, label %26
    i32 129, label %30
    i32 130, label %45
    i32 133, label %45
  ]

8:                                                ; preds = %3, %3
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = call i32 @__skb_push(%struct.sk_buff* %9, i32 %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @eth_type_trans(%struct.sk_buff* %12, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %25

21:                                               ; preds = %8
  %22 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @gro_normal_one(%struct.napi_struct* %22, %struct.sk_buff* %23)
  br label %25

25:                                               ; preds = %21, %8
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @napi_reuse_skb(%struct.napi_struct* %27, %struct.sk_buff* %28)
  br label %46

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAPI_GRO_FREE_STOLEN_HEAD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @napi_skb_free_stolen_head(%struct.sk_buff* %38)
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @napi_reuse_skb(%struct.napi_struct* %41, %struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %46

45:                                               ; preds = %3, %3
  br label %46

46:                                               ; preds = %3, %45, %44, %26, %25
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @gro_normal_one(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @napi_reuse_skb(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @napi_skb_free_stolen_head(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
