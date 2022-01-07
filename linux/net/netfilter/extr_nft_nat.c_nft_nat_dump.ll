; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_nat.c_nft_nat_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_nat.c_nft_nat_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_nat = type { i32, i64, i64, i64, i64, i64, i64 }

@NFTA_NAT_TYPE = common dso_local global i32 0, align 4
@NFT_NAT_SNAT = common dso_local global i64 0, align 8
@NFT_NAT_DNAT = common dso_local global i64 0, align 8
@NFTA_NAT_FAMILY = common dso_local global i32 0, align 4
@NFTA_NAT_REG_ADDR_MIN = common dso_local global i32 0, align 4
@NFTA_NAT_REG_ADDR_MAX = common dso_local global i32 0, align 4
@NFTA_NAT_REG_PROTO_MIN = common dso_local global i32 0, align 4
@NFTA_NAT_REG_PROTO_MAX = common dso_local global i32 0, align 4
@NFTA_NAT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_nat_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_nat_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_nat*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_nat* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_nat* %8, %struct.nft_nat** %6, align 8
  %9 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %10 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %30 [
    i32 128, label %12
    i32 129, label %21
  ]

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @NFTA_NAT_TYPE, align 4
  %15 = load i64, i64* @NFT_NAT_SNAT, align 8
  %16 = call i32 @htonl(i64 %15)
  %17 = call i64 @nla_put_be32(%struct.sk_buff* %13, i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %103

20:                                               ; preds = %12
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @NFTA_NAT_TYPE, align 4
  %24 = load i64, i64* @NFT_NAT_DNAT, align 8
  %25 = call i32 @htonl(i64 %24)
  %26 = call i64 @nla_put_be32(%struct.sk_buff* %22, i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %103

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %2, %29, %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @NFTA_NAT_FAMILY, align 4
  %33 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %34 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @htonl(i64 %35)
  %37 = call i64 @nla_put_be32(%struct.sk_buff* %31, i32 %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %103

40:                                               ; preds = %30
  %41 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %42 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @NFTA_NAT_REG_ADDR_MIN, align 4
  %48 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %49 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @nft_dump_register(%struct.sk_buff* %46, i32 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @NFTA_NAT_REG_ADDR_MAX, align 4
  %56 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %57 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @nft_dump_register(%struct.sk_buff* %54, i32 %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53, %45
  br label %103

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %65 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* @NFTA_NAT_REG_PROTO_MIN, align 4
  %71 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %72 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @nft_dump_register(%struct.sk_buff* %69, i32 %70, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* @NFTA_NAT_REG_PROTO_MAX, align 4
  %79 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %80 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @nft_dump_register(%struct.sk_buff* %77, i32 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76, %68
  br label %103

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %88 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load i32, i32* @NFTA_NAT_FLAGS, align 4
  %94 = load %struct.nft_nat*, %struct.nft_nat** %6, align 8
  %95 = getelementptr inbounds %struct.nft_nat, %struct.nft_nat* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @htonl(i64 %96)
  %98 = call i64 @nla_put_be32(%struct.sk_buff* %92, i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %103

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %86
  store i32 0, i32* %3, align 4
  br label %104

103:                                              ; preds = %100, %84, %61, %39, %28, %19
  store i32 -1, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.nft_nat* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
