; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_da_intnode*, %struct.xfs_mount* }
%struct.xfs_da_intnode = type { i32 }
%struct.xfs_mount = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_da3_icnode_hdr = type { i64, i64 }
%struct.xfs_dir_ops = type { i32 (%struct.xfs_da3_icnode_hdr.0*, %struct.xfs_da_intnode.1*)* }
%struct.xfs_da3_icnode_hdr.0 = type opaque
%struct.xfs_da_intnode.1 = type opaque

@__this_address = common dso_local global i32* null, align 8
@XFS_DA_NODE_MAXDEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_buf*)* @xfs_da3_node_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_da3_node_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_da_intnode*, align 8
  %6 = alloca %struct.xfs_da3_icnode_hdr, align 8
  %7 = alloca %struct.xfs_dir_ops*, align 8
  %8 = alloca i32*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 1
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %4, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %12, i32 0, i32 0
  %14 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %13, align 8
  store %struct.xfs_da_intnode* %14, %struct.xfs_da_intnode** %5, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %16 = call %struct.xfs_dir_ops* @xfs_dir_get_ops(%struct.xfs_mount* %15, i32* null)
  store %struct.xfs_dir_ops* %16, %struct.xfs_dir_ops** %7, align 8
  %17 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.xfs_da3_icnode_hdr.0*, %struct.xfs_da_intnode.1*)*, i32 (%struct.xfs_da3_icnode_hdr.0*, %struct.xfs_da_intnode.1*)** %18, align 8
  %20 = bitcast %struct.xfs_da3_icnode_hdr* %6 to %struct.xfs_da3_icnode_hdr.0*
  %21 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %5, align 8
  %22 = bitcast %struct.xfs_da_intnode* %21 to %struct.xfs_da_intnode.1*
  %23 = call i32 %19(%struct.xfs_da3_icnode_hdr.0* %20, %struct.xfs_da_intnode.1* %22)
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 0
  %27 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %26, align 8
  %28 = call i32* @xfs_da3_blkinfo_verify(%struct.xfs_buf* %24, %struct.xfs_da_intnode* %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %2, align 8
  br label %73

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** @__this_address, align 8
  store i32* %38, i32** %2, align 8
  br label %73

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XFS_DA_NODE_MAXDEPTH, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32*, i32** @__this_address, align 8
  store i32* %45, i32** %2, align 8
  br label %73

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** @__this_address, align 8
  store i32* %51, i32** %2, align 8
  br label %73

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %6, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %56 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %54, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %6, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %65 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %63, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32*, i32** @__this_address, align 8
  store i32* %71, i32** %2, align 8
  br label %73

72:                                               ; preds = %61, %52
  store i32* null, i32** %2, align 8
  br label %73

73:                                               ; preds = %72, %70, %50, %44, %37, %31
  %74 = load i32*, i32** %2, align 8
  ret i32* %74
}

declare dso_local %struct.xfs_dir_ops* @xfs_dir_get_ops(%struct.xfs_mount*, i32*) #1

declare dso_local i32* @xfs_da3_blkinfo_verify(%struct.xfs_buf*, %struct.xfs_da_intnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
