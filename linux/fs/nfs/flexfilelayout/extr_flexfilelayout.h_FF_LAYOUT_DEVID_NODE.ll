; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.h_FF_LAYOUT_DEVID_NODE.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.h_FF_LAYOUT_DEVID_NODE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.nfs4_ff_layout_ds* }
%struct.nfs4_ff_layout_ds = type { %struct.nfs4_deviceid_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_deviceid_node* (%struct.pnfs_layout_segment*, i32)* @FF_LAYOUT_DEVID_NODE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_deviceid_node* @FF_LAYOUT_DEVID_NODE(%struct.pnfs_layout_segment* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_deviceid_node*, align 8
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %7 = alloca %struct.nfs4_ff_layout_ds*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(%struct.pnfs_layout_segment* %8, i32 %9)
  store %struct.nfs4_ff_layout_mirror* %10, %struct.nfs4_ff_layout_mirror** %6, align 8
  %11 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %12 = icmp ne %struct.nfs4_ff_layout_mirror* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %14, i32 0, i32 0
  %16 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %15, align 8
  store %struct.nfs4_ff_layout_ds* %16, %struct.nfs4_ff_layout_ds** %7, align 8
  %17 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %7, align 8
  %18 = call i32 @IS_ERR_OR_NULL(%struct.nfs4_ff_layout_ds* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %7, align 8
  %22 = getelementptr inbounds %struct.nfs4_ff_layout_ds, %struct.nfs4_ff_layout_ds* %21, i32 0, i32 0
  store %struct.nfs4_deviceid_node* %22, %struct.nfs4_deviceid_node** %3, align 8
  br label %25

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %2
  store %struct.nfs4_deviceid_node* null, %struct.nfs4_deviceid_node** %3, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  ret %struct.nfs4_deviceid_node* %26
}

declare dso_local %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(%struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.nfs4_ff_layout_ds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
