; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.xt_match* }
%struct.xt_match = type { i32 (%struct.sk_buff*, %struct.xt_action_param*)* }
%struct.sk_buff = type opaque
%struct.xt_action_param = type opaque
%struct.nft_regs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_4__, %struct.sk_buff.0* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff.0 = type { i32 }
%struct.xt_action_param.1 = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@NFT_CONTINUE = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*, i8*)* @__nft_match_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nft_match_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2, i8* %3) #0 {
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_regs*, align 8
  %7 = alloca %struct.nft_pktinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xt_match*, align 8
  %10 = alloca %struct.sk_buff.0*, align 8
  %11 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %5, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %6, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %13 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.xt_match*, %struct.xt_match** %15, align 8
  store %struct.xt_match* %16, %struct.xt_match** %9, align 8
  %17 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %18 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %17, i32 0, i32 1
  %19 = load %struct.sk_buff.0*, %struct.sk_buff.0** %18, align 8
  store %struct.sk_buff.0* %19, %struct.sk_buff.0** %10, align 8
  %20 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %21 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_4__* %21 to %struct.xt_action_param.1*
  %23 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @nft_compat_set_par(%struct.xt_action_param.1* %22, %struct.xt_match* %23, i8* %24)
  %26 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %27 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %26, i32 0, i32 0
  %28 = load i32 (%struct.sk_buff*, %struct.xt_action_param*)*, i32 (%struct.sk_buff*, %struct.xt_action_param*)** %27, align 8
  %29 = load %struct.sk_buff.0*, %struct.sk_buff.0** %10, align 8
  %30 = bitcast %struct.sk_buff.0* %29 to %struct.sk_buff*
  %31 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %32 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_4__* %32 to %struct.xt_action_param.1*
  %34 = bitcast %struct.xt_action_param.1* %33 to %struct.xt_action_param*
  %35 = call i32 %28(%struct.sk_buff* %30, %struct.xt_action_param* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %7, align 8
  %37 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load i32, i32* @NF_DROP, align 4
  %43 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %44 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %61

46:                                               ; preds = %4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  switch i32 %50, label %61 [
    i32 1, label %51
    i32 0, label %56
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* @NFT_CONTINUE, align 4
  %53 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %54 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @NFT_BREAK, align 4
  %58 = load %struct.nft_regs*, %struct.nft_regs** %6, align 8
  %59 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %41, %46, %56, %51
  ret void
}

declare dso_local i32 @nft_compat_set_par(%struct.xt_action_param.1*, %struct.xt_match*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
