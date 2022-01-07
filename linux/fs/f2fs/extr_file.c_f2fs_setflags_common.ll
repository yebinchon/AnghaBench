; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_setflags_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_setflags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_inode_info = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@F2FS_CASEFOLD_FL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@F2FS_PROJINHERIT_FL = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @f2fs_setflags_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_setflags_common(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %9)
  store %struct.f2fs_inode_info* %10, %struct.f2fs_inode_info** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i64 @IS_NOQUOTA(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %8, align 8
  %20 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  %23 = load i32, i32* @F2FS_CASEFOLD_FL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @F2FS_I_SB(%struct.inode* %27)
  %29 = call i32 @f2fs_sb_has_casefold(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %76

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @f2fs_empty_dir(%struct.inode* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOTEMPTY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %76

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %8, align 8
  %45 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = or i32 %43, %49
  %51 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %8, align 8
  %52 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %8, align 8
  %54 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @F2FS_PROJINHERIT_FL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %42
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %62 = call i32 @set_inode_flag(%struct.inode* %60, i32 %61)
  br label %67

63:                                               ; preds = %42
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %66 = call i32 @clear_inode_flag(%struct.inode* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @current_time(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @f2fs_set_inode_flags(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %74, i32 1)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %38, %31, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i32 @f2fs_sb_has_casefold(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_empty_dir(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
