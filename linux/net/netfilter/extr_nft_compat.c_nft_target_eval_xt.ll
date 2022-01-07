; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_eval_xt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_eval_xt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 (%struct.sk_buff*, %struct.TYPE_6__*)* }
%struct.sk_buff = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.nft_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_6__, %struct.sk_buff.0* }
%struct.sk_buff.0 = type { i32 }
%struct.xt_action_param = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@NFT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_target_eval_xt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_target_eval_xt(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xt_target*, align 8
  %9 = alloca %struct.sk_buff.0*, align 8
  %10 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = call i8* @nft_expr_priv(%struct.nft_expr* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %14 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.xt_target*, %struct.xt_target** %16, align 8
  store %struct.xt_target* %17, %struct.xt_target** %8, align 8
  %18 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %19 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %18, i32 0, i32 1
  %20 = load %struct.sk_buff.0*, %struct.sk_buff.0** %19, align 8
  store %struct.sk_buff.0* %20, %struct.sk_buff.0** %9, align 8
  %21 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %22 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_6__* %22 to %struct.xt_action_param*
  %24 = load %struct.xt_target*, %struct.xt_target** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @nft_compat_set_par(%struct.xt_action_param* %23, %struct.xt_target* %24, i8* %25)
  %27 = load %struct.xt_target*, %struct.xt_target** %8, align 8
  %28 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %27, i32 0, i32 0
  %29 = load i32 (%struct.sk_buff*, %struct.TYPE_6__*)*, i32 (%struct.sk_buff*, %struct.TYPE_6__*)** %28, align 8
  %30 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %31 = bitcast %struct.sk_buff.0* %30 to %struct.sk_buff*
  %32 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %33 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %32, i32 0, i32 0
  %34 = call i32 %29(%struct.sk_buff* %31, %struct.TYPE_6__* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %36 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @NF_DROP, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %3
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %49 [
    i32 128, label %44
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @NFT_CONTINUE, align 4
  %46 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %47 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %52 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %44
  ret void
}

declare dso_local i8* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_compat_set_par(%struct.xt_action_param*, %struct.xt_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
