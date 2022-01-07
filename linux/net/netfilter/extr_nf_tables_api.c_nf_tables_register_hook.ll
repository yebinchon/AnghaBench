; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_register_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_register_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_table = type { i32 }
%struct.nft_chain = type { i32 }
%struct.nft_base_chain = type { %struct.TYPE_2__*, %struct.nf_hook_ops }
%struct.TYPE_2__ = type { i32 (%struct.net*, %struct.nf_hook_ops*)* }
%struct.nf_hook_ops = type { i32 }

@NFT_TABLE_F_DORMANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nft_table*, %struct.nft_chain*)* @nf_tables_register_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_register_hook(%struct.net* %0, %struct.nft_table* %1, %struct.nft_chain* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nft_table*, align 8
  %7 = alloca %struct.nft_chain*, align 8
  %8 = alloca %struct.nft_base_chain*, align 8
  %9 = alloca %struct.nf_hook_ops*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nft_table* %1, %struct.nft_table** %6, align 8
  store %struct.nft_chain* %2, %struct.nft_chain** %7, align 8
  %10 = load %struct.nft_table*, %struct.nft_table** %6, align 8
  %11 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NFT_TABLE_F_DORMANT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.nft_chain*, %struct.nft_chain** %7, align 8
  %18 = call i32 @nft_is_base_chain(%struct.nft_chain* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %45

21:                                               ; preds = %16
  %22 = load %struct.nft_chain*, %struct.nft_chain** %7, align 8
  %23 = call %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain* %22)
  store %struct.nft_base_chain* %23, %struct.nft_base_chain** %8, align 8
  %24 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %25 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %24, i32 0, i32 1
  store %struct.nf_hook_ops* %25, %struct.nf_hook_ops** %9, align 8
  %26 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %27 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.net*, %struct.nf_hook_ops*)*, i32 (%struct.net*, %struct.nf_hook_ops*)** %29, align 8
  %31 = icmp ne i32 (%struct.net*, %struct.nf_hook_ops*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %34 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.net*, %struct.nf_hook_ops*)*, i32 (%struct.net*, %struct.nf_hook_ops*)** %36, align 8
  %38 = load %struct.net*, %struct.net** %5, align 8
  %39 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %9, align 8
  %40 = call i32 %37(%struct.net* %38, %struct.nf_hook_ops* %39)
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %21
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %9, align 8
  %44 = call i32 @nf_register_net_hook(%struct.net* %42, %struct.nf_hook_ops* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %32, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @nft_is_base_chain(%struct.nft_chain*) #1

declare dso_local %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain*) #1

declare dso_local i32 @nf_register_net_hook(%struct.net*, %struct.nf_hook_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
