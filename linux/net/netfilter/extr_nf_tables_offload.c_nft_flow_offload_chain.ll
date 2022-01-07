; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_flow_offload_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_flow_offload_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain = type { i32 }
%struct.nft_base_chain = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_BLOCK_BIND = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_chain*, i64*, i32)* @nft_flow_offload_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_flow_offload_chain(%struct.nft_chain* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_chain*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nft_base_chain*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  store %struct.nft_chain* %0, %struct.nft_chain** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nft_chain*, %struct.nft_chain** %5, align 8
  %12 = call i32 @nft_is_base_chain(%struct.nft_chain* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load %struct.nft_chain*, %struct.nft_chain** %5, align 8
  %19 = call %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain* %18)
  store %struct.nft_base_chain* %19, %struct.nft_base_chain** %8, align 8
  %20 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %21 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %68

29:                                               ; preds = %17
  %30 = load i64*, i64** %6, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %37 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i64 [ %34, %32 ], [ %38, %35 ]
  store i64 %40, i64* %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FLOW_BLOCK_BIND, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @NF_DROP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %44, %39
  %52 = load %struct.net_device*, %struct.net_device** %9, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @nft_block_offload_cmd(%struct.nft_base_chain* %59, %struct.net_device* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %51
  %64 = load %struct.nft_base_chain*, %struct.nft_base_chain** %8, align 8
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @nft_indr_block_offload_cmd(%struct.nft_base_chain* %64, %struct.net_device* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %58, %48, %26, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @nft_is_base_chain(%struct.nft_chain*) #1

declare dso_local %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain*) #1

declare dso_local i32 @nft_block_offload_cmd(%struct.nft_base_chain*, %struct.net_device*, i32) #1

declare dso_local i32 @nft_indr_block_offload_cmd(%struct.nft_base_chain*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
