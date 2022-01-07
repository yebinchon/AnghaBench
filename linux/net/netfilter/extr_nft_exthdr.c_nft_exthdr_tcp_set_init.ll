; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_tcp_set_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_tcp_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_exthdr = type { i32, i32, i32, i32, i32, i32 }

@NFT_EXTHDR_OP_IPV6 = common dso_local global i32 0, align 4
@NFTA_EXTHDR_SREG = common dso_local global i64 0, align 8
@NFTA_EXTHDR_TYPE = common dso_local global i64 0, align 8
@NFTA_EXTHDR_OFFSET = common dso_local global i64 0, align 8
@NFTA_EXTHDR_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_EXTHDR_DREG = common dso_local global i64 0, align 8
@NFTA_EXTHDR_FLAGS = common dso_local global i64 0, align 8
@U8_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_EXTHDR_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_exthdr_tcp_set_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_exthdr_tcp_set_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_exthdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %15 = call %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr* %14)
  store %struct.nft_exthdr* %15, %struct.nft_exthdr** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @NFT_EXTHDR_OP_IPV6, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %18 = load i64, i64* @NFTA_EXTHDR_SREG, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %24 = load i64, i64* @NFTA_EXTHDR_TYPE, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = load i64, i64* @NFTA_EXTHDR_OFFSET, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %36 = load i64, i64* @NFTA_EXTHDR_LEN, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34, %28, %22, %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %138

43:                                               ; preds = %34
  %44 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %45 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %51 = load i64, i64* @NFTA_EXTHDR_FLAGS, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %138

58:                                               ; preds = %49
  %59 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %60 = load i64, i64* @NFTA_EXTHDR_OFFSET, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = load i32, i32* @U8_MAX, align 4
  %64 = call i32 @nft_parse_u32_check(%struct.nlattr* %62, i32 %63, i32* %9)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %138

69:                                               ; preds = %58
  %70 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %71 = load i64, i64* @NFTA_EXTHDR_LEN, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = load i32, i32* @U8_MAX, align 4
  %75 = call i32 @nft_parse_u32_check(%struct.nlattr* %73, i32 %74, i32* %10)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  br label %138

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %138

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  switch i32 %87, label %90 [
    i32 2, label %88
    i32 4, label %89
  ]

88:                                               ; preds = %86
  br label %93

89:                                               ; preds = %86
  br label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %138

93:                                               ; preds = %89, %88
  %94 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %95 = load i64, i64* @NFTA_EXTHDR_OP, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = load i32, i32* @U8_MAX, align 4
  %99 = call i32 @nft_parse_u32_check(%struct.nlattr* %97, i32 %98, i32* %12)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %4, align 4
  br label %138

104:                                              ; preds = %93
  %105 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %106 = load i64, i64* @NFTA_EXTHDR_TYPE, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %105, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i32 @nla_get_u8(%struct.nlattr* %108)
  %110 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %111 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %114 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %117 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %119 = load i64, i64* @NFTA_EXTHDR_SREG, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i32 @nft_parse_register(%struct.nlattr* %121)
  %123 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %124 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %127 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %130 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %132 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %135 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @nft_validate_register_load(i32 %133, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %104, %102, %90, %83, %78, %67, %55, %40
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_parse_u32_check(%struct.nlattr*, i32, i32*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
