; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_put_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_put_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"NFS: BUG unfreed layout segments.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr* %0) #0 {
  %2 = alloca %struct.pnfs_layout_hdr*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %2, align 8
  %4 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %5 = icmp ne %struct.pnfs_layout_hdr* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %9 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %8, i32 0, i32 2
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %3, align 8
  %11 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %12 = call i32 @pnfs_layoutreturn_before_put_layout_hdr(%struct.pnfs_layout_hdr* %11)
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %14 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %13, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = call i64 @refcount_dec_and_lock(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %7
  %20 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %21 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %28 = call i32 @pnfs_detach_layout_hdr(%struct.pnfs_layout_hdr* %27)
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %2, align 8
  %33 = call i32 @pnfs_free_layout_hdr(%struct.pnfs_layout_hdr* %32)
  br label %34

34:                                               ; preds = %6, %26, %7
  ret void
}

declare dso_local i32 @pnfs_layoutreturn_before_put_layout_hdr(%struct.pnfs_layout_hdr*) #1

declare dso_local i64 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @pnfs_detach_layout_hdr(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pnfs_free_layout_hdr(%struct.pnfs_layout_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
