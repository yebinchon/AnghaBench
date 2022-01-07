; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_masq.c_nft_masq_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_masq.c_nft_masq_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_masq = type { i64, i64, i64 }

@NFTA_MASQ_FLAGS = common dso_local global i32 0, align 4
@NFTA_MASQ_REG_PROTO_MIN = common dso_local global i32 0, align 4
@NFTA_MASQ_REG_PROTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_masq_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_masq_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_masq*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_masq* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_masq* %8, %struct.nft_masq** %6, align 8
  %9 = load %struct.nft_masq*, %struct.nft_masq** %6, align 8
  %10 = getelementptr inbounds %struct.nft_masq, %struct.nft_masq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @NFTA_MASQ_FLAGS, align 4
  %16 = load %struct.nft_masq*, %struct.nft_masq** %6, align 8
  %17 = getelementptr inbounds %struct.nft_masq, %struct.nft_masq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @htonl(i64 %18)
  %20 = call i64 @nla_put_be32(%struct.sk_buff* %14, i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %47

23:                                               ; preds = %13, %2
  %24 = load %struct.nft_masq*, %struct.nft_masq** %6, align 8
  %25 = getelementptr inbounds %struct.nft_masq, %struct.nft_masq* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @NFTA_MASQ_REG_PROTO_MIN, align 4
  %31 = load %struct.nft_masq*, %struct.nft_masq** %6, align 8
  %32 = getelementptr inbounds %struct.nft_masq, %struct.nft_masq* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @nft_dump_register(%struct.sk_buff* %29, i32 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @NFTA_MASQ_REG_PROTO_MAX, align 4
  %39 = load %struct.nft_masq*, %struct.nft_masq** %6, align 8
  %40 = getelementptr inbounds %struct.nft_masq, %struct.nft_masq* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @nft_dump_register(%struct.sk_buff* %37, i32 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28
  br label %47

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %23
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %44, %22
  store i32 -1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.nft_masq* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
