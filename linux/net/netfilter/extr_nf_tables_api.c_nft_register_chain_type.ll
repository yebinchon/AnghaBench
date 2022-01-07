; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_register_chain_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_register_chain_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain_type = type { i64, i64 }

@NFPROTO_NUMPROTO = common dso_local global i64 0, align 8
@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@chain_type = common dso_local global %struct.nft_chain_type*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_register_chain_type(%struct.nft_chain_type* %0) #0 {
  %2 = alloca %struct.nft_chain_type*, align 8
  store %struct.nft_chain_type* %0, %struct.nft_chain_type** %2, align 8
  %3 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %4 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NFPROTO_NUMPROTO, align 8
  %7 = icmp uge i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %47

12:                                               ; preds = %1
  %13 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %14 = call i32 @nfnl_lock(i32 %13)
  %15 = load %struct.nft_chain_type***, %struct.nft_chain_type**** @chain_type, align 8
  %16 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %17 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.nft_chain_type**, %struct.nft_chain_type*** %15, i64 %18
  %20 = load %struct.nft_chain_type**, %struct.nft_chain_type*** %19, align 8
  %21 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %22 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.nft_chain_type*, %struct.nft_chain_type** %20, i64 %23
  %25 = load %struct.nft_chain_type*, %struct.nft_chain_type** %24, align 8
  %26 = icmp ne %struct.nft_chain_type* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %12
  %31 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %32 = call i32 @nfnl_unlock(i32 %31)
  br label %47

33:                                               ; preds = %12
  %34 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %35 = load %struct.nft_chain_type***, %struct.nft_chain_type**** @chain_type, align 8
  %36 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %37 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.nft_chain_type**, %struct.nft_chain_type*** %35, i64 %38
  %40 = load %struct.nft_chain_type**, %struct.nft_chain_type*** %39, align 8
  %41 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %42 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.nft_chain_type*, %struct.nft_chain_type** %40, i64 %43
  store %struct.nft_chain_type* %34, %struct.nft_chain_type** %44, align 8
  %45 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %46 = call i32 @nfnl_unlock(i32 %45)
  br label %47

47:                                               ; preds = %33, %30, %11
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nfnl_lock(i32) #1

declare dso_local i32 @nfnl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
