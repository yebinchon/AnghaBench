; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_target* }
%struct.xt_target = type { i32, i32, i32, i32 }

@NFTA_TARGET_NAME = common dso_local global i32 0, align 4
@NFTA_TARGET_REV = common dso_local global i32 0, align 4
@NFTA_TARGET_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_target_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_target_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.xt_target*, align 8
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  store %struct.xt_target* %12, %struct.xt_target** %6, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %14 = call i8* @nft_expr_priv(%struct.nft_expr* %13)
  store i8* %14, i8** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @NFTA_TARGET_NAME, align 4
  %17 = load %struct.xt_target*, %struct.xt_target** %6, align 8
  %18 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @nla_put_string(%struct.sk_buff* %15, i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NFTA_TARGET_REV, align 4
  %25 = load %struct.xt_target*, %struct.xt_target** %6, align 8
  %26 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = call i64 @nla_put_be32(%struct.sk_buff* %23, i32 %24, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @NFTA_TARGET_INFO, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.xt_target*, %struct.xt_target** %6, align 8
  %36 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xt_target*, %struct.xt_target** %6, align 8
  %39 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nft_extension_dump_info(%struct.sk_buff* %32, i32 %33, i8* %34, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31, %22, %2
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i8* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nft_extension_dump_info(%struct.sk_buff*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
