; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_register_obj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_register_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object_type = type { i64, i32 }

@NFT_OBJECT_UNSPEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@nf_tables_objects = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_register_obj(%struct.nft_object_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nft_object_type*, align 8
  store %struct.nft_object_type* %0, %struct.nft_object_type** %3, align 8
  %4 = load %struct.nft_object_type*, %struct.nft_object_type** %3, align 8
  %5 = getelementptr inbounds %struct.nft_object_type, %struct.nft_object_type* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NFT_OBJECT_UNSPEC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %14 = call i32 @nfnl_lock(i32 %13)
  %15 = load %struct.nft_object_type*, %struct.nft_object_type** %3, align 8
  %16 = getelementptr inbounds %struct.nft_object_type, %struct.nft_object_type* %15, i32 0, i32 1
  %17 = call i32 @list_add_rcu(i32* %16, i32* @nf_tables_objects)
  %18 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %19 = call i32 @nfnl_unlock(i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @nfnl_lock(i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @nfnl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
