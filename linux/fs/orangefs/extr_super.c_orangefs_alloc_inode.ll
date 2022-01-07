; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.orangefs_inode_s = type { %struct.inode, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@orangefs_inode_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ORANGEFS_FS_ID_NULL = common dso_local global i32 0, align 4
@GOSSIP_SUPER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"orangefs_alloc_inode: allocated %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @orangefs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @orangefs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.orangefs_inode_s*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @orangefs_inode_cache, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.orangefs_inode_s* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.orangefs_inode_s* %7, %struct.orangefs_inode_s** %4, align 8
  %8 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %9 = icmp ne %struct.orangefs_inode_s* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %13 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @memset(i32* %14, i32 0, i32 16)
  %16 = load i32, i32* @ORANGEFS_FS_ID_NULL, align 4
  %17 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %18 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %21 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %23 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @memset(i32* %24, i32 0, i32 8)
  %26 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %27 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %28 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %27, i32 0, i32 0
  %29 = call i32 @gossip_debug(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.inode* %28)
  %30 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %31 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %30, i32 0, i32 0
  store %struct.inode* %31, %struct.inode** %2, align 8
  br label %32

32:                                               ; preds = %11, %10
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %33
}

declare dso_local %struct.orangefs_inode_s* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gossip_debug(i32, i8*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
