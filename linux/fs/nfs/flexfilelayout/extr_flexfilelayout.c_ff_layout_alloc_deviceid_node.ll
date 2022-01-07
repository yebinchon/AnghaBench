; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_alloc_deviceid_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_alloc_deviceid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32 }
%struct.nfs_server = type { i32 }
%struct.pnfs_device = type { i32 }
%struct.nfs4_ff_layout_ds = type { %struct.nfs4_deviceid_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_deviceid_node* (%struct.nfs_server*, %struct.pnfs_device*, i32)* @ff_layout_alloc_deviceid_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_deviceid_node* @ff_layout_alloc_deviceid_node(%struct.nfs_server* %0, %struct.pnfs_device* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_deviceid_node*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.pnfs_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_ff_layout_ds*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.pnfs_device* %1, %struct.pnfs_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %10 = load %struct.pnfs_device*, %struct.pnfs_device** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.nfs4_ff_layout_ds* @nfs4_ff_alloc_deviceid_node(%struct.nfs_server* %9, %struct.pnfs_device* %10, i32 %11)
  store %struct.nfs4_ff_layout_ds* %12, %struct.nfs4_ff_layout_ds** %8, align 8
  %13 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %8, align 8
  %14 = icmp ne %struct.nfs4_ff_layout_ds* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.nfs4_deviceid_node* null, %struct.nfs4_deviceid_node** %4, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %8, align 8
  %18 = getelementptr inbounds %struct.nfs4_ff_layout_ds, %struct.nfs4_ff_layout_ds* %17, i32 0, i32 0
  store %struct.nfs4_deviceid_node* %18, %struct.nfs4_deviceid_node** %4, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %4, align 8
  ret %struct.nfs4_deviceid_node* %20
}

declare dso_local %struct.nfs4_ff_layout_ds* @nfs4_ff_alloc_deviceid_node(%struct.nfs_server*, %struct.pnfs_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
