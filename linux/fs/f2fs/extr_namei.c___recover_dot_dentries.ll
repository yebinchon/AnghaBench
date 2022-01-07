; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c___recover_dot_dentries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c___recover_dot_dentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.qstr = type { i32 }
%struct.f2fs_dir_entry = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"skip recovering inline_dots inode (ino:%lu, pino:%u) in readonly mountpoint\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@FI_INLINE_DOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @__recover_dot_dentries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__recover_dot_dentries(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.qstr, align 4
  %8 = alloca %struct.qstr, align 4
  %9 = alloca %struct.f2fs_dir_entry*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %12)
  store %struct.f2fs_sb_info* %13, %struct.f2fs_sb_info** %6, align 8
  %14 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %19 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @f2fs_readonly(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @f2fs_info(%struct.f2fs_sb_info* %24, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %101

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i32 @dquot_initialize(%struct.inode* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %30
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %39 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %38, i32 1)
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %41 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %42, %struct.qstr* %7, %struct.page** %10)
  store %struct.f2fs_dir_entry* %43, %struct.f2fs_dir_entry** %9, align 8
  %44 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %45 = icmp ne %struct.f2fs_dir_entry* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.page*, %struct.page** %10, align 8
  %48 = call i32 @f2fs_put_page(%struct.page* %47, i32 0)
  br label %68

49:                                               ; preds = %37
  %50 = load %struct.page*, %struct.page** %10, align 8
  %51 = call i64 @IS_ERR(%struct.page* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = call i32 @PTR_ERR(%struct.page* %54)
  store i32 %55, i32* %11, align 4
  br label %90

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @S_IFDIR, align 4
  %62 = call i32 @f2fs_do_add_link(%struct.inode* %57, %struct.qstr* %7, i32* null, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %90

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %69, %struct.qstr* %8, %struct.page** %10)
  store %struct.f2fs_dir_entry* %70, %struct.f2fs_dir_entry** %9, align 8
  %71 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %72 = icmp ne %struct.f2fs_dir_entry* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = call i32 @f2fs_put_page(%struct.page* %74, i32 0)
  br label %89

76:                                               ; preds = %68
  %77 = load %struct.page*, %struct.page** %10, align 8
  %78 = call i64 @IS_ERR(%struct.page* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.page*, %struct.page** %10, align 8
  %82 = call i32 @PTR_ERR(%struct.page* %81)
  store i32 %82, i32* %11, align 4
  br label %88

83:                                               ; preds = %76
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @S_IFDIR, align 4
  %87 = call i32 @f2fs_do_add_link(%struct.inode* %84, %struct.qstr* %8, i32* null, i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %83, %80
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %65, %53
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = load i32, i32* @FI_INLINE_DOTS, align 4
  %96 = call i32 @clear_inode_flag(%struct.inode* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %99 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %35, %23
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i64 @f2fs_readonly(i32) #1

declare dso_local i32 @f2fs_info(%struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode*, %struct.qstr*, %struct.page**) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_do_add_link(%struct.inode*, %struct.qstr*, i32*, i32, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
