; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_delobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_delobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nft_object = type { i32 }

@NFT_MSG_DELOBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_object*)* @nft_delobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_delobj(%struct.nft_ctx* %0, %struct.nft_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_object*, align 8
  %6 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_object* %1, %struct.nft_object** %5, align 8
  %7 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %8 = load i32, i32* @NFT_MSG_DELOBJ, align 4
  %9 = load %struct.nft_object*, %struct.nft_object** %5, align 8
  %10 = call i32 @nft_trans_obj_add(%struct.nft_ctx* %7, i32 %8, %struct.nft_object* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nft_object*, %struct.nft_object** %5, align 8
  %20 = call i32 @nft_deactivate_next(i32 %18, %struct.nft_object* %19)
  %21 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @nft_trans_obj_add(%struct.nft_ctx*, i32, %struct.nft_object*) #1

declare dso_local i32 @nft_deactivate_next(i32, %struct.nft_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
