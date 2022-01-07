; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da3_node_hdr_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da3_node_hdr_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_intnode = type { i32 }
%struct.xfs_da3_icnode_hdr = type { i64, i64, i64, i32, i32 }
%struct.xfs_da3_node_hdr = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@XFS_DA3_NODE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)* @xfs_da3_node_hdr_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_da3_node_hdr_to_disk(%struct.xfs_da_intnode* %0, %struct.xfs_da3_icnode_hdr* %1) #0 {
  %3 = alloca %struct.xfs_da_intnode*, align 8
  %4 = alloca %struct.xfs_da3_icnode_hdr*, align 8
  %5 = alloca %struct.xfs_da3_node_hdr*, align 8
  store %struct.xfs_da_intnode* %0, %struct.xfs_da_intnode** %3, align 8
  store %struct.xfs_da3_icnode_hdr* %1, %struct.xfs_da3_icnode_hdr** %4, align 8
  %6 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %3, align 8
  %7 = bitcast %struct.xfs_da_intnode* %6 to %struct.xfs_da3_node_hdr*
  store %struct.xfs_da3_node_hdr* %7, %struct.xfs_da3_node_hdr** %5, align 8
  %8 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XFS_DA3_NODE_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i8* %18, i8** %22, align 8
  %23 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i8* %26, i8** %30, align 8
  %31 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @cpu_to_be16(i64 %33)
  %35 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @cpu_to_be16(i64 %41)
  %43 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @cpu_to_be16(i64 %47)
  %49 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
