; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c__pnfs_grab_empty_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c__pnfs_grab_empty_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS_LAYOUT_INVALID_STID = common dso_local global i32 0, align 4
@NFS_LAYOUT_RETURN = common dso_local global i32 0, align 4
@NFS_LAYOUT_FIRST_LAYOUTGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_layout_hdr* (%struct.inode*, %struct.nfs_open_context*)* @_pnfs_grab_empty_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_layout_hdr* @_pnfs_grab_empty_layout(%struct.inode* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca %struct.pnfs_layout_hdr*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pnfs_layout_hdr* @pnfs_find_alloc_layout(%struct.inode* %10, %struct.nfs_open_context* %11, i32 %12)
  store %struct.pnfs_layout_hdr* %13, %struct.pnfs_layout_hdr** %6, align 8
  %14 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %15 = icmp ne %struct.pnfs_layout_hdr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %54

17:                                               ; preds = %2
  %18 = load i32, i32* @NFS_LAYOUT_INVALID_STID, align 4
  %19 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %54

24:                                               ; preds = %17
  %25 = load i32, i32* @NFS_LAYOUT_RETURN, align 4
  %26 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %33 = call i64 @pnfs_layoutgets_blocked(%struct.pnfs_layout_hdr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %54

36:                                               ; preds = %31
  %37 = load i32, i32* @NFS_LAYOUT_FIRST_LAYOUTGET, align 4
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %38, i32 0, i32 0
  %40 = call i64 @test_and_set_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %45 = call i32 @nfs_layoutget_begin(%struct.pnfs_layout_hdr* %44)
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i32 @NFS_SERVER(%struct.inode* %50)
  %52 = call i32 @_add_to_server_list(%struct.pnfs_layout_hdr* %49, i32 %51)
  %53 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  store %struct.pnfs_layout_hdr* %53, %struct.pnfs_layout_hdr** %3, align 8
  br label %60

54:                                               ; preds = %42, %35, %30, %23, %16
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %59 = call i32 @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr* %58)
  store %struct.pnfs_layout_hdr* null, %struct.pnfs_layout_hdr** %3, align 8
  br label %60

60:                                               ; preds = %54, %43
  %61 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  ret %struct.pnfs_layout_hdr* %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pnfs_layout_hdr* @pnfs_find_alloc_layout(%struct.inode*, %struct.nfs_open_context*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @pnfs_layoutgets_blocked(%struct.pnfs_layout_hdr*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nfs_layoutget_begin(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_add_to_server_list(%struct.pnfs_layout_hdr*, i32) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
