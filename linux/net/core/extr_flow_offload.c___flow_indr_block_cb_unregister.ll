; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c___flow_indr_block_cb_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c___flow_indr_block_cb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_indr_block_cb = type { i32, i32 }
%struct.flow_indr_block_dev = type { i32 }

@FLOW_BLOCK_UNBIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flow_indr_block_cb_unregister(%struct.net_device* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flow_indr_block_cb*, align 8
  %8 = alloca %struct.flow_indr_block_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.flow_indr_block_dev* @flow_indr_block_dev_lookup(%struct.net_device* %9)
  store %struct.flow_indr_block_dev* %10, %struct.flow_indr_block_dev** %8, align 8
  %11 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %8, align 8
  %12 = icmp ne %struct.flow_indr_block_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.flow_indr_block_cb* @flow_indr_block_cb_lookup(%struct.flow_indr_block_dev* %15, i32* %16, i8* %17)
  store %struct.flow_indr_block_cb* %18, %struct.flow_indr_block_cb** %7, align 8
  %19 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %7, align 8
  %20 = icmp ne %struct.flow_indr_block_cb* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %36

22:                                               ; preds = %14
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %7, align 8
  %25 = getelementptr inbounds %struct.flow_indr_block_cb, %struct.flow_indr_block_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %7, align 8
  %28 = getelementptr inbounds %struct.flow_indr_block_cb, %struct.flow_indr_block_cb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FLOW_BLOCK_UNBIND, align 4
  %31 = call i32 @flow_block_ing_cmd(%struct.net_device* %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %7, align 8
  %33 = call i32 @flow_indr_block_cb_del(%struct.flow_indr_block_cb* %32)
  %34 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %8, align 8
  %35 = call i32 @flow_indr_block_dev_put(%struct.flow_indr_block_dev* %34)
  br label %36

36:                                               ; preds = %22, %21, %13
  ret void
}

declare dso_local %struct.flow_indr_block_dev* @flow_indr_block_dev_lookup(%struct.net_device*) #1

declare dso_local %struct.flow_indr_block_cb* @flow_indr_block_cb_lookup(%struct.flow_indr_block_dev*, i32*, i8*) #1

declare dso_local i32 @flow_block_ing_cmd(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @flow_indr_block_cb_del(%struct.flow_indr_block_cb*) #1

declare dso_local i32 @flow_indr_block_dev_put(%struct.flow_indr_block_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
