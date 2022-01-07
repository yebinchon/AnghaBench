; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_jhash_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_jhash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_jhash = type { i32, i32, i32, i8*, i8*, i8*, i64 }

@NFTA_HASH_SREG = common dso_local global i64 0, align 8
@NFTA_HASH_DREG = common dso_local global i64 0, align 8
@NFTA_HASH_LEN = common dso_local global i64 0, align 8
@NFTA_HASH_MODULUS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_HASH_OFFSET = common dso_local global i64 0, align 8
@U8_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@NFTA_HASH_SEED = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_jhash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_jhash_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_jhash*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_jhash* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_jhash* %12, %struct.nft_jhash** %8, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i64, i64* @NFTA_HASH_SREG, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i64, i64* @NFTA_HASH_DREG, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @NFTA_HASH_LEN, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %32 = load i64, i64* @NFTA_HASH_MODULUS, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %24, %18, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %161

39:                                               ; preds = %30
  %40 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %41 = load i64, i64* @NFTA_HASH_OFFSET, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %47 = load i64, i64* @NFTA_HASH_OFFSET, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @nla_get_be32(%struct.nlattr* %49)
  %51 = call i8* @ntohl(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %54 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %45, %39
  %56 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %57 = load i64, i64* @NFTA_HASH_SREG, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i8* @nft_parse_register(%struct.nlattr* %59)
  %61 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %62 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %64 = load i64, i64* @NFTA_HASH_DREG, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i8* @nft_parse_register(%struct.nlattr* %66)
  %68 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %69 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %71 = load i64, i64* @NFTA_HASH_LEN, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = load i32, i32* @U8_MAX, align 4
  %75 = call i32 @nft_parse_u32_check(%struct.nlattr* %73, i32 %74, i64* %9)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %55
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %161

80:                                               ; preds = %55
  %81 = load i64, i64* %9, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @ERANGE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %161

86:                                               ; preds = %80
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %89 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %88, i32 0, i32 6
  store i64 %87, i64* %89, align 8
  %90 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %91 = load i64, i64* @NFTA_HASH_MODULUS, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i32 @nla_get_be32(%struct.nlattr* %93)
  %95 = call i8* @ntohl(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %98 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %100 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load i32, i32* @ERANGE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %161

106:                                              ; preds = %86
  %107 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %108 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %111 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %116 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i32, i32* @EOVERFLOW, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %161

122:                                              ; preds = %106
  %123 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %124 = load i64, i64* @NFTA_HASH_SEED, align 8
  %125 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %123, i64 %124
  %126 = load %struct.nlattr*, %struct.nlattr** %125, align 8
  %127 = icmp ne %struct.nlattr* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %130 = load i64, i64* @NFTA_HASH_SEED, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %129, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = call i32 @nla_get_be32(%struct.nlattr* %132)
  %134 = call i8* @ntohl(i32 %133)
  %135 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %136 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  br label %143

137:                                              ; preds = %122
  %138 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %139 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  %140 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %141 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %140, i32 0, i32 5
  %142 = call i32 @get_random_bytes(i8** %141, i32 8)
  br label %143

143:                                              ; preds = %137, %128
  %144 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %145 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i64 @nft_validate_register_load(i8* %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %152 = load %struct.nft_jhash*, %struct.nft_jhash** %8, align 8
  %153 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* @NFT_DATA_VALUE, align 4
  %156 = call i64 @nft_validate_register_store(%struct.nft_ctx* %151, i8* %154, i32* null, i32 %155, i32 8)
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %150, %143
  %159 = phi i1 [ false, %143 ], [ %157, %150 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %119, %103, %83, %78, %36
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.nft_jhash* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_u32_check(%struct.nlattr*, i32, i64*) #1

declare dso_local i32 @get_random_bytes(i8**, i32) #1

declare dso_local i64 @nft_validate_register_load(i8*, i64) #1

declare dso_local i64 @nft_validate_register_store(%struct.nft_ctx*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
