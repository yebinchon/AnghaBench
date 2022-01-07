; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_gc_batch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_gc_batch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set_gc_batch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nft_set* }
%struct.nft_set = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nft_set_gc_batch* @nft_set_gc_batch_alloc(%struct.nft_set* %0, i32 %1) #0 {
  %3 = alloca %struct.nft_set_gc_batch*, align 8
  %4 = alloca %struct.nft_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_set_gc_batch*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.nft_set_gc_batch* @kzalloc(i32 8, i32 %7)
  store %struct.nft_set_gc_batch* %8, %struct.nft_set_gc_batch** %6, align 8
  %9 = load %struct.nft_set_gc_batch*, %struct.nft_set_gc_batch** %6, align 8
  %10 = icmp eq %struct.nft_set_gc_batch* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.nft_set_gc_batch*, %struct.nft_set_gc_batch** %6, align 8
  store %struct.nft_set_gc_batch* %12, %struct.nft_set_gc_batch** %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %15 = load %struct.nft_set_gc_batch*, %struct.nft_set_gc_batch** %6, align 8
  %16 = getelementptr inbounds %struct.nft_set_gc_batch, %struct.nft_set_gc_batch* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.nft_set* %14, %struct.nft_set** %17, align 8
  %18 = load %struct.nft_set_gc_batch*, %struct.nft_set_gc_batch** %6, align 8
  store %struct.nft_set_gc_batch* %18, %struct.nft_set_gc_batch** %3, align 8
  br label %19

19:                                               ; preds = %13, %11
  %20 = load %struct.nft_set_gc_batch*, %struct.nft_set_gc_batch** %3, align 8
  ret %struct.nft_set_gc_batch* %20
}

declare dso_local %struct.nft_set_gc_batch* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
