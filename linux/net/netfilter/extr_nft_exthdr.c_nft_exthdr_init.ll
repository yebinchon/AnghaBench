; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_exthdr = type { i32, i32, i32, i32, i32, i32 }

@NFT_EXTHDR_OP_IPV6 = common dso_local global i32 0, align 4
@NFTA_EXTHDR_DREG = common dso_local global i64 0, align 8
@NFTA_EXTHDR_TYPE = common dso_local global i64 0, align 8
@NFTA_EXTHDR_OFFSET = common dso_local global i64 0, align 8
@NFTA_EXTHDR_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@NFTA_EXTHDR_FLAGS = common dso_local global i64 0, align 8
@NFT_EXTHDR_F_PRESENT = common dso_local global i32 0, align 4
@NFTA_EXTHDR_OP = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_exthdr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_exthdr_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
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
  %18 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
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
  br label %146

43:                                               ; preds = %34
  %44 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %45 = load i64, i64* @NFTA_EXTHDR_OFFSET, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = load i32, i32* @U8_MAX, align 4
  %49 = call i32 @nft_parse_u32_check(%struct.nlattr* %47, i32 %48, i32* %9)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %4, align 4
  br label %146

54:                                               ; preds = %43
  %55 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %56 = load i64, i64* @NFTA_EXTHDR_LEN, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = load i32, i32* @U8_MAX, align 4
  %60 = call i32 @nft_parse_u32_check(%struct.nlattr* %58, i32 %59, i32* %10)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %146

65:                                               ; preds = %54
  %66 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %67 = load i64, i64* @NFTA_EXTHDR_FLAGS, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %73 = load i64, i64* @NFTA_EXTHDR_FLAGS, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = load i32, i32* @U8_MAX, align 4
  %77 = call i32 @nft_parse_u32_check(%struct.nlattr* %75, i32 %76, i32* %11)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  br label %146

82:                                               ; preds = %71
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @NFT_EXTHDR_F_PRESENT, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %146

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %94 = load i64, i64* @NFTA_EXTHDR_OP, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %93, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = icmp ne %struct.nlattr* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %100 = load i64, i64* @NFTA_EXTHDR_OP, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %99, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = load i32, i32* @U8_MAX, align 4
  %104 = call i32 @nft_parse_u32_check(%struct.nlattr* %102, i32 %103, i32* %12)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %4, align 4
  br label %146

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %92
  %111 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %112 = load i64, i64* @NFTA_EXTHDR_TYPE, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %111, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i32 @nla_get_u8(%struct.nlattr* %114)
  %116 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %117 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %120 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %123 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %125 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i32 @nft_parse_register(%struct.nlattr* %127)
  %129 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %130 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %133 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %136 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %138 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %139 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @NFT_DATA_VALUE, align 4
  %142 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %143 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nft_validate_register_store(%struct.nft_ctx* %137, i32 %140, i32* null, i32 %141, i32 %144)
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %110, %107, %88, %80, %63, %52, %40
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_parse_u32_check(%struct.nlattr*, i32, i32*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
