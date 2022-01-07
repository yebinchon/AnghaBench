; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_verify_struct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_verify_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { {}* }
%struct.xfs_buf = type { %struct.TYPE_3__*, %struct.xfs_da_blkinfo* }
%struct.xfs_da_blkinfo = type { i32 }

@xfs_attr3_leaf_buf_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@xfs_dir3_leafn_buf_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@__this_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*)* @xfs_da3_node_verify_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_da3_node_verify_struct(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_da_blkinfo*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 1
  %7 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %6, align 8
  store %struct.xfs_da_blkinfo* %7, %struct.xfs_da_blkinfo** %4, align 8
  %8 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_da_blkinfo, %struct.xfs_da_blkinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be16_to_cpu(i32 %10)
  switch i32 %11, label %37 [
    i32 131, label %12
    i32 130, label %12
    i32 132, label %15
    i32 133, label %15
    i32 129, label %26
    i32 128, label %26
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %14 = call i32 @xfs_da3_node_verify(%struct.xfs_buf* %13)
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1, %1
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %16, i32 0, i32 0
  store %struct.TYPE_3__* @xfs_attr3_leaf_buf_ops, %struct.TYPE_3__** %17, align 8
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.xfs_buf*)**
  %23 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %22, align 8
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %25 = call i32 %23(%struct.xfs_buf* %24)
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %1, %1
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 0
  store %struct.TYPE_3__* @xfs_dir3_leafn_buf_ops, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.xfs_buf*)**
  %34 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %33, align 8
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %36 = call i32 %34(%struct.xfs_buf* %35)
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @__this_address, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %26, %15, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_da3_node_verify(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
