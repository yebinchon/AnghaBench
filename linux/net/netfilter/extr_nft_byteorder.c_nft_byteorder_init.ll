; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_byteorder.c_nft_byteorder_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_byteorder.c_nft_byteorder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_byteorder = type { i32, i32, i8*, i8*, i8* }

@NFTA_BYTEORDER_SREG = common dso_local global i64 0, align 8
@NFTA_BYTEORDER_DREG = common dso_local global i64 0, align 8
@NFTA_BYTEORDER_LEN = common dso_local global i64 0, align 8
@NFTA_BYTEORDER_SIZE = common dso_local global i64 0, align 8
@NFTA_BYTEORDER_OP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_byteorder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_byteorder_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_byteorder*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %13 = call %struct.nft_byteorder* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_byteorder* %13, %struct.nft_byteorder** %8, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %15 = load i64, i64* @NFTA_BYTEORDER_SREG, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp eq %struct.nlattr* %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %3
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i64, i64* @NFTA_BYTEORDER_DREG, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp eq %struct.nlattr* %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = load i64, i64* @NFTA_BYTEORDER_LEN, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i64, i64* @NFTA_BYTEORDER_SIZE, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp eq %struct.nlattr* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %39 = load i64, i64* @NFTA_BYTEORDER_OP, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp eq %struct.nlattr* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31, %25, %19, %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %135

46:                                               ; preds = %37
  %47 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %48 = load i64, i64* @NFTA_BYTEORDER_OP, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @nla_get_be32(%struct.nlattr* %50)
  %52 = call i32 @ntohl(i32 %51)
  %53 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %54 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %56 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %59 [
    i32 128, label %58
    i32 129, label %58
  ]

58:                                               ; preds = %46, %46
  br label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %135

62:                                               ; preds = %58
  %63 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %64 = load i64, i64* @NFTA_BYTEORDER_SIZE, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = load i32, i32* @U8_MAX, align 4
  %68 = call i32 @nft_parse_u32_check(%struct.nlattr* %66, i32 %67, i8** %9)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %135

73:                                               ; preds = %62
  %74 = load i8*, i8** %9, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %77 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %79 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %82 [
    i32 2, label %81
    i32 4, label %81
    i32 8, label %81
  ]

81:                                               ; preds = %73, %73, %73
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %135

85:                                               ; preds = %81
  %86 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %87 = load i64, i64* @NFTA_BYTEORDER_SREG, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i8* @nft_parse_register(%struct.nlattr* %89)
  %91 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %92 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %94 = load i64, i64* @NFTA_BYTEORDER_LEN, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %93, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = load i32, i32* @U8_MAX, align 4
  %98 = call i32 @nft_parse_u32_check(%struct.nlattr* %96, i32 %97, i8** %10)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %135

103:                                              ; preds = %85
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %106 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %108 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %111 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @nft_validate_register_load(i8* %109, i8* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %4, align 4
  br label %135

118:                                              ; preds = %103
  %119 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %120 = load i64, i64* @NFTA_BYTEORDER_DREG, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i8* @nft_parse_register(%struct.nlattr* %122)
  %124 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %125 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %127 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %128 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @NFT_DATA_VALUE, align 4
  %131 = load %struct.nft_byteorder*, %struct.nft_byteorder** %8, align 8
  %132 = getelementptr inbounds %struct.nft_byteorder, %struct.nft_byteorder* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @nft_validate_register_store(%struct.nft_ctx* %126, i8* %129, i32* null, i32 %130, i8* %133)
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %118, %116, %101, %82, %71, %59, %43
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.nft_byteorder* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_u32_check(%struct.nlattr*, i32, i8**) #1

declare dso_local i8* @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i8*, i8*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i8*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
