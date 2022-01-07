; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_find_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_find_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_table_slot = type { i32 }
%struct.inode = type { i32 }
%struct.metapage = type { i64 }
%struct.jfs_inode_info = type { i32, %struct.dir_table_slot* }
%struct.TYPE_2__ = type { i32 }

@find_index.maxWarnings = internal global i32 10, align 4
@.str = private unnamed_addr constant [34 x i8] c"find_entry called with index = %d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"find_entry called with index >= next_index\00", align 1
@PSIZE = common dso_local global i32 0, align 4
@L2PSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"free_index: error reading directory table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_table_slot* (%struct.inode*, i32, %struct.metapage**, i32*)* @find_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_table_slot* @find_index(%struct.inode* %0, i32 %1, %struct.metapage** %2, i32* %3) #0 {
  %5 = alloca %struct.dir_table_slot*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.metapage**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.jfs_inode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dir_table_slot*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.metapage** %2, %struct.metapage*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %15)
  store %struct.jfs_inode_info* %16, %struct.jfs_inode_info** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* @find_index.maxWarnings, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @jfs_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @find_index.maxWarnings, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @find_index.maxWarnings, align 4
  br label %27

27:                                               ; preds = %22, %19
  store %struct.dir_table_slot* null, %struct.dir_table_slot** %5, align 8
  br label %112

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %31 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @jfs_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dir_table_slot* null, %struct.dir_table_slot** %5, align 8
  br label %112

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call i64 @jfs_dirtable_inline(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.metapage**, %struct.metapage*** %8, align 8
  store %struct.metapage* null, %struct.metapage** %41, align 8
  %42 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %43 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %42, i32 0, i32 1
  %44 = load %struct.dir_table_slot*, %struct.dir_table_slot** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dir_table_slot, %struct.dir_table_slot* %44, i64 %47
  store %struct.dir_table_slot* %48, %struct.dir_table_slot** %14, align 8
  br label %110

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @PSIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @L2PSIZE, align 4
  %62 = ashr i32 %60, %61
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_2__* @JFS_SBI(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %62, %68
  store i32 %69, i32* %11, align 4
  %70 = load %struct.metapage**, %struct.metapage*** %8, align 8
  %71 = load %struct.metapage*, %struct.metapage** %70, align 8
  %72 = icmp ne %struct.metapage* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %49
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.metapage**, %struct.metapage*** %8, align 8
  %80 = load %struct.metapage*, %struct.metapage** %79, align 8
  %81 = call i32 @release_metapage(%struct.metapage* %80)
  %82 = load %struct.metapage**, %struct.metapage*** %8, align 8
  store %struct.metapage* null, %struct.metapage** %82, align 8
  br label %83

83:                                               ; preds = %78, %73, %49
  %84 = load %struct.metapage**, %struct.metapage*** %8, align 8
  %85 = load %struct.metapage*, %struct.metapage** %84, align 8
  %86 = icmp ne %struct.metapage* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call %struct.metapage* @read_index_page(%struct.inode* %90, i32 %91)
  %93 = load %struct.metapage**, %struct.metapage*** %8, align 8
  store %struct.metapage* %92, %struct.metapage** %93, align 8
  br label %94

94:                                               ; preds = %87, %83
  %95 = load %struct.metapage**, %struct.metapage*** %8, align 8
  %96 = load %struct.metapage*, %struct.metapage** %95, align 8
  %97 = icmp ne %struct.metapage* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 @jfs_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dir_table_slot* null, %struct.dir_table_slot** %5, align 8
  br label %112

100:                                              ; preds = %94
  %101 = load %struct.metapage**, %struct.metapage*** %8, align 8
  %102 = load %struct.metapage*, %struct.metapage** %101, align 8
  %103 = getelementptr inbounds %struct.metapage, %struct.metapage* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = bitcast i8* %108 to %struct.dir_table_slot*
  store %struct.dir_table_slot* %109, %struct.dir_table_slot** %14, align 8
  br label %110

110:                                              ; preds = %100, %40
  %111 = load %struct.dir_table_slot*, %struct.dir_table_slot** %14, align 8
  store %struct.dir_table_slot* %111, %struct.dir_table_slot** %5, align 8
  br label %112

112:                                              ; preds = %110, %98, %34, %27
  %113 = load %struct.dir_table_slot*, %struct.dir_table_slot** %5, align 8
  ret %struct.dir_table_slot* %113
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_warn(i8*, ...) #1

declare dso_local i64 @jfs_dirtable_inline(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local %struct.metapage* @read_index_page(%struct.inode*, i32) #1

declare dso_local i32 @jfs_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
