; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_order.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_buf*, %struct.xfs_attr3_icleaf_hdr*)* @xfs_attr3_leaf_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_attr3_leaf_order(%struct.xfs_buf* %0, %struct.xfs_attr3_icleaf_hdr* %1, %struct.xfs_buf* %2, %struct.xfs_attr3_icleaf_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_attr3_icleaf_hdr*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.xfs_attr3_icleaf_hdr*, align 8
  %10 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %11 = alloca %struct.xfs_attr_leaf_entry*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %6, align 8
  store %struct.xfs_attr3_icleaf_hdr* %1, %struct.xfs_attr3_icleaf_hdr** %7, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %8, align 8
  store %struct.xfs_attr3_icleaf_hdr* %3, %struct.xfs_attr3_icleaf_hdr** %9, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32 %14)
  store %struct.xfs_attr_leaf_entry* %15, %struct.xfs_attr_leaf_entry** %10, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %17 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32 %18)
  store %struct.xfs_attr_leaf_entry* %19, %struct.xfs_attr_leaf_entry** %11, align 8
  %20 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %4
  %25 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %9, align 8
  %26 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %11, align 8
  %31 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %30, i64 0
  %32 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be32_to_cpu(i32 %33)
  %35 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %36 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %35, i64 0
  %37 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be32_to_cpu(i32 %38)
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %63, label %41

41:                                               ; preds = %29
  %42 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %11, align 8
  %43 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %9, align 8
  %44 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %42, i64 %47
  %49 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @be32_to_cpu(i32 %50)
  %52 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %53 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %52, i64 %57
  %59 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @be32_to_cpu(i32 %60)
  %62 = icmp slt i64 %51, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %41, %29
  store i32 1, i32* %5, align 4
  br label %65

64:                                               ; preds = %41, %24, %4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
