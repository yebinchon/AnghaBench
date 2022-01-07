; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da2_node_hdr_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da2_node_hdr_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_intnode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.xfs_da3_icnode_hdr = type { i64, i64, i64, i32, i32 }

@XFS_DA_NODE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)* @xfs_da2_node_hdr_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_da2_node_hdr_to_disk(%struct.xfs_da_intnode* %0, %struct.xfs_da3_icnode_hdr* %1) #0 {
  %3 = alloca %struct.xfs_da_intnode*, align 8
  %4 = alloca %struct.xfs_da3_icnode_hdr*, align 8
  store %struct.xfs_da_intnode* %0, %struct.xfs_da_intnode** %3, align 8
  store %struct.xfs_da3_icnode_hdr* %1, %struct.xfs_da3_icnode_hdr** %4, align 8
  %5 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XFS_DA_NODE_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @cpu_to_be32(i32 %14)
  %16 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i8* %15, i8** %19, align 8
  %20 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %23, i8** %27, align 8
  %28 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @cpu_to_be16(i64 %30)
  %32 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %31, i8** %35, align 8
  %36 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_be16(i64 %38)
  %40 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @cpu_to_be16(i64 %45)
  %47 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %3, align 8
  %48 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
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
