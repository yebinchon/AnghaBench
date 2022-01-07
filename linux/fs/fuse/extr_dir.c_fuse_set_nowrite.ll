; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_set_nowrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_set_nowrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fuse_inode = type { i64, i32, i32 }

@FUSE_NOWRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_set_nowrite(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %4)
  store %struct.fuse_inode* %5, %struct.fuse_inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i32 @inode_is_locked(%struct.inode* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %13 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i64, i64* @FUSE_NOWRITE, align 8
  %22 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %23 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %30 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %33 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FUSE_NOWRITE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @wait_event(i32 %31, i32 %37)
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
