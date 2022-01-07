; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_do_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_do_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nft_quota = type { i64, i32, i32 }

@NFTA_QUOTA_BYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@S64_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@NFTA_QUOTA_CONSUMED = common dso_local global i64 0, align 8
@NFTA_QUOTA_FLAGS = common dso_local global i64 0, align 8
@NFT_QUOTA_F_INV = common dso_local global i64 0, align 8
@NFT_QUOTA_F_DEPLETED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nft_quota*)* @nft_quota_do_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_quota_do_init(%struct.nlattr** %0, %struct.nft_quota* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nft_quota*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nft_quota* %1, %struct.nft_quota** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %10 = load i64, i64* @NFTA_QUOTA_BYTES, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %19 = load i64, i64* @NFTA_QUOTA_BYTES, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @nla_get_be64(%struct.nlattr* %21)
  %23 = call i64 @be64_to_cpu(i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @S64_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EOVERFLOW, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %17
  %31 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %32 = load i64, i64* @NFTA_QUOTA_CONSUMED, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %38 = load i64, i64* @NFTA_QUOTA_CONSUMED, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_be64(%struct.nlattr* %40)
  %42 = call i64 @be64_to_cpu(i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %92

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %52 = load i64, i64* @NFTA_QUOTA_FLAGS, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %58 = load i64, i64* @NFTA_QUOTA_FLAGS, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i32 @nla_get_be32(%struct.nlattr* %60)
  %62 = call i64 @ntohl(i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @NFT_QUOTA_F_INV, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %92

71:                                               ; preds = %56
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @NFT_QUOTA_F_DEPLETED, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %92

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %50
  %81 = load %struct.nft_quota*, %struct.nft_quota** %5, align 8
  %82 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %81, i32 0, i32 2
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @atomic64_set(i32* %82, i64 %83)
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.nft_quota*, %struct.nft_quota** %5, align 8
  %87 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.nft_quota*, %struct.nft_quota** %5, align 8
  %89 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %88, i32 0, i32 1
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @atomic64_set(i32* %89, i64 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %76, %68, %46, %27, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
