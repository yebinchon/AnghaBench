; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_compat_chain_validate_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_compat_chain_validate_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i64, %struct.nft_chain* }
%struct.nft_chain = type { i32 }
%struct.nft_base_chain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFT_CHAIN_T_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@NFPROTO_BRIDGE = common dso_local global i64 0, align 8
@NFT_CHAIN_T_NAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, i8*)* @nft_compat_chain_validate_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_compat_chain_validate_dependency(%struct.nft_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_chain*, align 8
  %8 = alloca %struct.nft_base_chain*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @NFT_CHAIN_T_DEFAULT, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %10, i32 0, i32 1
  %12 = load %struct.nft_chain*, %struct.nft_chain** %11, align 8
  store %struct.nft_chain* %12, %struct.nft_chain** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.nft_chain*, %struct.nft_chain** %7, align 8
  %17 = call i32 @nft_is_base_chain(%struct.nft_chain* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %47

20:                                               ; preds = %15
  %21 = load %struct.nft_chain*, %struct.nft_chain** %7, align 8
  %22 = call %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain* %21)
  store %struct.nft_base_chain* %22, %struct.nft_base_chain** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @NFT_CHAIN_T_NAT, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %36 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %20
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %42, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @nft_is_base_chain(%struct.nft_chain*) #1

declare dso_local %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
