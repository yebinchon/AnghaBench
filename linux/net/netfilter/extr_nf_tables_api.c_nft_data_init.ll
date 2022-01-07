; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_data_desc = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_DATA_MAX = common dso_local global i32 0, align 4
@nft_data_policy = common dso_local global i32 0, align 4
@NFTA_DATA_VALUE = common dso_local global i64 0, align 8
@NFTA_DATA_VERDICT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_data_init(%struct.nft_ctx* %0, %struct.nft_data* %1, i32 %2, %struct.nft_data_desc* %3, %struct.nlattr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_ctx*, align 8
  %8 = alloca %struct.nft_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_data_desc*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %7, align 8
  store %struct.nft_data* %1, %struct.nft_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nft_data_desc* %3, %struct.nft_data_desc** %10, align 8
  store %struct.nlattr* %4, %struct.nlattr** %11, align 8
  %16 = load i32, i32* @NFTA_DATA_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @NFTA_DATA_MAX, align 4
  %22 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %23 = load i32, i32* @nft_data_policy, align 4
  %24 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %21, %struct.nlattr* %22, i32 %23, i32* null)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %62

29:                                               ; preds = %5
  %30 = load i64, i64* @NFTA_DATA_VALUE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.nft_ctx*, %struct.nft_ctx** %7, align 8
  %36 = load %struct.nft_data*, %struct.nft_data** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.nft_data_desc*, %struct.nft_data_desc** %10, align 8
  %39 = load i64, i64* @NFTA_DATA_VALUE, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nft_value_init(%struct.nft_ctx* %35, %struct.nft_data* %36, i32 %37, %struct.nft_data_desc* %38, %struct.nlattr* %41)
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %62

43:                                               ; preds = %29
  %44 = load i64, i64* @NFTA_DATA_VERDICT, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.nft_ctx*, %struct.nft_ctx** %7, align 8
  %50 = icmp ne %struct.nft_ctx* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %7, align 8
  %53 = load %struct.nft_data*, %struct.nft_data** %8, align 8
  %54 = load %struct.nft_data_desc*, %struct.nft_data_desc** %10, align 8
  %55 = load i64, i64* @NFTA_DATA_VERDICT, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nft_verdict_init(%struct.nft_ctx* %52, %struct.nft_data* %53, %struct.nft_data_desc* %54, %struct.nlattr* %57)
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %62

59:                                               ; preds = %48, %43
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %59, %51, %34, %27
  %63 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nft_value_init(%struct.nft_ctx*, %struct.nft_data*, i32, %struct.nft_data_desc*, %struct.nlattr*) #2

declare dso_local i32 @nft_verdict_init(%struct.nft_ctx*, %struct.nft_data*, %struct.nft_data_desc*, %struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
