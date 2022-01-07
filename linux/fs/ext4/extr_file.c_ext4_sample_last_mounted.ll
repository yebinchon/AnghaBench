; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_sample_last_mounted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_sample_last_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.vfsmount = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { i32, %struct.vfsmount* }

@EXT4_MF_MNTDIR_SAMPLED = common dso_local global i32 0, align 4
@EXT4_HT_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.vfsmount*)* @ext4_sample_last_mounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_sample_last_mounted(%struct.super_block* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %12)
  store %struct.ext4_sb_info* %13, %struct.ext4_sb_info** %6, align 8
  %14 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %15 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EXT4_MF_MNTDIR_SAMPLED, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = call i64 @sb_rdonly(%struct.super_block* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = call i32 @sb_start_intwrite_trylock(%struct.super_block* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %92

31:                                               ; preds = %26
  %32 = load i32, i32* @EXT4_MF_MNTDIR_SAMPLED, align 4
  %33 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %34 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i32 0, i32 64)
  %39 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  store %struct.vfsmount* %39, %struct.vfsmount** %40, align 8
  %41 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %42 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %46 = call i8* @d_path(%struct.path* %7, i8* %45, i32 64)
  store i8* %46, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  br label %88

51:                                               ; preds = %31
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = load i32, i32* @EXT4_HT_MISC, align 4
  %54 = call i8* @ext4_journal_start_sb(%struct.super_block* %52, i32 %53, i32 1)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %88

61:                                               ; preds = %51
  %62 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BUFFER_TRACE(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %68 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ext4_journal_get_write_access(i8* %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %85

74:                                               ; preds = %61
  %75 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %76 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @strlcpy(i32 %79, i8* %80, i32 4)
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.super_block*, %struct.super_block** %4, align 8
  %84 = call i32 @ext4_handle_dirty_super(i8* %82, %struct.super_block* %83)
  br label %85

85:                                               ; preds = %74, %73
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @ext4_journal_stop(i8* %86)
  br label %88

88:                                               ; preds = %85, %60, %50
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = call i32 @sb_end_intwrite(%struct.super_block* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %30, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @sb_start_intwrite_trylock(%struct.super_block*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @d_path(%struct.path*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ext4_journal_start_sb(%struct.super_block*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @BUFFER_TRACE(i32, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ext4_handle_dirty_super(i8*, %struct.super_block*) #1

declare dso_local i32 @ext4_journal_stop(i8*) #1

declare dso_local i32 @sb_end_intwrite(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
