; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_offload_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_offload_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i32 }
%struct.Qdisc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcf_block_ext_info = type { i32 }

@FLOW_BLOCK_UNBIND = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_block*, %struct.Qdisc*, %struct.tcf_block_ext_info*)* @tcf_block_offload_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_block_offload_unbind(%struct.tcf_block* %0, %struct.Qdisc* %1, %struct.tcf_block_ext_info* %2) #0 {
  %4 = alloca %struct.tcf_block*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.tcf_block_ext_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  store %struct.tcf_block_ext_info* %2, %struct.tcf_block_ext_info** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %15 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %14, i32 0, i32 0
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %6, align 8
  %20 = load i32, i32* @FLOW_BLOCK_UNBIND, align 4
  %21 = call i32 @tc_indr_block_call(%struct.tcf_block* %17, %struct.net_device* %18, %struct.tcf_block_ext_info* %19, i32 %20, i32* null)
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %44

29:                                               ; preds = %3
  %30 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %6, align 8
  %33 = load i32, i32* @FLOW_BLOCK_UNBIND, align 4
  %34 = call i32 @tcf_block_offload_cmd(%struct.tcf_block* %30, %struct.net_device* %31, %struct.tcf_block_ext_info* %32, i32 %33, i32* null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %42 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %41, i32 0, i32 0
  %43 = call i32 @up_write(i32* %42)
  br label %55

44:                                               ; preds = %39, %28
  %45 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %46 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = icmp eq i32 %47, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %53 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %52, i32 0, i32 0
  %54 = call i32 @up_write(i32* %53)
  br label %55

55:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @tc_indr_block_call(%struct.tcf_block*, %struct.net_device*, %struct.tcf_block_ext_info*, i32, i32*) #1

declare dso_local i32 @tcf_block_offload_cmd(%struct.tcf_block*, %struct.net_device*, %struct.tcf_block_ext_info*, i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
