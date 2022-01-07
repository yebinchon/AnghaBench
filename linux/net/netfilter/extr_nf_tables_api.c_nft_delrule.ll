; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_delrule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_delrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_rule = type { i32 }
%struct.nft_trans = type { i32 }

@NFT_MSG_DELRULE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_TRANS_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_rule*)* @nft_delrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_delrule(%struct.nft_ctx* %0, %struct.nft_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_rule*, align 8
  %6 = alloca %struct.nft_trans*, align 8
  %7 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %5, align 8
  %8 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %9 = load i32, i32* @NFT_MSG_DELRULE, align 4
  %10 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %11 = call %struct.nft_trans* @nft_trans_rule_add(%struct.nft_ctx* %8, i32 %9, %struct.nft_rule* %10)
  store %struct.nft_trans* %11, %struct.nft_trans** %6, align 8
  %12 = load %struct.nft_trans*, %struct.nft_trans** %6, align 8
  %13 = icmp eq %struct.nft_trans* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %19 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %20 = call i32 @nf_tables_delrule_deactivate(%struct.nft_ctx* %18, %struct.nft_rule* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.nft_trans*, %struct.nft_trans** %6, align 8
  %25 = call i32 @nft_trans_destroy(%struct.nft_trans* %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %29 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %30 = load i32, i32* @NFT_TRANS_PREPARE, align 4
  %31 = call i32 @nft_rule_expr_deactivate(%struct.nft_ctx* %28, %struct.nft_rule* %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %23, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.nft_trans* @nft_trans_rule_add(%struct.nft_ctx*, i32, %struct.nft_rule*) #1

declare dso_local i32 @nf_tables_delrule_deactivate(%struct.nft_ctx*, %struct.nft_rule*) #1

declare dso_local i32 @nft_trans_destroy(%struct.nft_trans*) #1

declare dso_local i32 @nft_rule_expr_deactivate(%struct.nft_ctx*, %struct.nft_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
