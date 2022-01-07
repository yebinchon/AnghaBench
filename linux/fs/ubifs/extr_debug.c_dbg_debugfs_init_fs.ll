; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_debugfs_init_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_debugfs_init_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__, %struct.ubifs_debug_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ubifs_debug_info = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@UBIFS_DFS_DIR_LEN = common dso_local global i32 0, align 4
@UBIFS_DFS_DIR_NAME = common dso_local global i8* null, align 8
@dfs_rootdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dump_lprops\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@dfs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dump_budg\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dump_tnc\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"chk_general\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"chk_index\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"chk_orphans\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"chk_lprops\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"chk_fs\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"tst_recovery\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ro_error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_debugfs_init_fs(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ubifs_debug_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 1
  %8 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %7, align 8
  store %struct.ubifs_debug_info* %8, %struct.ubifs_debug_info** %5, align 8
  %9 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @UBIFS_DFS_DIR_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i8*, i8** @UBIFS_DFS_DIR_NAME, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snprintf(i8* %11, i32 %13, i8* %14, i32 %18, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @UBIFS_DFS_DIR_LEN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %141

28:                                               ; preds = %1
  %29 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %30 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @dfs_rootdir, align 4
  %34 = call i32 @debugfs_create_dir(i8* %32, i32 %33)
  %35 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %36 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @S_IWUSR, align 4
  %39 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %43 = call i8* @debugfs_create_file(i8* %37, i32 %38, i32 %41, %struct.ubifs_info* %42, i32* @dfs_fops)
  %44 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %45 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %44, i32 0, i32 11
  store i8* %43, i8** %45, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* @S_IWUSR, align 4
  %48 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %49 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %52 = call i8* @debugfs_create_file(i8* %46, i32 %47, i32 %50, %struct.ubifs_info* %51, i32* @dfs_fops)
  %53 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %54 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @S_IWUSR, align 4
  %57 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %58 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %61 = call i8* @debugfs_create_file(i8* %55, i32 %56, i32 %59, %struct.ubifs_info* %60, i32* @dfs_fops)
  %62 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %63 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %62, i32 0, i32 9
  store i8* %61, i8** %63, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @S_IRUSR, align 4
  %66 = load i32, i32* @S_IWUSR, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %72 = call i8* @debugfs_create_file(i8* %64, i32 %67, i32 %70, %struct.ubifs_info* %71, i32* @dfs_fops)
  %73 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %74 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* @S_IRUSR, align 4
  %77 = load i32, i32* @S_IWUSR, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %80 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %83 = call i8* @debugfs_create_file(i8* %75, i32 %78, i32 %81, %struct.ubifs_info* %82, i32* @dfs_fops)
  %84 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %84, i32 0, i32 7
  store i8* %83, i8** %85, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* @S_IRUSR, align 4
  %88 = load i32, i32* @S_IWUSR, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %91 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %94 = call i8* @debugfs_create_file(i8* %86, i32 %89, i32 %92, %struct.ubifs_info* %93, i32* @dfs_fops)
  %95 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %96 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* @S_IRUSR, align 4
  %99 = load i32, i32* @S_IWUSR, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %102 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %105 = call i8* @debugfs_create_file(i8* %97, i32 %100, i32 %103, %struct.ubifs_info* %104, i32* @dfs_fops)
  %106 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %107 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* @S_IRUSR, align 4
  %110 = load i32, i32* @S_IWUSR, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %113 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %116 = call i8* @debugfs_create_file(i8* %108, i32 %111, i32 %114, %struct.ubifs_info* %115, i32* @dfs_fops)
  %117 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %118 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* @S_IRUSR, align 4
  %121 = load i32, i32* @S_IWUSR, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %124 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %127 = call i8* @debugfs_create_file(i8* %119, i32 %122, i32 %125, %struct.ubifs_info* %126, i32* @dfs_fops)
  %128 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %129 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* @S_IRUSR, align 4
  %132 = load i32, i32* @S_IWUSR, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %135 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %138 = call i8* @debugfs_create_file(i8* %130, i32 %133, i32 %136, %struct.ubifs_info* %137, i32* @dfs_fops)
  %139 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %5, align 8
  %140 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %28, %27
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.ubifs_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
