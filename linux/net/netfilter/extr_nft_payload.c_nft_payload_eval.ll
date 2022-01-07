; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_3__, i32, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nft_payload = type { i64, i64, i32, i32 }

@NFT_REG32_SIZE = common dso_local global i64 0, align 8
@NFT_BREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_payload_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_payload*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = call %struct.nft_payload* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_payload* %12, %struct.nft_payload** %7, align 8
  %13 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %14 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  %16 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %17 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %20 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  store i64* %22, i64** %9, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %25 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFT_REG32_SIZE, align 8
  %28 = udiv i64 %26, %27
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %31 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %76 [
    i32 130, label %33
    i32 129, label %62
    i32 128, label %65
  ]

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %94

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64*, i64** %9, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %46 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %49 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @nft_payload_copy_vlan(i64* %43, %struct.sk_buff* %44, i32 %47, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %94

54:                                               ; preds = %42
  br label %99

55:                                               ; preds = %38
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i32 @skb_mac_header(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %10, align 4
  br label %78

62:                                               ; preds = %3
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @skb_network_offset(%struct.sk_buff* %63)
  store i32 %64, i32* %10, align 4
  br label %78

65:                                               ; preds = %3
  %66 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %67 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %94

71:                                               ; preds = %65
  %72 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %73 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  br label %78

76:                                               ; preds = %3
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %76, %71, %62, %55
  %79 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %80 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i64*, i64** %9, align 8
  %87 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %88 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @skb_copy_bits(%struct.sk_buff* %84, i32 %85, i64* %86, i64 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %94

93:                                               ; preds = %78
  br label %99

94:                                               ; preds = %92, %70, %53, %37
  %95 = load i32, i32* @NFT_BREAK, align 4
  %96 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %97 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %99

99:                                               ; preds = %94, %93, %54
  ret void
}

declare dso_local %struct.nft_payload* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @nft_payload_copy_vlan(i64*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
