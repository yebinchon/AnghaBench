; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_remount_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SB_NOATIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bad mount options.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"timeshift can't be changed using remount.\0A\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @hpfs_remount_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %19)
  store %struct.hpfs_sb_info* %20, %struct.hpfs_sb_info** %18, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call i32 @sync_filesystem(%struct.super_block* %21)
  %23 = load i32, i32* @SB_NOATIME, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = call i32 @hpfs_lock(%struct.super_block* %27)
  %29 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %30 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %33 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %36 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 511, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %41 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %44 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %47 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %50 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %53 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %56 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @parse_opts(i8* %58, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16)
  store i32 %59, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %3
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %119

63:                                               ; preds = %3
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (...) @hpfs_help()
  br label %119

68:                                               ; preds = %63
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %71 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %119

76:                                               ; preds = %68
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = call i32 @unmark_dirty(%struct.super_block* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %81 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %84 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 511, %86
  %88 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %89 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %92 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %95 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %98 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %101 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %104 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %18, align 8
  %107 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SB_RDONLY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %76
  %114 = load %struct.super_block*, %struct.super_block** %5, align 8
  %115 = call i32 @mark_dirty(%struct.super_block* %114, i32 1)
  br label %116

116:                                              ; preds = %113, %76
  %117 = load %struct.super_block*, %struct.super_block** %5, align 8
  %118 = call i32 @hpfs_unlock(%struct.super_block* %117)
  store i32 0, i32* %4, align 4
  br label %124

119:                                              ; preds = %74, %66, %61
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = call i32 @hpfs_unlock(%struct.super_block* %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @hpfs_lock(%struct.super_block*) #1

declare dso_local i32 @parse_opts(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hpfs_help(...) #1

declare dso_local i32 @unmark_dirty(%struct.super_block*) #1

declare dso_local i32 @mark_dirty(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_unlock(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
