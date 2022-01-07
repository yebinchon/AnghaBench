; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_ioctl_group_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_ioctl_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ext4_new_group_data = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.TYPE_4__ = type { i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Online resizing not supported with bigalloc\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.ext4_new_group_data*)* @ext4_ioctl_group_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_ioctl_group_add(%struct.file* %0, %struct.ext4_new_group_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ext4_new_group_data*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.ext4_new_group_data* %1, %struct.ext4_new_group_data** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.TYPE_3__* @file_inode(%struct.file* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call i32 @ext4_resize_begin(%struct.super_block* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %3, align 8
  br label %92

20:                                               ; preds = %2
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call i64 @ext4_has_feature_bigalloc(%struct.super_block* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = call i32 @ext4_msg(%struct.super_block* %25, i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %87

30:                                               ; preds = %20
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call i32 @mnt_want_write_file(%struct.file* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %87

36:                                               ; preds = %30
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %39 = call i32 @ext4_group_add(%struct.super_block* %37, %struct.ext4_new_group_data* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @jbd2_journal_lock_updates(i64 %49)
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @jbd2_journal_flush(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @jbd2_journal_unlock_updates(i64 %59)
  br label %61

61:                                               ; preds = %45, %36
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = call i32 @mnt_drop_write_file(%struct.file* %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = load i32, i32* @INIT_INODE_TABLE, align 4
  %78 = call i64 @test_opt(%struct.super_block* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.super_block*, %struct.super_block** %6, align 8
  %82 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %83 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ext4_register_li_request(%struct.super_block* %81, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %80, %75, %71, %66
  br label %87

87:                                               ; preds = %86, %35, %24
  %88 = load %struct.super_block*, %struct.super_block** %6, align 8
  %89 = call i32 @ext4_resize_end(%struct.super_block* %88)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %87, %17
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local %struct.TYPE_3__* @file_inode(%struct.file*) #1

declare dso_local i32 @ext4_resize_begin(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_bigalloc(%struct.super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @ext4_group_add(%struct.super_block*, %struct.ext4_new_group_data*) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i64) #1

declare dso_local i32 @jbd2_journal_flush(i64) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i64) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_register_li_request(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_resize_end(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
