; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32, i32, i32 }

@SFS_UNFROZEN = common dso_local global i64 0, align 8
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"waiting for recovery before freeze\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"error freezing FS: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"retrying...\0A\00", align 1
@SDF_FS_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @gfs2_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_freeze(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_sbd* %7, %struct.gfs2_sbd** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 3
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load i64, i64* @SFS_UNFROZEN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %56

17:                                               ; preds = %1
  %18 = load i32, i32* @SDF_WITHDRAWN, align 4
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %47, %26
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 2
  %31 = call i32 @gfs2_lock_fs_check_clean(%struct.gfs2_sbd* %28, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %51

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %42 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %49 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @msleep(i32 1000)
  br label %27

51:                                               ; preds = %34
  %52 = load i32, i32* @SDF_FS_FROZEN, align 4
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 1
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %23, %16
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %58 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_lock_fs_check_clean(%struct.gfs2_sbd*, i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
