; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_unregister_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_unregister_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_table = type { i32 }
%struct.nft_chain = type { i32 }
%struct.nft_base_chain = type { %struct.TYPE_2__*, %struct.nf_hook_ops }
%struct.TYPE_2__ = type { void (%struct.net*, %struct.nf_hook_ops*)* }
%struct.nf_hook_ops = type { i32 }

@NFT_TABLE_F_DORMANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nft_table*, %struct.nft_chain*)* @nf_tables_unregister_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_unregister_hook(%struct.net* %0, %struct.nft_table* %1, %struct.nft_chain* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_table*, align 8
  %6 = alloca %struct.nft_chain*, align 8
  %7 = alloca %struct.nft_base_chain*, align 8
  %8 = alloca %struct.nf_hook_ops*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_table* %1, %struct.nft_table** %5, align 8
  store %struct.nft_chain* %2, %struct.nft_chain** %6, align 8
  %9 = load %struct.nft_table*, %struct.nft_table** %5, align 8
  %10 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NFT_TABLE_F_DORMANT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.nft_chain*, %struct.nft_chain** %6, align 8
  %17 = call i32 @nft_is_base_chain(%struct.nft_chain* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %3
  br label %43

20:                                               ; preds = %15
  %21 = load %struct.nft_chain*, %struct.nft_chain** %6, align 8
  %22 = call %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain* %21)
  store %struct.nft_base_chain* %22, %struct.nft_base_chain** %7, align 8
  %23 = load %struct.nft_base_chain*, %struct.nft_base_chain** %7, align 8
  %24 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %23, i32 0, i32 1
  store %struct.nf_hook_ops* %24, %struct.nf_hook_ops** %8, align 8
  %25 = load %struct.nft_base_chain*, %struct.nft_base_chain** %7, align 8
  %26 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load void (%struct.net*, %struct.nf_hook_ops*)*, void (%struct.net*, %struct.nf_hook_ops*)** %28, align 8
  %30 = icmp ne void (%struct.net*, %struct.nf_hook_ops*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load %struct.nft_base_chain*, %struct.nft_base_chain** %7, align 8
  %33 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load void (%struct.net*, %struct.nf_hook_ops*)*, void (%struct.net*, %struct.nf_hook_ops*)** %35, align 8
  %37 = load %struct.net*, %struct.net** %4, align 8
  %38 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %8, align 8
  call void %36(%struct.net* %37, %struct.nf_hook_ops* %38)
  br label %43

39:                                               ; preds = %20
  %40 = load %struct.net*, %struct.net** %4, align 8
  %41 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %8, align 8
  %42 = call i32 @nf_unregister_net_hook(%struct.net* %40, %struct.nf_hook_ops* %41)
  br label %43

43:                                               ; preds = %39, %31, %19
  ret void
}

declare dso_local i32 @nft_is_base_chain(%struct.nft_chain*) #1

declare dso_local %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain*) #1

declare dso_local i32 @nf_unregister_net_hook(%struct.net*, %struct.nf_hook_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
