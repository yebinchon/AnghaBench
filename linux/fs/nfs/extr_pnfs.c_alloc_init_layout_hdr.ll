; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_alloc_init_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_alloc_init_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32, %struct.inode*, i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }

@NFS_LAYOUT_INVALID_STID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_layout_hdr* (%struct.inode*, %struct.nfs_open_context*, i32)* @alloc_init_layout_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_layout_hdr* @alloc_init_layout_hdr(%struct.inode* %0, %struct.nfs_open_context* %1, i32 %2) #0 {
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.pnfs_layout_hdr* @pnfs_alloc_layout_hdr(%struct.inode* %9, i32 %10)
  store %struct.pnfs_layout_hdr* %11, %struct.pnfs_layout_hdr** %8, align 8
  %12 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %13 = icmp ne %struct.pnfs_layout_hdr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.pnfs_layout_hdr* null, %struct.pnfs_layout_hdr** %4, align 8
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %16, i32 0, i32 7
  %18 = call i32 @refcount_set(i32* %17, i32 1)
  %19 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %19, i32 0, i32 6
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %32, i32 0, i32 2
  store %struct.inode* %31, %struct.inode** %33, align 8
  %34 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_cred(i32 %36)
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %39 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @NFS_LAYOUT_INVALID_STID, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %43 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  store %struct.pnfs_layout_hdr* %46, %struct.pnfs_layout_hdr** %4, align 8
  br label %47

47:                                               ; preds = %15, %14
  %48 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  ret %struct.pnfs_layout_hdr* %48
}

declare dso_local %struct.pnfs_layout_hdr* @pnfs_alloc_layout_hdr(%struct.inode*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_cred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
