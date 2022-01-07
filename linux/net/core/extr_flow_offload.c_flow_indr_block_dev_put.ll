; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_indr_block_dev_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_indr_block_dev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_indr_block_dev = type { i32, i64 }

@indr_setup_block_ht = common dso_local global i32 0, align 4
@flow_indr_setup_block_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_indr_block_dev*)* @flow_indr_block_dev_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_indr_block_dev_put(%struct.flow_indr_block_dev* %0) #0 {
  %2 = alloca %struct.flow_indr_block_dev*, align 8
  store %struct.flow_indr_block_dev* %0, %struct.flow_indr_block_dev** %2, align 8
  %3 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %2, align 8
  %4 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %2, align 8
  %11 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @flow_indr_setup_block_ht_params, align 4
  %13 = call i32 @rhashtable_remove_fast(i32* @indr_setup_block_ht, i32* %11, i32 %12)
  %14 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %2, align 8
  %15 = call i32 @kfree(%struct.flow_indr_block_dev* %14)
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.flow_indr_block_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
