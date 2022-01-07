; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_connlimit.c_nft_connlimit_do_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_connlimit.c_nft_connlimit_do_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.nft_connlimit = type { i32, i32, i32 }

@NFTA_CONNLIMIT_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_CONNLIMIT_FLAGS = common dso_local global i64 0, align 8
@NFT_CONNLIMIT_F_INV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr**, %struct.nft_connlimit*)* @nft_connlimit_do_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_connlimit_do_init(%struct.nft_ctx* %0, %struct.nlattr** %1, %struct.nft_connlimit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nft_connlimit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nft_connlimit* %2, %struct.nft_connlimit** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %12 = load i64, i64* @NFTA_CONNLIMIT_COUNT, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %21 = load i64, i64* @NFTA_CONNLIMIT_COUNT, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @nla_get_be32(%struct.nlattr* %23)
  %25 = call i32 @ntohl(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %27 = load i64, i64* @NFTA_CONNLIMIT_FLAGS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %19
  %32 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %33 = load i64, i64* @NFTA_CONNLIMIT_FLAGS, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_get_be32(%struct.nlattr* %35)
  %37 = call i32 @ntohl(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @NFT_CONNLIMIT_F_INV, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @NFT_CONNLIMIT_F_INV, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.nft_connlimit*, %struct.nft_connlimit** %7, align 8
  %55 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %54, i32 0, i32 2
  %56 = call i32 @nf_conncount_list_init(i32* %55)
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.nft_connlimit*, %struct.nft_connlimit** %7, align 8
  %59 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.nft_connlimit*, %struct.nft_connlimit** %7, align 8
  %62 = getelementptr inbounds %struct.nft_connlimit, %struct.nft_connlimit* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nf_ct_netns_get(i32 %65, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %53, %43, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nf_conncount_list_init(i32*) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
