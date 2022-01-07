; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_set_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_set_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_3__, i32, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nft_payload_set = type { i64, i32, i32, i32, i64, i64, i64 }

@NFT_PAYLOAD_CSUM_INET = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_payload_set_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_payload_set_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_payload_set*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %15 = call %struct.nft_payload_set* @nft_expr_priv(%struct.nft_expr* %14)
  store %struct.nft_payload_set* %15, %struct.nft_payload_set** %7, align 8
  %16 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %17 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %20 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %23 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %9, align 8
  %26 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %27 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %55 [
    i32 130, label %29
    i32 129, label %41
    i32 128, label %44
  ]

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %151

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @skb_mac_header(%struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %10, align 4
  br label %57

41:                                               ; preds = %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @skb_network_offset(%struct.sk_buff* %42)
  store i32 %43, i32* %10, align 4
  br label %57

44:                                               ; preds = %3
  %45 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %46 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %151

50:                                               ; preds = %44
  %51 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %52 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  br label %57

55:                                               ; preds = %3
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %50, %41, %34
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %60 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %64 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %69 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NFT_PAYLOAD_CSUM_INET, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %57
  %74 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %75 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %73, %57
  %79 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %80 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 128
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %129

89:                                               ; preds = %83, %78
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %93 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @skb_checksum(%struct.sk_buff* %90, i32 %91, i64 %94, i32 0)
  store i32 %95, i32* %12, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %98 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @csum_partial(i32* %96, i64 %99, i32 0)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %102 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NFT_PAYLOAD_CSUM_INET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %89
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i64 @nft_payload_csum_inet(%struct.sk_buff* %107, i32* %108, i32 %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %151

115:                                              ; preds = %106, %89
  %116 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %117 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @nft_payload_l4csum_update(%struct.nft_pktinfo* %121, %struct.sk_buff* %122, i32 %123, i32 %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %151

128:                                              ; preds = %120, %115
  br label %129

129:                                              ; preds = %128, %83, %73
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %134 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = call i32 @max(i64 %136, i32 0)
  %138 = call i64 @skb_ensure_writable(%struct.sk_buff* %130, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %129
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.nft_payload_set*, %struct.nft_payload_set** %7, align 8
  %145 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @skb_store_bits(%struct.sk_buff* %141, i32 %142, i32* %143, i64 %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140, %129
  br label %151

150:                                              ; preds = %140
  br label %156

151:                                              ; preds = %149, %127, %114, %49, %33
  %152 = load i32, i32* @NFT_BREAK, align 4
  %153 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %154 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %150
  ret void
}

declare dso_local %struct.nft_payload_set* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @csum_partial(i32*, i64, i32) #1

declare dso_local i64 @nft_payload_csum_inet(%struct.sk_buff*, i32*, i32, i32, i32) #1

declare dso_local i64 @nft_payload_l4csum_update(%struct.nft_pktinfo*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i64 @skb_store_bits(%struct.sk_buff*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
