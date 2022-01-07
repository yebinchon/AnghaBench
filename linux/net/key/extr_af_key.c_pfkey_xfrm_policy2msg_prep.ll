; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2msg_prep.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_xfrm_policy2msg_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_policy = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xfrm_policy*)* @pfkey_xfrm_policy2msg_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %3, align 8
  %6 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %7 = call i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 16
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @alloc_skb(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp eq %struct.sk_buff* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.sk_buff* @ERR_PTR(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %2, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %2, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %21
}

declare dso_local i32 @pfkey_xfrm_policy2msg_size(%struct.xfrm_policy*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
