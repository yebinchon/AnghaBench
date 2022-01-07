; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_make_dentry_ptr_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_make_dentry_ptr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_dentry_ptr = type { i32, i32, i32, i32, i32, %struct.inode* }
%struct.f2fs_dentry_block = type { i32, i32, i32 }

@NR_DENTRY_IN_BLOCK = common dso_local global i32 0, align 4
@SIZE_OF_DENTRY_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_block*)* @make_dentry_ptr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_dentry_ptr_block(%struct.inode* %0, %struct.f2fs_dentry_ptr* %1, %struct.f2fs_dentry_block* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_dentry_ptr*, align 8
  %6 = alloca %struct.f2fs_dentry_block*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.f2fs_dentry_ptr* %1, %struct.f2fs_dentry_ptr** %5, align 8
  store %struct.f2fs_dentry_block* %2, %struct.f2fs_dentry_block** %6, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %9 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %8, i32 0, i32 5
  store %struct.inode* %7, %struct.inode** %9, align 8
  %10 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %11 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %12 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @SIZE_OF_DENTRY_BITMAP, align 4
  %14 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %15 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %6, align 8
  %17 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %20 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %6, align 8
  %22 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %25 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %6, align 8
  %27 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %5, align 8
  %30 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
