; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_xfrm = type { i32 }

@NF_INET_FORWARD = common dso_local global i32 0, align 4
@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nft_data**)* @nft_xfrm_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_xfrm_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_data**, align 8
  %8 = alloca %struct.nft_xfrm*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_xfrm* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_xfrm* %11, %struct.nft_xfrm** %8, align 8
  %12 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %13 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 128, label %24
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @NF_INET_FORWARD, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  store i32 %23, i32* %9, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* @NF_INET_FORWARD, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  store i32 %32, i32* %9, align 4
  br label %37

33:                                               ; preds = %3
  %34 = call i32 @WARN_ON_ONCE(i32 1)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %24, %15
  %38 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @nft_chain_validate_hooks(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.nft_xfrm* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nft_chain_validate_hooks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
