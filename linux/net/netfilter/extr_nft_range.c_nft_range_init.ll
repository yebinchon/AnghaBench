; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_range.c_nft_range_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_range.c_nft_range_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_range_expr = type { i32, i64, i32, i32, i32 }
%struct.nft_data_desc = type { i64, i32 }

@NFTA_RANGE_SREG = common dso_local global i64 0, align 8
@NFTA_RANGE_OP = common dso_local global i64 0, align 8
@NFTA_RANGE_FROM_DATA = common dso_local global i64 0, align 8
@NFTA_RANGE_TO_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_range_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_range_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_range_expr*, align 8
  %9 = alloca %struct.nft_data_desc, align 8
  %10 = alloca %struct.nft_data_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %14 = call %struct.nft_range_expr* @nft_expr_priv(%struct.nft_expr* %13)
  store %struct.nft_range_expr* %14, %struct.nft_range_expr** %8, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %16 = load i64, i64* @NFTA_RANGE_SREG, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %22 = load i64, i64* @NFTA_RANGE_OP, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %28 = load i64, i64* @NFTA_RANGE_FROM_DATA, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %34 = load i64, i64* @NFTA_RANGE_TO_DATA, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26, %20, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %127

41:                                               ; preds = %32
  %42 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %43 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %42, i32 0, i32 2
  %44 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %45 = load i64, i64* @NFTA_RANGE_FROM_DATA, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @nft_data_init(i32* null, i32* %43, i32 4, %struct.nft_data_desc* %9, %struct.nlattr* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %127

53:                                               ; preds = %41
  %54 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %55 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %54, i32 0, i32 3
  %56 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %57 = load i64, i64* @NFTA_RANGE_TO_DATA, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nft_data_init(i32* null, i32* %55, i32 4, %struct.nft_data_desc* %10, %struct.nlattr* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %120

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %10, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %114

73:                                               ; preds = %64
  %74 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %75 = load i64, i64* @NFTA_RANGE_SREG, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i32 @nft_parse_register(%struct.nlattr* %77)
  %79 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %80 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %82 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @nft_validate_register_load(i32 %83, i64 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  br label %114

90:                                               ; preds = %73
  %91 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %92 = load i64, i64* @NFTA_RANGE_OP, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %91, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = load i32, i32* @U8_MAX, align 4
  %96 = call i32 @nft_parse_u32_check(%struct.nlattr* %94, i32 %95, i32* %12)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %114

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  switch i32 %101, label %103 [
    i32 129, label %102
    i32 128, label %102
  ]

102:                                              ; preds = %100, %100
  br label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %109 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %113 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %4, align 4
  br label %127

114:                                              ; preds = %103, %99, %89, %70
  %115 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %116 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %10, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @nft_data_release(i32* %116, i32 %118)
  br label %120

120:                                              ; preds = %114, %63
  %121 = load %struct.nft_range_expr*, %struct.nft_range_expr** %8, align 8
  %122 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @nft_data_release(i32* %122, i32 %124)
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %120, %106, %51, %38
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.nft_range_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_data_init(i32*, i32*, i32, %struct.nft_data_desc*, %struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i64) #1

declare dso_local i32 @nft_parse_u32_check(%struct.nlattr*, i32, i32*) #1

declare dso_local i32 @nft_data_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
