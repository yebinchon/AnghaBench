; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_expr_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_expr_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_expr_dump(%struct.sk_buff* %0, i32 %1, %struct.nft_expr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_expr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nft_expr* %2, %struct.nft_expr** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %18 = call i64 @nf_tables_fill_expr_info(%struct.sk_buff* %16, %struct.nft_expr* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %24 = call i32 @nla_nest_end(%struct.sk_buff* %22, %struct.nlattr* %23)
  store i32 0, i32* %4, align 4
  br label %26

25:                                               ; preds = %20, %14
  store i32 -1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nf_tables_fill_expr_info(%struct.sk_buff*, %struct.nft_expr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
