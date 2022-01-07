; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nft_fib_ipv4.c_nft_fib4_eval_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nft_fib_ipv4.c_nft_fib4_eval_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_fib = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32 }

@NFTA_FIB_F_IIF = common dso_local global i32 0, align 4
@NFTA_FIB_F_OIF = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i32 0, align 4
@NFTA_FIB_F_DADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_fib4_eval_type(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_fib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.iphdr, align 4
  %13 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %15 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %14)
  store %struct.nft_fib* %15, %struct.nft_fib** %7, align 8
  %16 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %17 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @skb_network_offset(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %21 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %24 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %27 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %28 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NFTA_FIB_F_IIF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %35 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %34)
  store %struct.net_device* %35, %struct.net_device** %10, align 8
  br label %47

36:                                               ; preds = %3
  %37 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %38 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %45 = call %struct.net_device* @nft_out(%struct.nft_pktinfo* %44)
  store %struct.net_device* %45, %struct.net_device** %10, align 8
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %49 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.iphdr* @skb_header_pointer(i32 %50, i32 %51, i32 8, %struct.iphdr* %12)
  store %struct.iphdr* %52, %struct.iphdr** %11, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %54 = icmp ne %struct.iphdr* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @NFT_BREAK, align 4
  %57 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %58 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %82

60:                                               ; preds = %47
  %61 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %62 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NFTA_FIB_F_DADDR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %77 = call i32 @nft_net(%struct.nft_pktinfo* %76)
  %78 = load %struct.net_device*, %struct.net_device** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @inet_dev_addr_type(i32 %77, %struct.net_device* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %55
  ret void
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @skb_network_offset(i32) #1

declare dso_local %struct.net_device* @nft_in(%struct.nft_pktinfo*) #1

declare dso_local %struct.net_device* @nft_out(%struct.nft_pktinfo*) #1

declare dso_local %struct.iphdr* @skb_header_pointer(i32, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @inet_dev_addr_type(i32, %struct.net_device*, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
