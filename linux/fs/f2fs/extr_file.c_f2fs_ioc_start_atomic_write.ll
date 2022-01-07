; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_start_atomic_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_start_atomic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.f2fs_inode_info = type { i32, i32*, i32 }
%struct.f2fs_sb_info = type { i32*, i32* }

@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@FI_ATOMIC_REVOKE_REQUEST = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Unexpected flush for atomic writes: ino=%lu, npages=%u\00", align 1
@LLONG_MAX = common dso_local global i32 0, align 4
@ATOMIC_FILE = common dso_local global i64 0, align 8
@FI_ATOMIC_FILE = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @f2fs_ioc_start_atomic_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_ioc_start_atomic_write(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_inode_info*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %10)
  store %struct.f2fs_inode_info* %11, %struct.f2fs_inode_info** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %12)
  store %struct.f2fs_sb_info* %13, %struct.f2fs_sb_info** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @inode_owner_or_capable(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %161

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %161

29:                                               ; preds = %20
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @O_DIRECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %161

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = call i32 @mnt_want_write_file(%struct.file* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %161

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @inode_lock(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i64 @f2fs_is_atomic_file(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load i32, i32* @FI_ATOMIC_REVOKE_REQUEST, align 4
  %55 = call i64 @is_inode_flag_set(%struct.inode* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %155

61:                                               ; preds = %46
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @f2fs_convert_inline_inode(%struct.inode* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %155

67:                                               ; preds = %61
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @WRITE, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @down_write(i32* %73)
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call i64 @get_dirty_pages(%struct.inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call i64 @get_dirty_pages(%struct.inode* %84)
  %86 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %85)
  br label %87

87:                                               ; preds = %78, %67
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @LLONG_MAX, align 4
  %92 = call i32 @filemap_write_and_wait_range(i32 %90, i32 0, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @WRITE, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @up_write(i32* %101)
  br label %155

103:                                              ; preds = %87
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %105 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @ATOMIC_FILE, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %111 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %110, i32 0, i32 2
  %112 = call i64 @list_empty(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %103
  %115 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %116 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %115, i32 0, i32 2
  %117 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %118 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @ATOMIC_FILE, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = call i32 @list_add_tail(i32* %116, i32* %121)
  br label %123

123:                                              ; preds = %114, %103
  %124 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %125 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @ATOMIC_FILE, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = load i32, i32* @FI_ATOMIC_FILE, align 4
  %132 = call i32 @set_inode_flag(%struct.inode* %130, i32 %131)
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = load i32, i32* @FI_ATOMIC_REVOKE_REQUEST, align 4
  %135 = call i32 @clear_inode_flag(%struct.inode* %133, i32 %134)
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %136)
  %138 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @WRITE, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = call i32 @up_write(i32* %141)
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %143)
  %145 = load i32, i32* @REQ_TIME, align 4
  %146 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %144, i32 %145)
  %147 = load i32, i32* @current, align 4
  %148 = load %struct.inode*, %struct.inode** %4, align 8
  %149 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %148)
  %150 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = call i32 @stat_inc_atomic_write(%struct.inode* %151)
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = call i32 @stat_update_max_atomic_write(%struct.inode* %153)
  br label %155

155:                                              ; preds = %123, %95, %66, %60
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = call i32 @inode_unlock(%struct.inode* %156)
  %158 = load %struct.file*, %struct.file** %3, align 8
  %159 = call i32 @mnt_drop_write_file(%struct.file* %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %44, %36, %26, %17
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @get_dirty_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32, i64) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @stat_inc_atomic_write(%struct.inode*) #1

declare dso_local i32 @stat_update_max_atomic_write(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
