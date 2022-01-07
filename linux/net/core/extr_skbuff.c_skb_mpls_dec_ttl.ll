; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mpls_dec_ttl.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mpls_dec_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MPLS_LS_TTL_MASK = common dso_local global i32 0, align 4
@MPLS_LS_TTL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_mpls_dec_ttl(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @eth_p_mpls(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.TYPE_2__* @mpls_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MPLS_LS_TTL_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %18
  %36 = load i32, i32* @MPLS_LS_TTL_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @cpu_to_be32(i32 %46)
  %48 = call i32 @skb_mpls_update_lse(%struct.sk_buff* %45, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %35, %32, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_p_mpls(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @mpls_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_mpls_update_lse(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
