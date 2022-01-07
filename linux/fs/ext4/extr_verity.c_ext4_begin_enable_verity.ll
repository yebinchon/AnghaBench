; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_begin_enable_verity.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_begin_enable_verity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"verity is only allowed on extent-based files\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4
@EXT4_STATE_VERITY_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ext4_begin_enable_verity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_begin_enable_verity(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %4, align 8
  store i32 2, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i64 @ext4_verity_in_progress(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @ext4_inode_attach_jinode(%struct.inode* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @dquot_initialize(%struct.inode* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %78

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i32 @ext4_convert_inline_data(%struct.inode* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %40 = call i32 @ext4_test_inode_flag(%struct.inode* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @ext4_warning_inode(%struct.inode* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %78

47:                                               ; preds = %37
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call i32 @ext4_truncate(%struct.inode* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load i32, i32* @EXT4_HT_INODE, align 4
  %57 = call i32* @ext4_journal_start(%struct.inode* %55, i32 %56, i32 2)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @PTR_ERR(i32* %62)
  store i32 %63, i32* %2, align 4
  br label %78

64:                                               ; preds = %54
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = call i32 @ext4_orphan_add(i32* %65, %struct.inode* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load i32, i32* @EXT4_STATE_VERITY_IN_PROGRESS, align 4
  %73 = call i32 @ext4_set_inode_state(%struct.inode* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @ext4_journal_stop(i32* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %61, %52, %42, %35, %28, %21, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @ext4_inode_attach_jinode(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @ext4_convert_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
