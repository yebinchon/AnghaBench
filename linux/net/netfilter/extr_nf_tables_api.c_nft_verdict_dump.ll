; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_verdict_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_verdict_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_verdict = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_VERDICT_CODE = common dso_local global i32 0, align 4
@NFTA_VERDICT_CHAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_verdict_dump(%struct.sk_buff* %0, i32 %1, %struct.nft_verdict* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_verdict*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nft_verdict* %2, %struct.nft_verdict** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @NFTA_VERDICT_CODE, align 4
  %18 = load %struct.nft_verdict*, %struct.nft_verdict** %7, align 8
  %19 = getelementptr inbounds %struct.nft_verdict, %struct.nft_verdict* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @htonl(i32 %20)
  %22 = call i64 @nla_put_be32(%struct.sk_buff* %16, i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %45

25:                                               ; preds = %15
  %26 = load %struct.nft_verdict*, %struct.nft_verdict** %7, align 8
  %27 = getelementptr inbounds %struct.nft_verdict, %struct.nft_verdict* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %41 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @NFTA_VERDICT_CHAIN, align 4
  %32 = load %struct.nft_verdict*, %struct.nft_verdict** %7, align 8
  %33 = getelementptr inbounds %struct.nft_verdict, %struct.nft_verdict* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nla_put_string(%struct.sk_buff* %30, i32 %31, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %45

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %44 = call i32 @nla_nest_end(%struct.sk_buff* %42, %struct.nlattr* %43)
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %39, %24, %14
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
