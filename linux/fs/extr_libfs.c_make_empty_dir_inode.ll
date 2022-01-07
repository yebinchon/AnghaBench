; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_make_empty_dir_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_make_empty_dir_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32, i32*, i64, i32, i64, i64, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@empty_dir_inode_operations = common dso_local global i32 0, align 4
@IOP_XATTR = common dso_local global i32 0, align 4
@empty_dir_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_dir_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call i32 @set_nlink(%struct.inode* %3, i32 2)
  %5 = load i32, i32* @S_IFDIR, align 4
  %6 = load i32, i32* @S_IRUGO, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @S_IXUGO, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 3
  store i32* @empty_dir_inode_operations, i32** %28, align 8
  %29 = load i32, i32* @IOP_XATTR, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store i32* @empty_dir_operations, i32** %36, align 8
  ret void
}

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
