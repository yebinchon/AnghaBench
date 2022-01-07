; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_set_inode_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_set_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@F2FS_SYNC_FL = common dso_local global i32 0, align 4
@S_SYNC = common dso_local global i32 0, align 4
@F2FS_APPEND_FL = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@F2FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@F2FS_NOATIME_FL = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@F2FS_DIRSYNC_FL = common dso_local global i32 0, align 4
@S_DIRSYNC = common dso_local global i32 0, align 4
@S_ENCRYPTED = common dso_local global i32 0, align 4
@S_VERITY = common dso_local global i32 0, align 4
@F2FS_CASEFOLD_FL = common dso_local global i32 0, align 4
@S_CASEFOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_set_inode_flags(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @F2FS_SYNC_FL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @S_SYNC, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @F2FS_APPEND_FL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @S_APPEND, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @F2FS_IMMUTABLE_FL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @S_IMMUTABLE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @F2FS_NOATIME_FL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @S_NOATIME, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @F2FS_DIRSYNC_FL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @S_DIRSYNC, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = call i64 @file_is_encrypt(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @S_ENCRYPTED, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = call i64 @file_is_verity(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @S_VERITY, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @F2FS_CASEFOLD_FL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @S_CASEFOLD, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @S_SYNC, align 4
  %82 = load i32, i32* @S_APPEND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @S_IMMUTABLE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @S_NOATIME, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @S_DIRSYNC, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @S_ENCRYPTED, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @S_VERITY, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @S_CASEFOLD, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @inode_set_flags(%struct.inode* %79, i32 %80, i32 %95)
  ret void
}

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @file_is_encrypt(%struct.inode*) #1

declare dso_local i64 @file_is_verity(%struct.inode*) #1

declare dso_local i32 @inode_set_flags(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
