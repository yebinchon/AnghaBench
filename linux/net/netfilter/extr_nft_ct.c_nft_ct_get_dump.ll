; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_get_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_get_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_ct = type { i32, i32, i32 }

@NFTA_CT_DREG = common dso_local global i32 0, align 4
@NFTA_CT_KEY = common dso_local global i32 0, align 4
@NFTA_CT_DIRECTION = common dso_local global i32 0, align 4
@IP_CT_DIR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_ct_get_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ct_get_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_ct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_ct* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_ct* %8, %struct.nft_ct** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_CT_DREG, align 4
  %11 = load %struct.nft_ct*, %struct.nft_ct** %6, align 8
  %12 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_CT_KEY, align 4
  %20 = load %struct.nft_ct*, %struct.nft_ct** %6, align 8
  %21 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htonl(i32 %22)
  %24 = call i64 @nla_put_be32(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.nft_ct*, %struct.nft_ct** %6, align 8
  %29 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %57 [
    i32 131, label %31
    i32 137, label %31
    i32 130, label %31
    i32 136, label %31
    i32 129, label %31
    i32 135, label %31
    i32 132, label %31
    i32 133, label %31
    i32 138, label %41
    i32 134, label %41
    i32 139, label %41
    i32 128, label %41
  ]

31:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @NFTA_CT_DIRECTION, align 4
  %34 = load %struct.nft_ct*, %struct.nft_ct** %6, align 8
  %35 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nla_put_u8(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %59

40:                                               ; preds = %31
  br label %58

41:                                               ; preds = %27, %27, %27, %27
  %42 = load %struct.nft_ct*, %struct.nft_ct** %6, align 8
  %43 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IP_CT_DIR_MAX, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @NFTA_CT_DIRECTION, align 4
  %50 = load %struct.nft_ct*, %struct.nft_ct** %6, align 8
  %51 = getelementptr inbounds %struct.nft_ct, %struct.nft_ct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nla_put_u8(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %59

56:                                               ; preds = %47, %41
  br label %58

57:                                               ; preds = %27
  br label %58

58:                                               ; preds = %57, %56, %40
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %55, %39, %26, %16
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.nft_ct* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
