; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_trans_chain_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_trans_chain_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_trans = type { i32 }
%struct.nft_ctx = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWCHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_trans* (%struct.nft_ctx*, i32)* @nft_trans_chain_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_trans* @nft_trans_chain_add(%struct.nft_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.nft_trans*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_trans*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.nft_trans* @nft_trans_alloc(%struct.nft_ctx* %7, i32 %8, i32 4)
  store %struct.nft_trans* %9, %struct.nft_trans** %6, align 8
  %10 = load %struct.nft_trans*, %struct.nft_trans** %6, align 8
  %11 = icmp eq %struct.nft_trans* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nft_trans* @ERR_PTR(i32 %14)
  store %struct.nft_trans* %15, %struct.nft_trans** %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NFT_MSG_NEWCHAIN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @nft_activate_next(%struct.TYPE_4__* %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %16
  %29 = load %struct.nft_trans*, %struct.nft_trans** %6, align 8
  %30 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %29, i32 0, i32 0
  %31 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @list_add_tail(i32* %30, i32* %35)
  %37 = load %struct.nft_trans*, %struct.nft_trans** %6, align 8
  store %struct.nft_trans* %37, %struct.nft_trans** %3, align 8
  br label %38

38:                                               ; preds = %28, %12
  %39 = load %struct.nft_trans*, %struct.nft_trans** %3, align 8
  ret %struct.nft_trans* %39
}

declare dso_local %struct.nft_trans* @nft_trans_alloc(%struct.nft_ctx*, i32, i32) #1

declare dso_local %struct.nft_trans* @ERR_PTR(i32) #1

declare dso_local i32 @nft_activate_next(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
