; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_offload_update_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_offload_update_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NFT_OFFLOAD_DEP_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_offload_update_dependency(%struct.nft_offload_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nft_offload_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %33 [
    i32 129, label %11
    i32 128, label %22
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 4
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @memcpy(i32* %19, i8* %20, i32 4)
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @memcpy(i32* %30, i8* %31, i32 4)
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %22, %11
  %35 = load i32, i32* @NFT_OFFLOAD_DEP_UNSPEC, align 4
  %36 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
