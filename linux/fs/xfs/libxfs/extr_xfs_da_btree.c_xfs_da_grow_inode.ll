; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_grow_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_grow_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_grow_inode(%struct.xfs_da_args* %0, i64* %1) #0 {
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %8 = call i32 @trace_xfs_da_grow_inode(%struct.xfs_da_args* %7)
  %9 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %15 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @xfs_da_grow_inode_int(%struct.xfs_da_args* %14, i64* %5, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @trace_xfs_da_grow_inode(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_da_grow_inode_int(%struct.xfs_da_args*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
