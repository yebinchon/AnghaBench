; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32, %struct.xt_target*, i32, i32, i32, i32, i32, i32* }
%struct.xt_target = type { i64, i32, i32 }
%struct.nft_ctx = type { i64 }
%struct.nlattr = type { i32 }

@NFTA_TARGET_NAME = common dso_local global i64 0, align 8
@NFTA_TARGET_REV = common dso_local global i64 0, align 8
@NFTA_TARGET_INFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XT_ERROR_TARGET = common dso_local global i8* null, align 8
@XT_STANDARD_TARGET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nft_target_type = common dso_local global i32 0, align 4
@nft_target_init = common dso_local global i32 0, align 4
@nft_target_destroy = common dso_local global i32 0, align 4
@nft_target_dump = common dso_local global i32 0, align 4
@nft_target_validate = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i64 0, align 8
@nft_target_eval_bridge = common dso_local global i32 0, align 4
@nft_target_eval_xt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_target_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_target_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nft_expr_ops*, align 8
  %7 = alloca %struct.xt_target*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @NFTA_TARGET_NAME, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp eq %struct.nlattr* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load i64, i64* @NFTA_TARGET_REV, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp eq %struct.nlattr* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %25 = load i64, i64* @NFTA_TARGET_INFO, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp eq %struct.nlattr* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %17, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.nft_expr_ops* @ERR_PTR(i32 %31)
  store %struct.nft_expr_ops* %32, %struct.nft_expr_ops** %3, align 8
  br label %151

33:                                               ; preds = %23
  %34 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %35 = load i64, i64* @NFTA_TARGET_NAME, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i8* @nla_data(%struct.nlattr* %37)
  store i8* %38, i8** %8, align 8
  %39 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %40 = load i64, i64* @NFTA_TARGET_REV, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_be32(%struct.nlattr* %42)
  %44 = call i64 @ntohl(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** @XT_ERROR_TARGET, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %33
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** @XT_STANDARD_TARGET, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %52, %33
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.nft_expr_ops* @ERR_PTR(i32 %63)
  store %struct.nft_expr_ops* %64, %struct.nft_expr_ops** %3, align 8
  br label %151

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call %struct.xt_target* @xt_request_find_target(i64 %66, i8* %67, i64 %68)
  store %struct.xt_target* %69, %struct.xt_target** %7, align 8
  %70 = load %struct.xt_target*, %struct.xt_target** %7, align 8
  %71 = call i64 @IS_ERR(%struct.xt_target* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.nft_expr_ops* @ERR_PTR(i32 %75)
  store %struct.nft_expr_ops* %76, %struct.nft_expr_ops** %3, align 8
  br label %151

77:                                               ; preds = %65
  %78 = load %struct.xt_target*, %struct.xt_target** %7, align 8
  %79 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %144

85:                                               ; preds = %77
  %86 = load %struct.xt_target*, %struct.xt_target** %7, align 8
  %87 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %90 = load i64, i64* @NFTA_TARGET_INFO, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i64 @nla_len(%struct.nlattr* %92)
  %94 = icmp sgt i64 %88, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %144

98:                                               ; preds = %85
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.nft_expr_ops* @kzalloc(i32 48, i32 %99)
  store %struct.nft_expr_ops* %100, %struct.nft_expr_ops** %6, align 8
  %101 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %102 = icmp ne %struct.nft_expr_ops* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %144

106:                                              ; preds = %98
  %107 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %108 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %107, i32 0, i32 7
  store i32* @nft_target_type, i32** %108, align 8
  %109 = load %struct.xt_target*, %struct.xt_target** %7, align 8
  %110 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @XT_ALIGN(i64 %111)
  %113 = call i32 @NFT_EXPR_SIZE(i32 %112)
  %114 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %115 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @nft_target_init, align 4
  %117 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %118 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @nft_target_destroy, align 4
  %120 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %121 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @nft_target_dump, align 4
  %123 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %124 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @nft_target_validate, align 4
  %126 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %127 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.xt_target*, %struct.xt_target** %7, align 8
  %129 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %130 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %129, i32 0, i32 1
  store %struct.xt_target* %128, %struct.xt_target** %130, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %106
  %135 = load i32, i32* @nft_target_eval_bridge, align 4
  %136 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %137 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %142

138:                                              ; preds = %106
  %139 = load i32, i32* @nft_target_eval_xt, align 4
  %140 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  %141 = getelementptr inbounds %struct.nft_expr_ops, %struct.nft_expr_ops* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %6, align 8
  store %struct.nft_expr_ops* %143, %struct.nft_expr_ops** %3, align 8
  br label %151

144:                                              ; preds = %103, %95, %82
  %145 = load %struct.xt_target*, %struct.xt_target** %7, align 8
  %146 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @module_put(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = call %struct.nft_expr_ops* @ERR_PTR(i32 %149)
  store %struct.nft_expr_ops* %150, %struct.nft_expr_ops** %3, align 8
  br label %151

151:                                              ; preds = %144, %142, %73, %61, %29
  %152 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %152
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.xt_target* @xt_request_find_target(i64, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.nft_expr_ops* @kzalloc(i32, i32) #1

declare dso_local i32 @NFT_EXPR_SIZE(i32) #1

declare dso_local i32 @XT_ALIGN(i64) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
