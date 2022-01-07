; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_core.c_nft_payload_fast_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_core.c_nft_payload_fast_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i64* }
%struct.nft_pktinfo = type { %struct.TYPE_2__, i32, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nft_payload = type { i64, i64, i32, i32 }

@NFT_PAYLOAD_NETWORK_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_payload_fast_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_payload_fast_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_regs*, align 8
  %7 = alloca %struct.nft_pktinfo*, align 8
  %8 = alloca %struct.nft_payload*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %5, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %6, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %13 = call %struct.nft_payload* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_payload* %13, %struct.nft_payload** %8, align 8
  %14 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %15 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %14, i32 0, i32 2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %18 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.nft_payload*, %struct.nft_payload** %8, align 8
  %21 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  store i64* %23, i64** %10, align 8
  %24 = load %struct.nft_payload*, %struct.nft_payload** %8, align 8
  %25 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFT_PAYLOAD_NETWORK_HEADER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call i8* @skb_network_header(%struct.sk_buff* %30)
  store i8* %31, i8** %11, align 8
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %34 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %97

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i8* @skb_network_header(%struct.sk_buff* %39)
  %41 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %42 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.nft_payload*, %struct.nft_payload** %8, align 8
  %49 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.nft_payload*, %struct.nft_payload** %8, align 8
  %56 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call i8* @skb_tail_pointer(%struct.sk_buff* %60)
  %62 = icmp ugt i8* %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %97

67:                                               ; preds = %47
  %68 = load i64*, i64** %10, align 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.nft_payload*, %struct.nft_payload** %8, align 8
  %70 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i8*, i8** %11, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = load i64*, i64** %10, align 8
  %78 = bitcast i64* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %96

79:                                               ; preds = %67
  %80 = load %struct.nft_payload*, %struct.nft_payload** %8, align 8
  %81 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %11, align 8
  %86 = bitcast i8* %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %10, align 8
  store i64 %87, i64* %88, align 8
  br label %95

89:                                               ; preds = %79
  %90 = load i8*, i8** %11, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = load i64*, i64** %10, align 8
  %94 = bitcast i64* %93 to i32*
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %84
  br label %96

96:                                               ; preds = %95, %73
  store i32 1, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %66, %37
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.nft_payload* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
