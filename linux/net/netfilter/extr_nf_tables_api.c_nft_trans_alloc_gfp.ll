; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_trans_alloc_gfp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_trans_alloc_gfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_trans = type { i32, %struct.nft_ctx }
%struct.nft_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_trans* (%struct.nft_ctx*, i32, i64, i32)* @nft_trans_alloc_gfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_trans* @nft_trans_alloc_gfp(%struct.nft_ctx* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nft_trans*, align 8
  %6 = alloca %struct.nft_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_trans*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = add i64 8, %11
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.nft_trans* @kzalloc(i64 %12, i32 %13)
  store %struct.nft_trans* %14, %struct.nft_trans** %10, align 8
  %15 = load %struct.nft_trans*, %struct.nft_trans** %10, align 8
  %16 = icmp eq %struct.nft_trans* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.nft_trans* null, %struct.nft_trans** %5, align 8
  br label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.nft_trans*, %struct.nft_trans** %10, align 8
  %21 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nft_trans*, %struct.nft_trans** %10, align 8
  %23 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %22, i32 0, i32 1
  %24 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %25 = bitcast %struct.nft_ctx* %23 to i8*
  %26 = bitcast %struct.nft_ctx* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.nft_trans*, %struct.nft_trans** %10, align 8
  store %struct.nft_trans* %27, %struct.nft_trans** %5, align 8
  br label %28

28:                                               ; preds = %18, %17
  %29 = load %struct.nft_trans*, %struct.nft_trans** %5, align 8
  ret %struct.nft_trans* %29
}

declare dso_local %struct.nft_trans* @kzalloc(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
