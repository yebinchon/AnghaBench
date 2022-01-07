; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_root_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_root_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.fuse_attr = type { i32, i32, i32 }

@FUSE_ROOT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @fuse_get_root_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @fuse_get_root_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_attr, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.fuse_attr* %5, i32 0, i32 12)
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @FUSE_ROOT_ID, align 4
  %10 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %5, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.inode* @fuse_iget(%struct.super_block* %12, i32 1, i32 0, %struct.fuse_attr* %5, i32 0, i32 0)
  ret %struct.inode* %13
}

declare dso_local i32 @memset(%struct.fuse_attr*, i32, i32) #1

declare dso_local %struct.inode* @fuse_iget(%struct.super_block*, i32, i32, %struct.fuse_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
