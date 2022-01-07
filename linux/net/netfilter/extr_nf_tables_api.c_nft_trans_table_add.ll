; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_trans_table_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_trans_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nft_trans = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, i32)* @nft_trans_table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_trans_table_add(%struct.nft_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
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
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NFT_MSG_NEWTABLE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nft_activate_next(%struct.TYPE_4__* %22, i32 %25)
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.nft_trans*, %struct.nft_trans** %6, align 8
  %29 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %28, i32 0, i32 0
  %30 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %29, i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.nft_trans* @nft_trans_alloc(%struct.nft_ctx*, i32, i32) #1

declare dso_local i32 @nft_activate_next(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
