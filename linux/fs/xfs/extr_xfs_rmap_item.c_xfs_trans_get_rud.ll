; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_trans_get_rud.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_trans_get_rud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rud_log_item = type { i32, %struct.TYPE_3__, %struct.xfs_rui_log_item* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_rui_log_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@xfs_rud_zone = common dso_local global i32 0, align 4
@XFS_LI_RUD = common dso_local global i32 0, align 4
@xfs_rud_item_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_rud_log_item* (%struct.xfs_trans*, %struct.xfs_rui_log_item*)* @xfs_trans_get_rud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_rud_log_item* @xfs_trans_get_rud(%struct.xfs_trans* %0, %struct.xfs_rui_log_item* %1) #0 {
  %3 = alloca %struct.xfs_trans*, align 8
  %4 = alloca %struct.xfs_rui_log_item*, align 8
  %5 = alloca %struct.xfs_rud_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %3, align 8
  store %struct.xfs_rui_log_item* %1, %struct.xfs_rui_log_item** %4, align 8
  %6 = load i32, i32* @xfs_rud_zone, align 4
  %7 = call %struct.xfs_rud_log_item* @kmem_zone_zalloc(i32 %6, i32 0)
  store %struct.xfs_rud_log_item* %7, %struct.xfs_rud_log_item** %5, align 8
  %8 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xfs_rud_log_item*, %struct.xfs_rud_log_item** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_rud_log_item, %struct.xfs_rud_log_item* %11, i32 0, i32 0
  %13 = load i32, i32* @XFS_LI_RUD, align 4
  %14 = call i32 @xfs_log_item_init(i32 %10, i32* %12, i32 %13, i32* @xfs_rud_item_ops)
  %15 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %4, align 8
  %16 = load %struct.xfs_rud_log_item*, %struct.xfs_rud_log_item** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_rud_log_item, %struct.xfs_rud_log_item* %16, i32 0, i32 2
  store %struct.xfs_rui_log_item* %15, %struct.xfs_rui_log_item** %17, align 8
  %18 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfs_rud_log_item*, %struct.xfs_rud_log_item** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_rud_log_item, %struct.xfs_rud_log_item* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %26 = load %struct.xfs_rud_log_item*, %struct.xfs_rud_log_item** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_rud_log_item, %struct.xfs_rud_log_item* %26, i32 0, i32 0
  %28 = call i32 @xfs_trans_add_item(%struct.xfs_trans* %25, i32* %27)
  %29 = load %struct.xfs_rud_log_item*, %struct.xfs_rud_log_item** %5, align 8
  ret %struct.xfs_rud_log_item* %29
}

declare dso_local %struct.xfs_rud_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @xfs_trans_add_item(%struct.xfs_trans*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
