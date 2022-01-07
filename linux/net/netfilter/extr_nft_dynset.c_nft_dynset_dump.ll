; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_dynset = type { i64, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@NFT_DYNSET_F_INV = common dso_local global i32 0, align 4
@NFTA_DYNSET_SREG_KEY = common dso_local global i32 0, align 4
@NFT_SET_MAP = common dso_local global i32 0, align 4
@NFTA_DYNSET_SREG_DATA = common dso_local global i32 0, align 4
@NFTA_DYNSET_OP = common dso_local global i32 0, align 4
@NFTA_DYNSET_SET_NAME = common dso_local global i32 0, align 4
@NFTA_DYNSET_TIMEOUT = common dso_local global i32 0, align 4
@NFTA_DYNSET_PAD = common dso_local global i32 0, align 4
@NFTA_DYNSET_EXPR = common dso_local global i32 0, align 4
@NFTA_DYNSET_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_dynset_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_dynset_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_dynset*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = call %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_dynset* %9, %struct.nft_dynset** %6, align 8
  %10 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %11 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @NFT_DYNSET_F_INV, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @NFTA_DYNSET_SREG_KEY, align 4
  %21 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %22 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @nft_dump_register(%struct.sk_buff* %19, i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %101

27:                                               ; preds = %17
  %28 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %29 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFT_SET_MAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @NFTA_DYNSET_SREG_DATA, align 4
  %39 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %40 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nft_dump_register(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %101

45:                                               ; preds = %36, %27
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @NFTA_DYNSET_OP, align 4
  %48 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %49 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @htonl(i32 %50)
  %52 = call i64 @nla_put_be32(%struct.sk_buff* %46, i32 %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %101

55:                                               ; preds = %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @NFTA_DYNSET_SET_NAME, align 4
  %58 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %59 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_string(%struct.sk_buff* %56, i32 %57, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %101

66:                                               ; preds = %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* @NFTA_DYNSET_TIMEOUT, align 4
  %69 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %70 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @jiffies_to_msecs(i32 %71)
  %73 = call i32 @cpu_to_be64(i32 %72)
  %74 = load i32, i32* @NFTA_DYNSET_PAD, align 4
  %75 = call i64 @nla_put_be64(%struct.sk_buff* %67, i32 %68, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %101

78:                                               ; preds = %66
  %79 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %80 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i32, i32* @NFTA_DYNSET_EXPR, align 4
  %86 = load %struct.nft_dynset*, %struct.nft_dynset** %6, align 8
  %87 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @nft_expr_dump(%struct.sk_buff* %84, i32 %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %101

92:                                               ; preds = %83, %78
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* @NFTA_DYNSET_FLAGS, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @htonl(i32 %95)
  %97 = call i64 @nla_put_be32(%struct.sk_buff* %93, i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %101

100:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %102

101:                                              ; preds = %99, %91, %77, %65, %54, %44, %26
  store i32 -1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %100
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i64 @nft_expr_dump(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
