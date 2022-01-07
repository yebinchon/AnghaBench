; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_link_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_link_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_inode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @fuse_link_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_link_write_file(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fuse_inode*, align 8
  %5 = alloca %struct.fuse_file*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.inode* @file_inode(%struct.file* %6)
  store %struct.inode* %7, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %8)
  store %struct.fuse_inode* %9, %struct.fuse_inode** %4, align 8
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  store %struct.fuse_file* %12, %struct.fuse_file** %5, align 8
  %13 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %16, i32 0, i32 0
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %21, i32 0, i32 0
  %23 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %23, i32 0, i32 1
  %25 = call i32 @list_add(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %28 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
