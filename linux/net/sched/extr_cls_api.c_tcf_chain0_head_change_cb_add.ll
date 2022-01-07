; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain0_head_change_cb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain0_head_change_cb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tcf_chain* }
%struct.tcf_chain = type { i32, i32 }
%struct.tcf_block_ext_info = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tcf_filter_chain_list_item = type { i32, i32, i32 }
%struct.tcf_proto = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Memory allocation for head change callback item failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_block*, %struct.tcf_block_ext_info*, %struct.netlink_ext_ack*)* @tcf_chain0_head_change_cb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_chain0_head_change_cb_add(%struct.tcf_block* %0, %struct.tcf_block_ext_info* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_block*, align 8
  %6 = alloca %struct.tcf_block_ext_info*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.tcf_filter_chain_list_item*, align 8
  %9 = alloca %struct.tcf_chain*, align 8
  %10 = alloca %struct.tcf_proto*, align 8
  store %struct.tcf_block* %0, %struct.tcf_block** %5, align 8
  store %struct.tcf_block_ext_info* %1, %struct.tcf_block_ext_info** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tcf_filter_chain_list_item* @kmalloc(i32 12, i32 %11)
  store %struct.tcf_filter_chain_list_item* %12, %struct.tcf_filter_chain_list_item** %8, align 8
  %13 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %8, align 8
  %14 = icmp ne %struct.tcf_filter_chain_list_item* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %6, align 8
  %22 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %8, align 8
  %25 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %6, align 8
  %27 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %8, align 8
  %30 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %32 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %35 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.tcf_chain*, %struct.tcf_chain** %36, align 8
  store %struct.tcf_chain* %37, %struct.tcf_chain** %9, align 8
  %38 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %39 = icmp ne %struct.tcf_chain* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %42 = call i32 @tcf_chain_hold(%struct.tcf_chain* %41)
  br label %50

43:                                               ; preds = %20
  %44 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %8, align 8
  %45 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %44, i32 0, i32 0
  %46 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %47 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @list_add(i32* %45, i32* %48)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %52 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %55 = icmp ne %struct.tcf_chain* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %58 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %61 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %64 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %62, %struct.tcf_chain* %63)
  store %struct.tcf_proto* %64, %struct.tcf_proto** %10, align 8
  %65 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %66 = icmp ne %struct.tcf_proto* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %8, align 8
  %69 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %70 = call i32 @tcf_chain_head_change_item(%struct.tcf_filter_chain_list_item* %68, %struct.tcf_proto* %69)
  br label %71

71:                                               ; preds = %67, %56
  %72 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %73 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %8, align 8
  %76 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %75, i32 0, i32 0
  %77 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %78 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @list_add(i32* %76, i32* %79)
  %81 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %82 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %85 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %88 = call i32 @tcf_chain_put(%struct.tcf_chain* %87)
  br label %89

89:                                               ; preds = %71, %50
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %15
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.tcf_filter_chain_list_item* @kmalloc(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcf_chain_hold(%struct.tcf_chain*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(i32, %struct.tcf_chain*) #1

declare dso_local i32 @tcf_chain_head_change_item(%struct.tcf_filter_chain_list_item*, %struct.tcf_proto*) #1

declare dso_local i32 @tcf_chain_put(%struct.tcf_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
