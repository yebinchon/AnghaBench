; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_read_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_read_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.xfs_buf*)* }
%struct.xfs_buf = type { %struct.TYPE_3__*, %struct.xfs_da_blkinfo* }
%struct.xfs_da_blkinfo = type { i32 }

@XFS_DA3_NODE_CRC_OFF = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@xfs_attr3_leaf_buf_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@xfs_dir3_leafn_buf_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_da3_node_read_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_da3_node_read_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_da_blkinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 1
  %7 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %6, align 8
  store %struct.xfs_da_blkinfo* %7, %struct.xfs_da_blkinfo** %3, align 8
  %8 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_da_blkinfo, %struct.xfs_da_blkinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be16_to_cpu(i32 %10)
  switch i32 %11, label %56 [
    i32 131, label %12
    i32 130, label %24
    i32 132, label %36
    i32 133, label %36
    i32 129, label %46
    i32 128, label %46
  ]

12:                                               ; preds = %1
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = load i32, i32* @XFS_DA3_NODE_CRC_OFF, align 4
  %15 = call i32 @xfs_buf_verify_cksum(%struct.xfs_buf* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %19 = load i32, i32* @EFSBADCRC, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32, i32* @__this_address, align 4
  %22 = call i32 @xfs_verifier_error(%struct.xfs_buf* %18, i32 %20, i32 %21)
  br label %62

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %1, %23
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %26 = call i32 @xfs_da3_node_verify(%struct.xfs_buf* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %31 = load i32, i32* @EFSCORRUPTED, align 4
  %32 = sub nsw i32 0, %31
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @xfs_verifier_error(%struct.xfs_buf* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %62

36:                                               ; preds = %1, %1
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 0
  store %struct.TYPE_3__* @xfs_attr3_leaf_buf_ops, %struct.TYPE_3__** %38, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %40 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %42, align 8
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %45 = call i32 %43(%struct.xfs_buf* %44)
  br label %62

46:                                               ; preds = %1, %1
  %47 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %48 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %47, i32 0, i32 0
  store %struct.TYPE_3__* @xfs_dir3_leafn_buf_ops, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %50 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %52, align 8
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %55 = call i32 %53(%struct.xfs_buf* %54)
  br label %62

56:                                               ; preds = %1
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %58 = load i32, i32* @EFSCORRUPTED, align 4
  %59 = sub nsw i32 0, %58
  %60 = load i32, i32* @__this_address, align 4
  %61 = call i32 @xfs_verifier_error(%struct.xfs_buf* %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %35, %36, %46, %56, %17
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_buf_verify_cksum(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_da3_node_verify(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
