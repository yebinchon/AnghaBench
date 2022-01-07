; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_indr_block_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_indr_block_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_indr_block_dev = type { i32, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@indr_setup_block_ht = common dso_local global i32 0, align 4
@flow_indr_setup_block_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flow_indr_block_dev* (%struct.net_device*)* @flow_indr_block_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flow_indr_block_dev* @flow_indr_block_dev_get(%struct.net_device* %0) #0 {
  %2 = alloca %struct.flow_indr_block_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.flow_indr_block_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.flow_indr_block_dev* @flow_indr_block_dev_lookup(%struct.net_device* %5)
  store %struct.flow_indr_block_dev* %6, %struct.flow_indr_block_dev** %4, align 8
  %7 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %8 = icmp ne %struct.flow_indr_block_dev* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.flow_indr_block_dev* @kzalloc(i32 24, i32 %11)
  store %struct.flow_indr_block_dev* %12, %struct.flow_indr_block_dev** %4, align 8
  %13 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %14 = icmp ne %struct.flow_indr_block_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.flow_indr_block_dev* null, %struct.flow_indr_block_dev** %2, align 8
  br label %38

16:                                               ; preds = %10
  %17 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %18 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %17, i32 0, i32 3
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %22 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %21, i32 0, i32 2
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %24 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %23, i32 0, i32 1
  %25 = load i32, i32* @flow_indr_setup_block_ht_params, align 4
  %26 = call i64 @rhashtable_insert_fast(i32* @indr_setup_block_ht, i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %30 = call i32 @kfree(%struct.flow_indr_block_dev* %29)
  store %struct.flow_indr_block_dev* null, %struct.flow_indr_block_dev** %2, align 8
  br label %38

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  %34 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %4, align 8
  store %struct.flow_indr_block_dev* %37, %struct.flow_indr_block_dev** %2, align 8
  br label %38

38:                                               ; preds = %32, %28, %15
  %39 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %2, align 8
  ret %struct.flow_indr_block_dev* %39
}

declare dso_local %struct.flow_indr_block_dev* @flow_indr_block_dev_lookup(%struct.net_device*) #1

declare dso_local %struct.flow_indr_block_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.flow_indr_block_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
