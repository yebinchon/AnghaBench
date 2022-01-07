; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.file_lock*)* }

@ENOLCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NFS: lock(%pD2, t=%x, fl=%x, r=%lld:%lld)\0A\00", align 1
@NFSIOS_VFSLOCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@NFS_MOUNT_LOCAL_FCNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load i32, i32* @ENOLCK, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.file* %17, i64 %20, i32 %23, i64 %26, i64 %29)
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = load i32, i32* @NFSIOS_VFSLOCK, align 4
  %33 = call i32 @nfs_inc_stats(%struct.inode* %31, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call i64 @__mandatory_lock(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @F_UNLCK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %100

44:                                               ; preds = %37, %3
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call %struct.TYPE_5__* @NFS_SERVER(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NFS_MOUNT_LOCAL_FCNTL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %56, align 8
  %58 = icmp ne i32 (%struct.file_lock*)* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %62, align 8
  %64 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %65 = call i32 %63(%struct.file_lock* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %100

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @IS_GETLK(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.file*, %struct.file** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @do_getlk(%struct.file* %75, i32 %76, %struct.file_lock* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %99

80:                                               ; preds = %70
  %81 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %82 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @F_UNLCK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.file*, %struct.file** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @do_unlk(%struct.file* %87, i32 %88, %struct.file_lock* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  br label %98

92:                                               ; preds = %80
  %93 = load %struct.file*, %struct.file** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @do_setlk(%struct.file* %93, i32 %94, %struct.file_lock* %95, i32 %96)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %68, %43
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @dprintk(i8*, %struct.file*, i64, i32, i64, i64) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @do_getlk(%struct.file*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @do_unlk(%struct.file*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @do_setlk(%struct.file*, i32, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
