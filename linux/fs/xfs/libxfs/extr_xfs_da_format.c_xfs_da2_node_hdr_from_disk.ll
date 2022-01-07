; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da2_node_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da2_node_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da3_icnode_hdr = type { i8*, i8*, i8*, i8*, i8* }
%struct.xfs_da_intnode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@XFS_DA_NODE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_da3_icnode_hdr*, %struct.xfs_da_intnode*)* @xfs_da2_node_hdr_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_da2_node_hdr_from_disk(%struct.xfs_da3_icnode_hdr* %0, %struct.xfs_da_intnode* %1) #0 {
  %3 = alloca %struct.xfs_da3_icnode_hdr*, align 8
  %4 = alloca %struct.xfs_da_intnode*, align 8
  store %struct.xfs_da3_icnode_hdr* %0, %struct.xfs_da3_icnode_hdr** %3, align 8
  store %struct.xfs_da_intnode* %1, %struct.xfs_da_intnode** %4, align 8
  %5 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @XFS_DA_NODE_MAGIC, align 4
  %11 = call i64 @cpu_to_be16(i32 %10)
  %12 = icmp eq i64 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @be32_to_cpu(i32 %19)
  %21 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @be32_to_cpu(i32 %27)
  %29 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @be16_to_cpu(i64 %35)
  %37 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %38 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @be16_to_cpu(i64 %42)
  %44 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @be16_to_cpu(i64 %49)
  %51 = load %struct.xfs_da3_icnode_hdr*, %struct.xfs_da3_icnode_hdr** %3, align 8
  %52 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
