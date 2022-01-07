; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_setflag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_setflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i32, i32, i32, i32 }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32, i64, i64 }
%struct.xfs_attr_leaf_name_remote = type { i32, i64, i64 }
%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }

@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_setflag(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_attr_leafblock*, align 8
  %5 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %6 = alloca %struct.xfs_attr_leaf_name_remote*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %9 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %10 = call i32 @trace_xfs_attr_leaf_setflag(%struct.xfs_da_args* %9)
  %11 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xfs_attr3_leaf_read(i32 %13, i32 %16, i32 %19, i32 -1, %struct.xfs_buf** %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %89

25:                                               ; preds = %1
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %27 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %26, i32 0, i32 0
  %28 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %27, align 8
  store %struct.xfs_attr_leafblock* %28, %struct.xfs_attr_leafblock** %4, align 8
  %29 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %30 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %29)
  %31 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %30, i64 %33
  %35 = bitcast %struct.xfs_attr_leaf_name_remote* %34 to %struct.xfs_attr_leaf_entry*
  store %struct.xfs_attr_leaf_entry* %35, %struct.xfs_attr_leaf_entry** %5, align 8
  %36 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %45 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %53 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %54 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %55 = bitcast %struct.xfs_attr_leaf_entry* %54 to %struct.xfs_attr_leaf_name_remote*
  %56 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %53, %struct.xfs_attr_leaf_name_remote* %55, i32 24)
  %57 = call i32 @xfs_trans_log_buf(i32 %51, %struct.xfs_buf* %52, i32 %56)
  %58 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %25
  %65 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %66 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %67 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %65, i64 %68)
  store %struct.xfs_attr_leaf_name_remote* %69, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %70 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %71 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %73 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %75 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %78 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %79 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %80 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %78, %struct.xfs_attr_leaf_name_remote* %79, i32 24)
  %81 = call i32 @xfs_trans_log_buf(i32 %76, %struct.xfs_buf* %77, i32 %80)
  br label %82

82:                                               ; preds = %64, %25
  %83 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %84 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %83, i32 0, i32 2
  %85 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %86 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @xfs_trans_roll_inode(i32* %84, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %82, %23
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @trace_xfs_attr_leaf_setflag(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_read(i32, i32, i32, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock*, %struct.xfs_attr_leaf_name_remote*, i32) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i32 @xfs_trans_roll_inode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
