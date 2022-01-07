; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_immediate_expr = type { i32, i32 }

@NFT_TRANS_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_expr*, i32)* @nft_immediate_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_immediate_deactivate(%struct.nft_ctx* %0, %struct.nft_expr* %1, i32 %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_immediate_expr*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = call %struct.nft_immediate_expr* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_immediate_expr* %9, %struct.nft_immediate_expr** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NFT_TRANS_COMMIT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %21

14:                                               ; preds = %3
  %15 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %7, align 8
  %16 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %15, i32 0, i32 1
  %17 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %7, align 8
  %18 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nft_dreg_to_type(i32 %19)
  call void @nft_data_release(i32* %16, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.nft_immediate_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local void @nft_data_release(i32*, i32) #1

declare dso_local i32 @nft_dreg_to_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
