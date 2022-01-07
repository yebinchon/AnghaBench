; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_match_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_match_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32, i32, i32, i32, i32, %struct.xt_match*, i32, i32* }
%struct.xt_match = type { i32, i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_MATCH_NAME = common dso_local global i64 0, align 8
@NFTA_MATCH_REV = common dso_local global i64 0, align 8
@NFTA_MATCH_INFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nft_match_type = common dso_local global i32 0, align 4
@nft_match_eval = common dso_local global i32 0, align 4
@nft_match_init = common dso_local global i32 0, align 4
@nft_match_destroy = common dso_local global i32 0, align 4
@nft_match_dump = common dso_local global i32 0, align 4
@nft_match_validate = common dso_local global i32 0, align 4
@NFT_MATCH_LARGE_THRESH = common dso_local global i32 0, align 4
@nft_match_large_eval = common dso_local global i32 0, align 4
@nft_match_large_init = common dso_local global i32 0, align 4
@nft_match_large_destroy = common dso_local global i32 0, align 4
@nft_match_large_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_match_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_match_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nft_expr_ops*, align 8
  %7 = alloca %struct.xt_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %14 = load i64, i64* @NFTA_MATCH_NAME, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp eq %struct.nlattr* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @NFTA_MATCH_REV, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp eq %struct.nlattr* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @NFTA_MATCH_INFO, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp eq %struct.nlattr* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %18, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.nft_expr_ops* @ERR_PTR(i32 %32)
  store %struct.nft_expr_ops* %33, %struct.nft_expr_ops** %3, align 8
  br label %136

34:                                               ; preds = %24
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @NFTA_MATCH_NAME, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i8* @nla_data(%struct.nlattr* %38)
  store i8* %39, i8** %9, align 8
  %40 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %41 = load i64, i64* @NFTA_MATCH_REV, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_be32(%struct.nlattr* %43)
  %45 = call i32 @ntohl(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.xt_match* @xt_request_find_match(i32 %49, i8* %50, i32 %51)
  store %struct.xt_match* %52, %struct.xt_match** %7, align 8
  %53 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %54 = call i64 @IS_ERR(%struct.xt_match* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.nft_expr_ops* @ERR_PTR(i32 %58)
  store %struct.nft_expr_ops* %59, %struct.nft_expr_ops** %3, align 8
  br label %136

60:                                               ; preds = %34
  %61 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %62 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %65 = load i64, i64* @NFTA_MATCH_INFO, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_len(%struct.nlattr* %67)
  %69 = icmp sgt i32 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %129

73:                                               ; preds = %60
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.nft_expr_ops* @kzalloc(i32 48, i32 %74)
  store %struct.nft_expr_ops* %75, %struct.nft_expr_ops** %6, align 8
  %76 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %77 = icmp ne %struct.nft_expr_ops* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %129

81:                                               ; preds = %73
  %82 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %83 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %82, i32 0, i32 7
  store i32* @nft_match_type, i32** %83, align 8
  %84 = load i32, i32* @nft_match_eval, align 4
  %85 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %86 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @nft_match_init, align 4
  %88 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %89 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @nft_match_destroy, align 4
  %91 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %92 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @nft_match_dump, align 4
  %94 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %95 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @nft_match_validate, align 4
  %97 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %98 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %100 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %101 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %100, i32 0, i32 5
  store %struct.xt_match* %99, %struct.xt_match** %101, align 8
  %102 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %103 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @XT_ALIGN(i32 %104)
  %106 = call i32 @NFT_EXPR_SIZE(i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @NFT_MATCH_LARGE_THRESH, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %81
  %111 = call i32 @NFT_EXPR_SIZE(i32 4)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @nft_match_large_eval, align 4
  %113 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %114 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @nft_match_large_init, align 4
  %116 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %117 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @nft_match_large_destroy, align 4
  %119 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %120 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @nft_match_large_dump, align 4
  %122 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %123 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %110, %81
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %127 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  store %struct.nft_expr_ops* %128, %struct.nft_expr_ops** %3, align 8
  br label %136

129:                                              ; preds = %78, %70
  %130 = load %struct.xt_match*, %struct.xt_match** %7, align 8
  %131 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @module_put(i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = call %struct.nft_expr_ops* @ERR_PTR(i32 %134)
  store %struct.nft_expr_ops* %135, %struct.nft_expr_ops** %3, align 8
  br label %136

136:                                              ; preds = %129, %124, %56, %30
  %137 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %137
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.xt_match* @xt_request_find_match(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_match*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.nft_expr_ops* @kzalloc(i32, i32) #1

declare dso_local i32 @NFT_EXPR_SIZE(i32) #1

declare dso_local i32 @XT_ALIGN(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
