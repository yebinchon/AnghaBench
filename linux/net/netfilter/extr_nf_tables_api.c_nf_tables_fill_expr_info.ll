; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_expr_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_expr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.sk_buff*, %struct.nft_expr*)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_EXPR_NAME = common dso_local global i32 0, align 4
@NFTA_EXPR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nf_tables_fill_expr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_expr_info(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @NFTA_EXPR_NAME, align 4
  %9 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %10 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nla_put_string(%struct.sk_buff* %7, i32 %8, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %21 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64 (%struct.sk_buff*, %struct.nft_expr*)*, i64 (%struct.sk_buff*, %struct.nft_expr*)** %23, align 8
  %25 = icmp ne i64 (%struct.sk_buff*, %struct.nft_expr*)* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NFTA_EXPR_DATA, align 4
  %29 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %27, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %6, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %31 = icmp eq %struct.nlattr* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %52

33:                                               ; preds = %26
  %34 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %35 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64 (%struct.sk_buff*, %struct.nft_expr*)*, i64 (%struct.sk_buff*, %struct.nft_expr*)** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %41 = call i64 %38(%struct.sk_buff* %39, %struct.nft_expr* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %52

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %47 = call i32 @nla_nest_end(%struct.sk_buff* %45, %struct.nlattr* %46)
  br label %48

48:                                               ; preds = %44, %19
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %43, %32, %18
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
