; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_expect_obj_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_expect_obj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.nft_object = type { i32 }
%struct.nft_ct_expect_obj = type { i8*, i32, i32, i8*, i32 }

@NFTA_CT_EXPECT_L4PROTO = common dso_local global i64 0, align 8
@NFTA_CT_EXPECT_DPORT = common dso_local global i64 0, align 8
@NFTA_CT_EXPECT_TIMEOUT = common dso_local global i64 0, align 8
@NFTA_CT_EXPECT_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_CT_EXPECT_L3PROTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr**, %struct.nft_object*)* @nft_ct_expect_obj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ct_expect_obj_init(%struct.nft_ctx* %0, %struct.nlattr** %1, %struct.nft_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nft_object*, align 8
  %8 = alloca %struct.nft_ct_expect_obj*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nft_object* %2, %struct.nft_object** %7, align 8
  %9 = load %struct.nft_object*, %struct.nft_object** %7, align 8
  %10 = call %struct.nft_ct_expect_obj* @nft_obj_data(%struct.nft_object* %9)
  store %struct.nft_ct_expect_obj* %10, %struct.nft_ct_expect_obj** %8, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %12 = load i64, i64* @NFTA_CT_EXPECT_L4PROTO, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %18 = load i64, i64* @NFTA_CT_EXPECT_DPORT, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %24 = load i64, i64* @NFTA_CT_EXPECT_TIMEOUT, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @NFTA_CT_EXPECT_SIZE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28, %22, %16, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %93

37:                                               ; preds = %28
  %38 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %42 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %44 = load i64, i64* @NFTA_CT_EXPECT_L3PROTO, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %37
  %49 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %50 = load i64, i64* @NFTA_CT_EXPECT_L3PROTO, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be16(%struct.nlattr* %52)
  %54 = call i32 @ntohs(i32 %53)
  %55 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %56 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %48, %37
  %58 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %59 = load i64, i64* @NFTA_CT_EXPECT_L4PROTO, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i8* @nla_get_u8(%struct.nlattr* %61)
  %63 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %64 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %66 = load i64, i64* @NFTA_CT_EXPECT_DPORT, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_get_be16(%struct.nlattr* %68)
  %70 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %71 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %73 = load i64, i64* @NFTA_CT_EXPECT_TIMEOUT, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_u32(%struct.nlattr* %75)
  %77 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %78 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %80 = load i64, i64* @NFTA_CT_EXPECT_SIZE, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = call i8* @nla_get_u8(%struct.nlattr* %82)
  %84 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %8, align 8
  %85 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nf_ct_netns_get(i32 %88, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %57, %34
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.nft_ct_expect_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
