; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_inode = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nfs_inode*
  store %struct.nfs_inode* %5, %struct.nfs_inode** %3, align 8
  %6 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %6, i32 0, i32 7
  %8 = call i32 @inode_init_once(i32* %7)
  %9 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %9, i32 0, i32 6
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %12, i32 0, i32 5
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %22, i32 0, i32 3
  %24 = call i32 @atomic_long_set(i32* %23, i32 0)
  %25 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @atomic_long_set(i32* %27, i32 0)
  %29 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @atomic_set(i32* %31, i32 0)
  %33 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %34 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %33, i32 0, i32 1
  %35 = call i32 @init_rwsem(i32* %34)
  %36 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %36, i32 0, i32 0
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %40 = call i32 @nfs4_init_once(%struct.nfs_inode* %39)
  ret void
}

declare dso_local i32 @inode_init_once(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nfs4_init_once(%struct.nfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
