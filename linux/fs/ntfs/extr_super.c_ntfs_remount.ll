; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_ntfs_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_ntfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Entering with remount options string: %s\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EROFS = common dso_local global i32 0, align 4
@VOLUME_IS_DIRTY = common dso_local global i32 0, align 4
@VOLUME_MODIFIED_BY_CHKDSK = common dso_local global i32 0, align 4
@VOLUME_MOUNTED_ON_NT4 = common dso_local global i32 0, align 4
@VOLUME_MUST_MOUNT_RO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @ntfs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.TYPE_10__* @NTFS_SB(%struct.super_block* %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call i32 @sync_filesystem(%struct.super_block* %13)
  %15 = load i32, i32* @SB_RDONLY, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @parse_options(%struct.TYPE_10__* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_10__* @NTFS_SB(%struct.super_block*) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @parse_options(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
