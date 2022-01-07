; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, %struct.super_block* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.hpfs_inode_info = type { i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_init_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hpfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 8
  %7 = load %struct.super_block*, %struct.super_block** %6, align 8
  store %struct.super_block* %7, %struct.super_block** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %8)
  store %struct.hpfs_inode_info* %9, %struct.hpfs_inode_info** %4, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %33 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %32, i32 0, i32 11
  store i64 0, i64* %33, align 8
  %34 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %37 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %39 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %41 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %45 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %47 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %49 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %51 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %53 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %4, align 8
  %55 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.inode*, %struct.inode** %2, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
