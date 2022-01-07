; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_set_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_payload_set = type { i32, i32, i32, i32, i32, i32, i32 }

@NFTA_PAYLOAD_SREG = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_BASE = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_OFFSET = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_LEN = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_CSUM_TYPE = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_CSUM_OFFSET = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_CSUM_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_payload_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_payload_set_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_payload_set*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_payload_set* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_payload_set* %8, %struct.nft_payload_set** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_PAYLOAD_SREG, align 4
  %11 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %12 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @NFTA_PAYLOAD_BASE, align 4
  %19 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %20 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = call i64 @nla_put_be32(%struct.sk_buff* %17, i32 %18, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @NFTA_PAYLOAD_OFFSET, align 4
  %28 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %29 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = call i64 @nla_put_be32(%struct.sk_buff* %26, i32 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @NFTA_PAYLOAD_LEN, align 4
  %37 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %38 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = call i64 @nla_put_be32(%struct.sk_buff* %35, i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @NFTA_PAYLOAD_CSUM_TYPE, align 4
  %46 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %47 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @htonl(i32 %48)
  %50 = call i64 @nla_put_be32(%struct.sk_buff* %44, i32 %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* @NFTA_PAYLOAD_CSUM_OFFSET, align 4
  %55 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %56 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = call i64 @nla_put_be32(%struct.sk_buff* %53, i32 %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @NFTA_PAYLOAD_CSUM_FLAGS, align 4
  %64 = load %struct.nft_payload_set*, %struct.nft_payload_set** %6, align 8
  %65 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @htonl(i32 %66)
  %68 = call i64 @nla_put_be32(%struct.sk_buff* %62, i32 %63, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %52, %43, %34, %25, %16, %2
  br label %72

71:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %73

72:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nft_payload_set* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
