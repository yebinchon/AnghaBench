; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_nfs4_lgopen_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_nfs4_lgopen_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layoutget = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.TYPE_4__ = type { %struct.pnfs_layout_hdr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_lgopen_release(%struct.nfs4_layoutget* %0) #0 {
  %2 = alloca %struct.nfs4_layoutget*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.nfs4_layoutget* %0, %struct.nfs4_layoutget** %2, align 8
  %5 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %2, align 8
  %6 = icmp ne %struct.nfs4_layoutget* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_layoutget, %struct.nfs4_layoutget* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %17, align 8
  store %struct.pnfs_layout_hdr* %18, %struct.pnfs_layout_hdr** %4, align 8
  %19 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %20 = call i32 @pnfs_clear_first_layoutget(%struct.pnfs_layout_hdr* %19)
  %21 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %22 = call i32 @nfs_layoutget_end(%struct.pnfs_layout_hdr* %21)
  br label %23

23:                                               ; preds = %14, %7
  %24 = load %struct.nfs4_layoutget*, %struct.nfs4_layoutget** %2, align 8
  %25 = call i32 @pnfs_layoutget_free(%struct.nfs4_layoutget* %24)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @pnfs_clear_first_layoutget(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @nfs_layoutget_end(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @pnfs_layoutget_free(%struct.nfs4_layoutget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
