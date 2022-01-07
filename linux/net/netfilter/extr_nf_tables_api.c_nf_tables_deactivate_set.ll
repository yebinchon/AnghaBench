; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_deactivate_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_deactivate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_binding = type { i32 }

@NFT_TRANS_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_tables_deactivate_set(%struct.nft_ctx* %0, %struct.nft_set* %1, %struct.nft_set_binding* %2, i32 %3) #0 {
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca %struct.nft_set_binding*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store %struct.nft_set_binding* %2, %struct.nft_set_binding** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 130, label %15
    i32 128, label %15
  ]

10:                                               ; preds = %4
  %11 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %12 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  br label %29

15:                                               ; preds = %4, %4
  %16 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %17 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %4, %15
  %21 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %22 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %23 = load %struct.nft_set_binding*, %struct.nft_set_binding** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NFT_TRANS_COMMIT, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @nf_tables_unbind_set(%struct.nft_ctx* %21, %struct.nft_set* %22, %struct.nft_set_binding* %23, i32 %27)
  br label %29

29:                                               ; preds = %10, %20
  ret void
}

declare dso_local i32 @nf_tables_unbind_set(%struct.nft_ctx*, %struct.nft_set*, %struct.nft_set_binding*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
