; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___allow_reserved_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___allow_reserved_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RESERVE_ROOT = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.inode*, i32)* @__allow_reserved_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__allow_reserved_blocks(%struct.f2fs_sb_info* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 4
  %9 = alloca %struct.TYPE_2__, align 4
  %10 = alloca %struct.TYPE_2__, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %16 = load i32, i32* @RESERVE_ROOT, align 4
  %17 = call i32 @test_opt(%struct.f2fs_sb_info* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @IS_NOQUOTA(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %62

25:                                               ; preds = %20
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %27 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %26)
  %28 = bitcast %struct.TYPE_2__* %8 to i64*
  store i64 %27, i64* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (...) @current_fsuid()
  %32 = call i64 @uid_eq(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %62

35:                                               ; preds = %25
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %37 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %36)
  %38 = bitcast %struct.TYPE_2__* %9 to i64*
  store i64 %37, i64* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %42 = call i32 @gid_eq(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %46 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %45)
  %47 = bitcast %struct.TYPE_2__* %10 to i64*
  store i64 %46, i64* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @in_group_p(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %62

53:                                               ; preds = %44, %35
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %58 = call i64 @capable(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %56, %53
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %52, %34, %24, %19, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @in_group_p(i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
