; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_nat.c_nft_nat_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_nat.c_nft_nat_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_nat = type { i32 }

@NFT_CHAIN_T_NAT = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nft_data**)* @nft_nat_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_nat_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_data**, align 8
  %8 = alloca %struct.nft_nat*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_nat* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_nat* %11, %struct.nft_nat** %8, align 8
  %12 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NFT_CHAIN_T_NAT, align 4
  %16 = call i32 @nft_chain_validate_dependency(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.nft_nat*, %struct.nft_nat** %8, align 8
  %23 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %45 [
    i32 128, label %25
    i32 129, label %35
  ]

25:                                               ; preds = %21
  %26 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = call i32 @nft_chain_validate_hooks(i32 %28, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %45

35:                                               ; preds = %21
  %36 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  %44 = call i32 @nft_chain_validate_hooks(i32 %38, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %21, %35, %25
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.nft_nat* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_chain_validate_dependency(i32, i32) #1

declare dso_local i32 @nft_chain_validate_hooks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
