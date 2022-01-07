; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_data_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_data_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_data = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_DATA_VERDICT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_data_dump(%struct.sk_buff* %0, i32 %1, %struct.nft_data* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nft_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nft_data* %2, %struct.nft_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %12, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %18 = icmp eq %struct.nlattr* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %42

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %33 [
    i32 129, label %22
    i32 128, label %27
  ]

22:                                               ; preds = %20
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.nft_data*, %struct.nft_data** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @nft_value_dump(%struct.sk_buff* %23, %struct.nft_data* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  br label %37

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* @NFTA_DATA_VERDICT, align 4
  %30 = load %struct.nft_data*, %struct.nft_data** %9, align 8
  %31 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %30, i32 0, i32 0
  %32 = call i32 @nft_verdict_dump(%struct.sk_buff* %28, i32 %29, i32* %31)
  store i32 %32, i32* %13, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  %36 = call i32 @WARN_ON(i32 1)
  br label %37

37:                                               ; preds = %33, %27, %22
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %40 = call i32 @nla_nest_end(%struct.sk_buff* %38, %struct.nlattr* %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nft_value_dump(%struct.sk_buff*, %struct.nft_data*, i32) #1

declare dso_local i32 @nft_verdict_dump(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
