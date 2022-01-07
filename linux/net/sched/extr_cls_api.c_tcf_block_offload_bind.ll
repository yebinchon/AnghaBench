; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_offload_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_offload_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i32 }
%struct.Qdisc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_block_ext_info = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Bind to offloaded block failed as dev has offload disabled\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_BLOCK_BIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_block*, %struct.Qdisc*, %struct.tcf_block_ext_info*, %struct.netlink_ext_ack*)* @tcf_block_offload_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_block_offload_bind(%struct.tcf_block* %0, %struct.Qdisc* %1, %struct.tcf_block_ext_info* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_block*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.tcf_block_ext_info*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %6, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %7, align 8
  store %struct.tcf_block_ext_info* %2, %struct.tcf_block_ext_info** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %10, align 8
  %17 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %18 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %66

27:                                               ; preds = %4
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = call i32 @tc_can_offload(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %33 = call i64 @tcf_block_offload_in_use(%struct.tcf_block* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %37 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %84

40:                                               ; preds = %31, %27
  %41 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %42 = load %struct.net_device*, %struct.net_device** %10, align 8
  %43 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %44 = load i32, i32* @FLOW_BLOCK_BIND, align 4
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %46 = call i32 @tcf_block_offload_cmd(%struct.tcf_block* %41, %struct.net_device* %42, %struct.tcf_block_ext_info* %43, i32 %44, %struct.netlink_ext_ack* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %66

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %84

56:                                               ; preds = %52
  %57 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %58 = load %struct.net_device*, %struct.net_device** %10, align 8
  %59 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %60 = load i32, i32* @FLOW_BLOCK_BIND, align 4
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @tc_indr_block_call(%struct.tcf_block* %57, %struct.net_device* %58, %struct.tcf_block_ext_info* %59, i32 %60, %struct.netlink_ext_ack* %61)
  %63 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %64 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %63, i32 0, i32 0
  %65 = call i32 @up_write(i32* %64)
  store i32 0, i32* %5, align 4
  br label %89

66:                                               ; preds = %51, %26
  %67 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %68 = call i64 @tcf_block_offload_in_use(%struct.tcf_block* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %84

73:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  %74 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %75 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %79 = load %struct.net_device*, %struct.net_device** %10, align 8
  %80 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %81 = load i32, i32* @FLOW_BLOCK_BIND, align 4
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %83 = call i32 @tc_indr_block_call(%struct.tcf_block* %78, %struct.net_device* %79, %struct.tcf_block_ext_info* %80, i32 %81, %struct.netlink_ext_ack* %82)
  br label %84

84:                                               ; preds = %73, %70, %55, %35
  %85 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %86 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %85, i32 0, i32 0
  %87 = call i32 @up_write(i32* %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %56
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @tc_can_offload(%struct.net_device*) #1

declare dso_local i64 @tcf_block_offload_in_use(%struct.tcf_block*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @tcf_block_offload_cmd(%struct.tcf_block*, %struct.net_device*, %struct.tcf_block_ext_info*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tc_indr_block_call(%struct.tcf_block*, %struct.net_device*, %struct.tcf_block_ext_info*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
