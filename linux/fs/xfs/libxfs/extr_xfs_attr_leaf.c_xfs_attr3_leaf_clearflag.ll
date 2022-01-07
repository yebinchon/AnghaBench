; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_clearflag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_clearflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i64, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32, i32, i8*, i8*, i32, i64 }
%struct.xfs_attr_leaf_name_remote = type { i32, i32, i8*, i8*, i32, i64 }
%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }

@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_clearflag(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_attr_leafblock*, align 8
  %5 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %6 = alloca %struct.xfs_attr_leaf_name_remote*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %9 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %10 = call i32 @trace_xfs_attr_leaf_clearflag(%struct.xfs_da_args* %9)
  %11 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @xfs_attr3_leaf_read(i32 %13, i32 %16, i32 %19, i32 -1, %struct.xfs_buf** %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %102

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
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %52 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %53 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %54 = bitcast %struct.xfs_attr_leaf_entry* %53 to %struct.xfs_attr_leaf_name_remote*
  %55 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %52, %struct.xfs_attr_leaf_name_remote* %54, i32 40)
  %56 = call i32 @xfs_trans_log_buf(i32 %50, %struct.xfs_buf* %51, i32 %55)
  %57 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %25
  %62 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %71 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %72 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %70, i64 %73)
  store %struct.xfs_attr_leaf_name_remote* %74, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %75 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %76 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @cpu_to_be32(i64 %77)
  %79 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %80 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %82 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @cpu_to_be32(i64 %83)
  %85 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %86 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %88 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %91 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %92 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %6, align 8
  %93 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %91, %struct.xfs_attr_leaf_name_remote* %92, i32 40)
  %94 = call i32 @xfs_trans_log_buf(i32 %89, %struct.xfs_buf* %90, i32 %93)
  br label %95

95:                                               ; preds = %61, %25
  %96 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %97 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %96, i32 0, i32 4
  %98 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %99 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @xfs_trans_roll_inode(i32* %97, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %95, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @trace_xfs_attr_leaf_clearflag(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_read(i32, i32, i32, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock*, %struct.xfs_attr_leaf_name_remote*, i32) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_trans_roll_inode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
