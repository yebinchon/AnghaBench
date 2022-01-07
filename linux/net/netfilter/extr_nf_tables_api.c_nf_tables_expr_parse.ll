; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_expr_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_expr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nlattr = type opaque
%struct.nft_expr_info = type { %struct.nft_expr_type*, %struct.nlattr** }
%struct.nft_expr_type = type { i32, i32, %struct.nft_expr_type*, %struct.nft_expr_type* (%struct.nft_ctx.0*, %struct.nlattr**)*, i32 }
%struct.nft_ctx.0 = type opaque
%struct.nft_expr_ops = type { i32, i32, %struct.nft_expr_ops*, %struct.nft_expr_type* (%struct.nft_ctx.1*, %struct.nlattr**)*, i32 }
%struct.nft_ctx.1 = type opaque

@NFTA_EXPR_MAX = common dso_local global i32 0, align 4
@nft_expr_policy = common dso_local global i32 0, align 4
@NFTA_EXPR_NAME = common dso_local global i64 0, align 8
@NFTA_EXPR_DATA = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr*, %struct.nft_expr_info*)* @nf_tables_expr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_expr_parse(%struct.nft_ctx* %0, %struct.nlattr* %1, %struct.nft_expr_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nft_expr_info*, align 8
  %8 = alloca %struct.nft_expr_type*, align 8
  %9 = alloca %struct.nft_expr_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.nft_expr_info* %2, %struct.nft_expr_info** %7, align 8
  %14 = load i32, i32* @NFTA_EXPR_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @NFTA_EXPR_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = load i32, i32* @nft_expr_policy, align 4
  %22 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32 %21, i32* null)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %120

27:                                               ; preds = %3
  %28 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @NFTA_EXPR_NAME, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call %struct.nft_expr_type* @nft_expr_type_get(i32 %30, i32 %33, %struct.nlattr* %36)
  store %struct.nft_expr_type* %37, %struct.nft_expr_type** %8, align 8
  %38 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %39 = call i64 @IS_ERR(%struct.nft_expr_type* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.nft_expr_type* %42)
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %120

44:                                               ; preds = %27
  %45 = load i64, i64* @NFTA_EXPR_DATA, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.nft_expr_info*, %struct.nft_expr_info** %7, align 8
  %51 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %50, i32 0, i32 1
  %52 = load %struct.nlattr**, %struct.nlattr*** %51, align 8
  %53 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %54 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* @NFTA_EXPR_DATA, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %60 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %52, i32 %55, %struct.nlattr* %58, i32 %61, i32* null)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %114

66:                                               ; preds = %49
  br label %79

67:                                               ; preds = %44
  %68 = load %struct.nft_expr_info*, %struct.nft_expr_info** %7, align 8
  %69 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %68, i32 0, i32 1
  %70 = load %struct.nlattr**, %struct.nlattr*** %69, align 8
  %71 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %72 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(%struct.nlattr** %70, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %67, %66
  %80 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %81 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %80, i32 0, i32 3
  %82 = load %struct.nft_expr_type* (%struct.nft_ctx.0*, %struct.nlattr**)*, %struct.nft_expr_type* (%struct.nft_ctx.0*, %struct.nlattr**)** %81, align 8
  %83 = icmp ne %struct.nft_expr_type* (%struct.nft_ctx.0*, %struct.nlattr**)* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %86 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %85, i32 0, i32 3
  %87 = load %struct.nft_expr_type* (%struct.nft_ctx.0*, %struct.nlattr**)*, %struct.nft_expr_type* (%struct.nft_ctx.0*, %struct.nlattr**)** %86, align 8
  %88 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %89 = bitcast %struct.nft_ctx* %88 to %struct.nft_ctx.0*
  %90 = load %struct.nft_expr_info*, %struct.nft_expr_info** %7, align 8
  %91 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %90, i32 0, i32 1
  %92 = load %struct.nlattr**, %struct.nlattr*** %91, align 8
  %93 = call %struct.nft_expr_type* %87(%struct.nft_ctx.0* %89, %struct.nlattr** %92)
  %94 = bitcast %struct.nft_expr_type* %93 to %struct.nft_expr_ops*
  store %struct.nft_expr_ops* %94, %struct.nft_expr_ops** %9, align 8
  %95 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %9, align 8
  %96 = bitcast %struct.nft_expr_ops* %95 to %struct.nft_expr_type*
  %97 = call i64 @IS_ERR(%struct.nft_expr_type* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %84
  %100 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %9, align 8
  %101 = bitcast %struct.nft_expr_ops* %100 to %struct.nft_expr_type*
  %102 = call i32 @PTR_ERR(%struct.nft_expr_type* %101)
  store i32 %102, i32* %12, align 4
  br label %114

103:                                              ; preds = %84
  br label %109

104:                                              ; preds = %79
  %105 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %106 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %105, i32 0, i32 2
  %107 = load %struct.nft_expr_type*, %struct.nft_expr_type** %106, align 8
  %108 = bitcast %struct.nft_expr_type* %107 to %struct.nft_expr_ops*
  store %struct.nft_expr_ops* %108, %struct.nft_expr_ops** %9, align 8
  br label %109

109:                                              ; preds = %104, %103
  %110 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %9, align 8
  %111 = bitcast %struct.nft_expr_ops* %110 to %struct.nft_expr_type*
  %112 = load %struct.nft_expr_info*, %struct.nft_expr_info** %7, align 8
  %113 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %112, i32 0, i32 0
  store %struct.nft_expr_type* %111, %struct.nft_expr_type** %113, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %120

114:                                              ; preds = %99, %65
  %115 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %116 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @module_put(i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %114, %109, %41, %25
  %121 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local %struct.nft_expr_type* @nft_expr_type_get(i32, i32, %struct.nlattr*) #2

declare dso_local i64 @IS_ERR(%struct.nft_expr_type*) #2

declare dso_local i32 @PTR_ERR(%struct.nft_expr_type*) #2

declare dso_local i32 @memset(%struct.nlattr**, i32, i32) #2

declare dso_local i32 @module_put(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
