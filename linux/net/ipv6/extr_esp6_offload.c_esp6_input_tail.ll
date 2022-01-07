; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6_offload.c_esp6_input_tail.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6_offload.c_esp6_input_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_offload = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_DONE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp6_input_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_input_tail(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.xfrm_offload*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 0
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  store %struct.crypto_aead* %10, %struct.crypto_aead** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %11)
  store %struct.xfrm_offload* %12, %struct.xfrm_offload** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %15 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %14)
  %16 = add i64 4, %15
  %17 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.xfrm_offload*, %struct.xfrm_offload** %7, align 8
  %24 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CRYPTO_DONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @CHECKSUM_NONE, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @esp6_input_done2(%struct.sk_buff* %34, i32 0)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @esp6_input_done2(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
