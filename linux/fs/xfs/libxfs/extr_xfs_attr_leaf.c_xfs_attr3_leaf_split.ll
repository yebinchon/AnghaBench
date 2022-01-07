; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_split.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_state = type { i32, i64 }
%struct.xfs_da_state_blk = type { i64, i32, i8*, i32 }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_split(%struct.xfs_da_state* %0, %struct.xfs_da_state_blk* %1, %struct.xfs_da_state_blk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_state*, align 8
  %6 = alloca %struct.xfs_da_state_blk*, align 8
  %7 = alloca %struct.xfs_da_state_blk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_da_state* %0, %struct.xfs_da_state** %5, align 8
  store %struct.xfs_da_state_blk* %1, %struct.xfs_da_state_blk** %6, align 8
  store %struct.xfs_da_state_blk* %2, %struct.xfs_da_state_blk** %7, align 8
  %10 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @trace_xfs_attr_leaf_split(i32 %12)
  %14 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @xfs_da_grow_inode(i32 %23, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %103

29:                                               ; preds = %3
  %30 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %31 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %35 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %34, i32 0, i32 1
  %36 = call i32 @xfs_attr3_leaf_create(i32 %32, i32 %33, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %44 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %46 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %49 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %50 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %51 = call i32 @xfs_attr3_leaf_rebalance(%struct.xfs_da_state* %48, %struct.xfs_da_state_blk* %49, %struct.xfs_da_state_blk* %50)
  %52 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %53 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %54 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %55 = call i32 @xfs_da3_blk_link(%struct.xfs_da_state* %52, %struct.xfs_da_state_blk* %53, %struct.xfs_da_state_blk* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %103

60:                                               ; preds = %41
  %61 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %67 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @trace_xfs_attr_leaf_add_old(i32 %68)
  %70 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %71 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %74 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @xfs_attr3_leaf_add(i32 %72, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %89

77:                                               ; preds = %60
  %78 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %79 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @trace_xfs_attr_leaf_add_new(i32 %80)
  %82 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %83 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.xfs_da_state*, %struct.xfs_da_state** %5, align 8
  %86 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @xfs_attr3_leaf_add(i32 %84, i32 %87)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %77, %65
  %90 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %91 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @xfs_attr_leaf_lasthash(i32 %92, i32* null)
  %94 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %95 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %97 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @xfs_attr_leaf_lasthash(i32 %98, i32* null)
  %100 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %7, align 8
  %101 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %89, %58, %39, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @trace_xfs_attr_leaf_split(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_da_grow_inode(i32, i32*) #1

declare dso_local i32 @xfs_attr3_leaf_create(i32, i32, i32*) #1

declare dso_local i32 @xfs_attr3_leaf_rebalance(%struct.xfs_da_state*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*) #1

declare dso_local i32 @xfs_da3_blk_link(%struct.xfs_da_state*, %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk*) #1

declare dso_local i32 @trace_xfs_attr_leaf_add_old(i32) #1

declare dso_local i32 @xfs_attr3_leaf_add(i32, i32) #1

declare dso_local i32 @trace_xfs_attr_leaf_add_new(i32) #1

declare dso_local i8* @xfs_attr_leaf_lasthash(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
