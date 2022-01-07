; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_lookup_by_inum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_lookup_by_inum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_lookup_by_inum(%struct.gfs2_sbd* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %10, align 8
  %17 = load i32, i32* @DT_UNKNOWN, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.inode* @gfs2_inode_lookup(%struct.super_block* %16, i32 %17, i64 %18, i32 0, i32 %19)
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = call i64 @IS_ERR(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %25, %struct.inode** %5, align 8
  br label %59

26:                                               ; preds = %4
  %27 = load i64*, i64** %8, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i32, i32* @ESTALE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %54

40:                                               ; preds = %29
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFS2_DIF_SYSTEM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %54

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %53, %struct.inode** %5, align 8
  br label %59

54:                                               ; preds = %50, %39
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = call i32 @iput(%struct.inode* %55)
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.inode* @ERR_PTR(i32 %57)
  store %struct.inode* %58, %struct.inode** %5, align 8
  br label %59

59:                                               ; preds = %54, %52, %24
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %60
}

declare dso_local %struct.inode* @gfs2_inode_lookup(%struct.super_block*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
