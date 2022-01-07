; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_value_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_value_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_data_desc = type { i32, i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_data*, i32, %struct.nft_data_desc*, %struct.nlattr*)* @nft_value_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_value_init(%struct.nft_ctx* %0, %struct.nft_data* %1, i32 %2, %struct.nft_data_desc* %3, %struct.nlattr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_ctx*, align 8
  %8 = alloca %struct.nft_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_data_desc*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %7, align 8
  store %struct.nft_data* %1, %struct.nft_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nft_data_desc* %3, %struct.nft_data_desc** %10, align 8
  store %struct.nlattr* %4, %struct.nlattr** %11, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %40

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EOVERFLOW, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.nft_data*, %struct.nft_data** %8, align 8
  %29 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @nla_memcpy(i32 %30, %struct.nlattr* %31, i32 %32)
  %34 = load i32, i32* @NFT_DATA_VALUE, align 4
  %35 = load %struct.nft_data_desc*, %struct.nft_data_desc** %10, align 8
  %36 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.nft_data_desc*, %struct.nft_data_desc** %10, align 8
  %39 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %27, %24, %17
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
