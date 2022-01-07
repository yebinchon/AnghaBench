; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_filesystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.fsck_data = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@check_leaf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"file-system check failed with error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_filesystem(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsck_data, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = call i32 @dbg_is_chk_fs(%struct.ubifs_info* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @RB_ROOT, align 4
  %12 = getelementptr inbounds %struct.fsck_data, %struct.fsck_data* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = load i32, i32* @check_leaf, align 4
  %15 = call i32 @dbg_walk_index(%struct.ubifs_info* %13, i32 %14, i32* null, %struct.fsck_data* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %27

19:                                               ; preds = %10
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = call i32 @check_inodes(%struct.ubifs_info* %20, %struct.fsck_data* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @free_inodes(%struct.fsck_data* %5)
  store i32 0, i32* %2, align 4
  br label %34

27:                                               ; preds = %24, %18
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ubifs_err(%struct.ubifs_info* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (...) @dump_stack()
  %32 = call i32 @free_inodes(%struct.fsck_data* %5)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %25, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dbg_is_chk_fs(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_walk_index(%struct.ubifs_info*, i32, i32*, %struct.fsck_data*) #1

declare dso_local i32 @check_inodes(%struct.ubifs_info*, %struct.fsck_data*) #1

declare dso_local i32 @free_inodes(%struct.fsck_data*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
