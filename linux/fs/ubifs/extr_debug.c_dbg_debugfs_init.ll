; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ubifs\00", align 1
@dfs_rootdir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"chk_general\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@dfs_global_fops = common dso_local global i32 0, align 4
@dfs_chk_gen = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"chk_index\00", align 1
@dfs_chk_index = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"chk_orphans\00", align 1
@dfs_chk_orph = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"chk_lprops\00", align 1
@dfs_chk_lprops = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"chk_fs\00", align 1
@dfs_chk_fs = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"tst_recovery\00", align 1
@dfs_tst_rcvry = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_debugfs_init() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 @debugfs_create_dir(i8* %2, i32* null)
  store i32 %3, i32* @dfs_rootdir, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = load i32, i32* @S_IRUSR, align 4
  %6 = load i32, i32* @S_IWUSR, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @dfs_rootdir, align 4
  %9 = call i8* @debugfs_create_file(i8* %4, i32 %7, i32 %8, i32* null, i32* @dfs_global_fops)
  store i8* %9, i8** @dfs_chk_gen, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load i32, i32* @S_IWUSR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @dfs_rootdir, align 4
  %15 = call i8* @debugfs_create_file(i8* %10, i32 %13, i32 %14, i32* null, i32* @dfs_global_fops)
  store i8* %15, i8** @dfs_chk_index, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = load i32, i32* @S_IRUSR, align 4
  %18 = load i32, i32* @S_IWUSR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @dfs_rootdir, align 4
  %21 = call i8* @debugfs_create_file(i8* %16, i32 %19, i32 %20, i32* null, i32* @dfs_global_fops)
  store i8* %21, i8** @dfs_chk_orph, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = load i32, i32* @S_IRUSR, align 4
  %24 = load i32, i32* @S_IWUSR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @dfs_rootdir, align 4
  %27 = call i8* @debugfs_create_file(i8* %22, i32 %25, i32 %26, i32* null, i32* @dfs_global_fops)
  store i8* %27, i8** @dfs_chk_lprops, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  %28 = load i8*, i8** %1, align 8
  %29 = load i32, i32* @S_IRUSR, align 4
  %30 = load i32, i32* @S_IWUSR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @dfs_rootdir, align 4
  %33 = call i8* @debugfs_create_file(i8* %28, i32 %31, i32 %32, i32* null, i32* @dfs_global_fops)
  store i8* %33, i8** @dfs_chk_fs, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = load i32, i32* @S_IRUSR, align 4
  %36 = load i32, i32* @S_IWUSR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @dfs_rootdir, align 4
  %39 = call i8* @debugfs_create_file(i8* %34, i32 %37, i32 %38, i32* null, i32* @dfs_global_fops)
  store i8* %39, i8** @dfs_tst_rcvry, align 8
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
