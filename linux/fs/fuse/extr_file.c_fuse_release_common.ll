; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_release_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_release_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.fuse_file* }
%struct.fuse_file = type { %struct.TYPE_4__*, i64, %struct.fuse_release_args* }
%struct.TYPE_4__ = type { i32 }
%struct.fuse_release_args = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fuse_inode = type { i32 }

@FUSE_RELEASEDIR = common dso_local global i32 0, align 4
@FUSE_RELEASE = common dso_local global i32 0, align 4
@FUSE_RELEASE_FLOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_release_common(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_inode*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca %struct.fuse_release_args*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call i32 @file_inode(%struct.file* %9)
  %11 = call %struct.fuse_inode* @get_fuse_inode(i32 %10)
  store %struct.fuse_inode* %11, %struct.fuse_inode** %5, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  store %struct.fuse_file* %14, %struct.fuse_file** %6, align 8
  %15 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %16 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %15, i32 0, i32 2
  %17 = load %struct.fuse_release_args*, %struct.fuse_release_args** %16, align 8
  store %struct.fuse_release_args* %17, %struct.fuse_release_args** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @FUSE_RELEASEDIR, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @FUSE_RELEASE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %8, align 4
  %26 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %27 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @fuse_prepare_release(%struct.fuse_inode* %26, %struct.fuse_file* %27, i32 %30, i32 %31)
  %33 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %34 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %24
  %38 = load i32, i32* @FUSE_RELEASE_FLOCK_UNLOCK, align 4
  %39 = load %struct.fuse_release_args*, %struct.fuse_release_args** %7, align 8
  %40 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = ptrtoint %struct.file* %47 to i32
  %49 = call i32 @fuse_lock_owner_id(%struct.TYPE_4__* %46, i32 %48)
  %50 = load %struct.fuse_release_args*, %struct.fuse_release_args** %7, align 8
  %51 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %37, %24
  %54 = load %struct.file*, %struct.file** %3, align 8
  %55 = call i32 @file_inode(%struct.file* %54)
  %56 = call i32 @igrab(i32 %55)
  %57 = load %struct.fuse_release_args*, %struct.fuse_release_args** %7, align 8
  %58 = getelementptr inbounds %struct.fuse_release_args, %struct.fuse_release_args* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %60 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %61 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @fuse_file_put(%struct.fuse_file* %59, i32 %64, i32 %65)
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @fuse_prepare_release(%struct.fuse_inode*, %struct.fuse_file*, i32, i32) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @igrab(i32) #1

declare dso_local i32 @fuse_file_put(%struct.fuse_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
