; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_set_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_payload_set = type { i32, i32, i8*, i32, i8*, i8*, i8* }

@NFTA_PAYLOAD_BASE = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_OFFSET = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_LEN = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_SREG = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_CSUM_TYPE = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_CSUM_OFFSET = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_CSUM_FLAGS = common dso_local global i64 0, align 8
@NFT_PAYLOAD_L4CSUM_PSEUDOHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_payload_set_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_payload_set_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_payload_set*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_payload_set* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_payload_set* %11, %struct.nft_payload_set** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_PAYLOAD_BASE, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i32 @nla_get_be32(%struct.nlattr* %15)
  %17 = call i8* @ntohl(i32 %16)
  %18 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %19 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i64, i64* @NFTA_PAYLOAD_OFFSET, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @nla_get_be32(%struct.nlattr* %23)
  %25 = call i8* @ntohl(i32 %24)
  %26 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %27 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %29 = load i64, i64* @NFTA_PAYLOAD_LEN, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @nla_get_be32(%struct.nlattr* %31)
  %33 = call i8* @ntohl(i32 %32)
  %34 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %35 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = load i64, i64* @NFTA_PAYLOAD_SREG, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i32 @nft_parse_register(%struct.nlattr* %39)
  %41 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %42 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %44 = load i64, i64* @NFTA_PAYLOAD_CSUM_TYPE, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %3
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = load i64, i64* @NFTA_PAYLOAD_CSUM_TYPE, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be32(%struct.nlattr* %52)
  %54 = call i8* @ntohl(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %57 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %3
  %59 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %60 = load i64, i64* @NFTA_PAYLOAD_CSUM_OFFSET, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %66 = load i64, i64* @NFTA_PAYLOAD_CSUM_OFFSET, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_get_be32(%struct.nlattr* %68)
  %70 = call i8* @ntohl(i32 %69)
  %71 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %72 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %75 = load i64, i64* @NFTA_PAYLOAD_CSUM_FLAGS, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %81 = load i64, i64* @NFTA_PAYLOAD_CSUM_FLAGS, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %80, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32 @nla_get_be32(%struct.nlattr* %83)
  %85 = call i8* @ntohl(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @NFT_PAYLOAD_L4CSUM_PSEUDOHDR, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %115

95:                                               ; preds = %79
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %98 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %73
  %100 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %101 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %104 [
    i32 128, label %103
    i32 129, label %103
  ]

103:                                              ; preds = %99, %99
  br label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %115

107:                                              ; preds = %103
  %108 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %109 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.nft_payload_set*, %struct.nft_payload_set** %8, align 8
  %112 = getelementptr inbounds %struct.nft_payload_set, %struct.nft_payload_set* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @nft_validate_register_load(i32 %110, i8* %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %107, %104, %92
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.nft_payload_set* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
