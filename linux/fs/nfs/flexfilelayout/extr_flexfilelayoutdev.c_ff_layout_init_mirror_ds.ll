; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_init_mirror_ds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_init_mirror_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32 }
%struct.nfs4_ff_layout_mirror = type { i32*, i32 }
%struct.nfs4_deviceid_node = type { i32 }
%struct.nfs4_ff_layout_ds = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_hdr*, %struct.nfs4_ff_layout_mirror*)* @ff_layout_init_mirror_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_init_mirror_ds(%struct.pnfs_layout_hdr* %0, %struct.nfs4_ff_layout_mirror* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  %5 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %6 = alloca %struct.nfs4_deviceid_node*, align 8
  %7 = alloca %struct.nfs4_ff_layout_ds*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %4, align 8
  store %struct.nfs4_ff_layout_mirror* %1, %struct.nfs4_ff_layout_mirror** %5, align 8
  %8 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %9 = icmp eq %struct.nfs4_ff_layout_mirror* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %60

11:                                               ; preds = %2
  %12 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.nfs4_ff_layout_ds* @ERR_PTR(i32 %18)
  store %struct.nfs4_ff_layout_ds* %19, %struct.nfs4_ff_layout_ds** %7, align 8
  %20 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NFS_SERVER(i32 %22)
  %24 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %25 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %24, i32 0, i32 1
  %26 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.nfs4_deviceid_node* @nfs4_find_get_deviceid(i32 %23, i32* %25, i32 %28, i32 %29)
  store %struct.nfs4_deviceid_node* %30, %struct.nfs4_deviceid_node** %6, align 8
  %31 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %6, align 8
  %32 = icmp ne %struct.nfs4_deviceid_node* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %6, align 8
  %35 = call %struct.nfs4_ff_layout_ds* @FF_LAYOUT_MIRROR_DS(%struct.nfs4_deviceid_node* %34)
  store %struct.nfs4_ff_layout_ds* %35, %struct.nfs4_ff_layout_ds** %7, align 8
  br label %36

36:                                               ; preds = %33, %16
  %37 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %38 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %37, i32 0, i32 0
  %39 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %7, align 8
  %40 = call i64 @cmpxchg(i32** %38, i32* null, %struct.nfs4_ff_layout_ds* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.nfs4_ff_layout_ds*, %struct.nfs4_ff_layout_ds** %7, align 8
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.nfs4_ff_layout_ds* @ERR_PTR(i32 %45)
  %47 = icmp ne %struct.nfs4_ff_layout_ds* %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %6, align 8
  %50 = call i32 @nfs4_put_deviceid_node(%struct.nfs4_deviceid_node* %49)
  br label %51

51:                                               ; preds = %48, %42, %36
  br label %52

52:                                               ; preds = %51, %11
  %53 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %54 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @IS_ERR(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %60

59:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %58, %10
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.nfs4_ff_layout_ds* @ERR_PTR(i32) #1

declare dso_local %struct.nfs4_deviceid_node* @nfs4_find_get_deviceid(i32, i32*, i32, i32) #1

declare dso_local i32 @NFS_SERVER(i32) #1

declare dso_local %struct.nfs4_ff_layout_ds* @FF_LAYOUT_MIRROR_DS(%struct.nfs4_deviceid_node*) #1

declare dso_local i64 @cmpxchg(i32**, i32*, %struct.nfs4_ff_layout_ds*) #1

declare dso_local i32 @nfs4_put_deviceid_node(%struct.nfs4_deviceid_node*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
