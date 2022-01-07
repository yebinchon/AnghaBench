; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_byteorder.c_nft_byteorder_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_byteorder.c_nft_byteorder_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_byteorder = type { i32, i32, i32, i32, i32 }

@NFTA_BYTEORDER_SREG = common dso_local global i32 0, align 4
@NFTA_BYTEORDER_DREG = common dso_local global i32 0, align 4
@NFTA_BYTEORDER_OP = common dso_local global i32 0, align 4
@NFTA_BYTEORDER_LEN = common dso_local global i32 0, align 4
@NFTA_BYTEORDER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_byteorder_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_byteorder_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_byteorder*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_byteorder* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_byteorder* %8, %struct.nft_byteorder** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_BYTEORDER_SREG, align 4
  %11 = load %struct.nft_byteorder*, %struct.nft_byteorder** %6, align 8
  %12 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_BYTEORDER_DREG, align 4
  %20 = load %struct.nft_byteorder*, %struct.nft_byteorder** %6, align 8
  %21 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nft_dump_register(%struct.sk_buff* %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NFTA_BYTEORDER_OP, align 4
  %29 = load %struct.nft_byteorder*, %struct.nft_byteorder** %6, align 8
  %30 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @htonl(i32 %31)
  %33 = call i64 @nla_put_be32(%struct.sk_buff* %27, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %57

36:                                               ; preds = %26
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @NFTA_BYTEORDER_LEN, align 4
  %39 = load %struct.nft_byteorder*, %struct.nft_byteorder** %6, align 8
  %40 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @htonl(i32 %41)
  %43 = call i64 @nla_put_be32(%struct.sk_buff* %37, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %57

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @NFTA_BYTEORDER_SIZE, align 4
  %49 = load %struct.nft_byteorder*, %struct.nft_byteorder** %6, align 8
  %50 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @htonl(i32 %51)
  %53 = call i64 @nla_put_be32(%struct.sk_buff* %47, i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %55, %45, %35, %25, %16
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.nft_byteorder* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
