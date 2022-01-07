; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da3_node_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da3_node_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da3_icnode_hdr = type { i8*, i8*, i8*, i8*, i8* }
%struct.xfs_da_intnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.xfs_da3_node_hdr = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@XFS_DA3_NODE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_da3_icnode_hdr*, %struct.xfs_da_intnode*)* @xfs_da3_node_hdr_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_da3_node_hdr_from_disk(%struct.xfs_da3_icnode_hdr* %0, %struct.xfs_da_intnode* %1) #0 {
  %3 = alloca %struct.xfs_da3_icnode_hdr*, align 8
  %4 = alloca %struct.xfs_da_intnode*, align 8
  %5 = alloca %struct.xfs_da3_node_hdr*, align 8
  store %struct.xfs_da3_icnode_hdr* %0, %struct.xfs_da3_icnode_hdr** %3, align 8
  store %struct.xfs_da_intnode* %1, %struct.xfs_da_intnode** %4, align 8
  %6 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %7 = bitcast %struct.xfs_da_intnode* %6 to %struct.xfs_da3_node_hdr*
  store %struct.xfs_da3_node_hdr* %7, %struct.xfs_da3_node_hdr** %5, align 8
  %8 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @XFS_DA3_NODE_MAGIC, align 4
  %14 = call i64 @cpu_to_be16(i32 %13)
  %15 = icmp eq i64 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @be32_to_cpu(i32 %22)
  %24 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @be32_to_cpu(i32 %30)
  %32 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be16_to_cpu(i32 %38)
  %40 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @be16_to_cpu(i32 %44)
  %46 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %47 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @be16_to_cpu(i32 %50)
  %52 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %53 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
