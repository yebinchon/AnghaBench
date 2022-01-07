; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_need_do_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_need_do_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@CP_NO_NEEDED = common dso_local global i32 0, align 4
@CP_NON_REGULAR = common dso_local global i32 0, align 4
@CP_HARDLINK = common dso_local global i32 0, align 4
@SBI_NEED_CP = common dso_local global i32 0, align 4
@CP_SB_NEED_CP = common dso_local global i32 0, align 4
@CP_WRONG_PINO = common dso_local global i32 0, align 4
@CP_NO_SPC_ROLL = common dso_local global i32 0, align 4
@CP_NODE_NEED_CP = common dso_local global i32 0, align 4
@FASTBOOT = common dso_local global i32 0, align 4
@CP_FASTBOOT_MODE = common dso_local global i32 0, align 4
@CP_SPEC_LOG_NUM = common dso_local global i32 0, align 4
@FSYNC_MODE_STRICT = common dso_local global i64 0, align 8
@TRANS_DIR_INO = common dso_local global i32 0, align 4
@CP_RECOVER_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @need_do_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_do_checkpoint(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %3, align 8
  %9 = load i32, i32* @CP_NO_NEEDED, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISREG(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @CP_NON_REGULAR, align 4
  store i32 %16, i32* %4, align 4
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @CP_HARDLINK, align 4
  store i32 %23, i32* %4, align 4
  br label %110

24:                                               ; preds = %17
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = load i32, i32* @SBI_NEED_CP, align 4
  %27 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @CP_SB_NEED_CP, align 4
  store i32 %30, i32* %4, align 4
  br label %109

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = call i64 @file_wrong_pino(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @CP_WRONG_PINO, align 4
  store i32 %36, i32* %4, align 4
  br label %108

37:                                               ; preds = %31
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %39 = call i32 @f2fs_space_for_roll_forward(%struct.f2fs_sb_info* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @CP_NO_SPC_ROLL, align 4
  store i32 %42, i32* %4, align 4
  br label %107

43:                                               ; preds = %37
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @f2fs_is_checkpointed_node(%struct.f2fs_sb_info* %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @CP_NODE_NEED_CP, align 4
  store i32 %52, i32* %4, align 4
  br label %106

53:                                               ; preds = %43
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %55 = load i32, i32* @FASTBOOT, align 4
  %56 = call i64 @test_opt(%struct.f2fs_sb_info* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @CP_FASTBOOT_MODE, align 4
  store i32 %59, i32* %4, align 4
  br label %105

60:                                               ; preds = %53
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %62 = call { i32, i64 } @F2FS_OPTION(%struct.f2fs_sb_info* %61)
  %63 = bitcast %struct.TYPE_3__* %5 to { i32, i64 }*
  %64 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %63, i32 0, i32 0
  %65 = extractvalue { i32, i64 } %62, 0
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %63, i32 0, i32 1
  %67 = extractvalue { i32, i64 } %62, 1
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @CP_SPEC_LOG_NUM, align 4
  store i32 %72, i32* %4, align 4
  br label %104

73:                                               ; preds = %60
  %74 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %75 = call { i32, i64 } @F2FS_OPTION(%struct.f2fs_sb_info* %74)
  %76 = bitcast %struct.TYPE_3__* %6 to { i32, i64 }*
  %77 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %76, i32 0, i32 0
  %78 = extractvalue { i32, i64 } %75, 0
  store i32 %78, i32* %77, align 8
  %79 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %76, i32 0, i32 1
  %80 = extractvalue { i32, i64 } %75, 1
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FSYNC_MODE_STRICT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %73
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @f2fs_need_dentry_mark(%struct.f2fs_sb_info* %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TRANS_DIR_INO, align 4
  %99 = call i64 @f2fs_exist_written_data(%struct.f2fs_sb_info* %93, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @CP_RECOVER_DIR, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %92, %85, %73
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %51
  br label %107

107:                                              ; preds = %106, %41
  br label %108

108:                                              ; preds = %107, %35
  br label %109

109:                                              ; preds = %108, %29
  br label %110

110:                                              ; preds = %109, %22
  br label %111

111:                                              ; preds = %110, %15
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @file_wrong_pino(%struct.inode*) #1

declare dso_local i32 @f2fs_space_for_roll_forward(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpointed_node(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local { i32, i64 } @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_need_dentry_mark(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_exist_written_data(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
