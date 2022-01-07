; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_verdict_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_verdict_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nft_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nft_chain* }
%struct.nft_chain = type { i32 }
%struct.nft_data_desc = type { i32, i32 }
%struct.nlattr = type { i32 }

@NFTA_VERDICT_MAX = common dso_local global i32 0, align 4
@nft_verdict_policy = common dso_local global i32 0, align 4
@NFTA_VERDICT_CODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@NFTA_VERDICT_CHAIN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFT_DATA_VERDICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_data*, %struct.nft_data_desc*, %struct.nlattr*)* @nft_verdict_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_verdict_init(%struct.nft_ctx* %0, %struct.nft_data* %1, %struct.nft_data_desc* %2, %struct.nlattr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_ctx*, align 8
  %7 = alloca %struct.nft_data*, align 8
  %8 = alloca %struct.nft_data_desc*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nft_chain*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %6, align 8
  store %struct.nft_data* %1, %struct.nft_data** %7, align 8
  store %struct.nft_data_desc* %2, %struct.nft_data_desc** %8, align 8
  store %struct.nlattr* %3, %struct.nlattr** %9, align 8
  %16 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nft_genmask_next(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @NFTA_VERDICT_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @NFTA_VERDICT_MAX, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %27 = load i32, i32* @nft_verdict_policy, align 4
  %28 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %24, i32 %25, %struct.nlattr* %26, i32 %27, i32* null)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

33:                                               ; preds = %4
  %34 = load i64, i64* @NFTA_VERDICT_CODE, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

41:                                               ; preds = %33
  %42 = load i64, i64* @NFTA_VERDICT_CODE, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_be32(%struct.nlattr* %44)
  %46 = call i32 @ntohl(i32 %45)
  %47 = load %struct.nft_data*, %struct.nft_data** %7, align 8
  %48 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nft_data*, %struct.nft_data** %7, align 8
  %51 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %54 [
    i32 134, label %66
    i32 135, label %66
    i32 131, label %66
    i32 132, label %67
    i32 133, label %67
  ]

54:                                               ; preds = %41
  %55 = load %struct.nft_data*, %struct.nft_data** %7, align 8
  %56 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NF_VERDICT_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %62 [
    i32 130, label %61
    i32 129, label %61
    i32 128, label %61
  ]

61:                                               ; preds = %54, %54, %54
  br label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %41, %41, %41, %65
  br label %109

67:                                               ; preds = %41, %41
  %68 = load i64, i64* @NFTA_VERDICT_CHAIN, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

75:                                               ; preds = %67
  %76 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %77 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @NFTA_VERDICT_CHAIN, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.nft_chain* @nft_chain_lookup(i32 %78, i32 %81, %struct.nlattr* %84, i32 %85)
  store %struct.nft_chain* %86, %struct.nft_chain** %13, align 8
  %87 = load %struct.nft_chain*, %struct.nft_chain** %13, align 8
  %88 = call i32 @IS_ERR(%struct.nft_chain* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load %struct.nft_chain*, %struct.nft_chain** %13, align 8
  %92 = call i32 @PTR_ERR(%struct.nft_chain* %91)
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

93:                                               ; preds = %75
  %94 = load %struct.nft_chain*, %struct.nft_chain** %13, align 8
  %95 = call i32 @nft_is_base_chain(%struct.nft_chain* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

100:                                              ; preds = %93
  %101 = load %struct.nft_chain*, %struct.nft_chain** %13, align 8
  %102 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.nft_chain*, %struct.nft_chain** %13, align 8
  %106 = load %struct.nft_data*, %struct.nft_data** %7, align 8
  %107 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store %struct.nft_chain* %105, %struct.nft_chain** %108, align 8
  br label %109

109:                                              ; preds = %100, %66
  %110 = load %struct.nft_data_desc*, %struct.nft_data_desc** %8, align 8
  %111 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %110, i32 0, i32 0
  store i32 16, i32* %111, align 4
  %112 = load i32, i32* @NFT_DATA_VERDICT, align 4
  %113 = load %struct.nft_data_desc*, %struct.nft_data_desc** %8, align 8
  %114 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

115:                                              ; preds = %109, %97, %90, %72, %62, %38, %31
  %116 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @nft_genmask_next(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_chain* @nft_chain_lookup(i32, i32, %struct.nlattr*, i32) #1

declare dso_local i32 @IS_ERR(%struct.nft_chain*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_chain*) #1

declare dso_local i32 @nft_is_base_chain(%struct.nft_chain*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
