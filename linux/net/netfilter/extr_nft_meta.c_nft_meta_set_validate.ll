; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_set_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_set_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nft_expr = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_meta = type { i64 }

@NFT_META_PKTTYPE = common dso_local global i64 0, align 8
@NF_BR_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_NETDEV_INGRESS = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_meta_set_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_data**, align 8
  %8 = alloca %struct.nft_meta*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_meta* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_meta* %11, %struct.nft_meta** %8, align 8
  %12 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %13 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFT_META_PKTTYPE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %31 [
    i32 132, label %22
    i32 128, label %25
    i32 130, label %28
    i32 129, label %28
    i32 131, label %28
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %9, align 4
  br label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @NF_NETDEV_INGRESS, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %9, align 4
  br label %34

28:                                               ; preds = %18, %18, %18
  %29 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %28, %25, %22
  %35 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nft_chain_validate_hooks(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %31, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_chain_validate_hooks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
