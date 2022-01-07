; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_match* }
%struct.xt_match = type { i32, i32, i32, i32 }

@NFTA_MATCH_NAME = common dso_local global i32 0, align 4
@NFTA_MATCH_REV = common dso_local global i32 0, align 4
@NFTA_MATCH_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*, i8*)* @__nft_match_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nft_match_dump(%struct.sk_buff* %0, %struct.nft_expr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xt_match*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %10 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.xt_match*, %struct.xt_match** %12, align 8
  store %struct.xt_match* %13, %struct.xt_match** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @NFTA_MATCH_NAME, align 4
  %16 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %17 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @nla_put_string(%struct.sk_buff* %14, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i32, i32* @NFTA_MATCH_REV, align 4
  %24 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %25 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @htonl(i32 %26)
  %28 = call i64 @nla_put_be32(%struct.sk_buff* %22, i32 %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @NFTA_MATCH_INFO, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %35 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %38 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nft_extension_dump_info(%struct.sk_buff* %31, i32 %32, i8* %33, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30, %21, %3
  br label %44

43:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

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
