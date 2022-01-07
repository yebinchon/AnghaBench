; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_dbg_check_orphans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_dbg_check_orphans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.check_info = type { i32, i32, i32, i64, i64, i64 }

@RB_ROOT = common dso_local global i32 0, align 4
@UBIFS_MAX_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dbg_orphan_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot scan TNC, error %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%lu missing orphan(s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"last inode number is %lu\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"total number of inodes is %lu\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"total number of leaf nodes is %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @dbg_check_orphans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_check_orphans(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.check_info, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = call i32 @dbg_is_chk_orph(%struct.ubifs_info* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @RB_ROOT, align 4
  %16 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @UBIFS_MAX_INO_NODE_SZ, align 4
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call i32 @kmalloc(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %10
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %72

29:                                               ; preds = %10
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = call i32 @dbg_scan_orphans(%struct.ubifs_info* %30, %struct.check_info* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %65

35:                                               ; preds = %29
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = call i32 @dbg_walk_index(%struct.ubifs_info* %36, i32* @dbg_orphan_check, i32* null, %struct.check_info* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %65

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %50 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %65

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dbg_cmt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dbg_cmt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dbg_cmt(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %55, %48, %40, %34
  %66 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 2
  %67 = call i32 @dbg_free_check_tree(i32* %66)
  %68 = getelementptr inbounds %struct.check_info, %struct.check_info* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @kfree(i32 %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %24, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @dbg_is_chk_orph(%struct.ubifs_info*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @dbg_scan_orphans(%struct.ubifs_info*, %struct.check_info*) #1

declare dso_local i32 @dbg_walk_index(%struct.ubifs_info*, i32*, i32*, %struct.check_info*) #1

declare dso_local i32 @dbg_cmt(i8*, i64) #1

declare dso_local i32 @dbg_free_check_tree(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
