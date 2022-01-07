; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_lasthash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_lasthash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_lasthash(%struct.xfs_buf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %7 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 1
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %8, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @xfs_attr3_leaf_hdr_from_disk(i32 %14, %struct.xfs_attr3_icleaf_hdr* %6, i32 %17)
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32 %21)
  store %struct.xfs_attr_leaf_entry* %22, %struct.xfs_attr_leaf_entry** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %44

34:                                               ; preds = %29
  %35 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %35, i64 %39
  %41 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(i32, %struct.xfs_attr3_icleaf_hdr*, i32) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
