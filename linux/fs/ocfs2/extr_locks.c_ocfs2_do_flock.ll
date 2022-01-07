; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_locks.c_ocfs2_do_flock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_locks.c_ocfs2_do_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ocfs2_file_private* }
%struct.ocfs2_file_private = type { i32, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32, i64 }
%struct.inode = type { i32 }
%struct.file_lock = type { i64, i32 }

@F_WRLCK = common dso_local global i64 0, align 8
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@LKM_NLMODE = common dso_local global i64 0, align 8
@LKM_EXMODE = common dso_local global i64 0, align 8
@F_UNLCK = common dso_local global i64 0, align 8
@FL_FLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i32, %struct.file_lock*)* @ocfs2_do_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_do_flock(%struct.file* %0, %struct.inode* %1, i32 %2, %struct.file_lock* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_file_private*, align 8
  %13 = alloca %struct.ocfs2_lock_res*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.file_lock, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.file_lock* %3, %struct.file_lock** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %17, align 8
  store %struct.ocfs2_file_private* %18, %struct.ocfs2_file_private** %12, align 8
  %19 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %12, align 8
  %20 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %19, i32 0, i32 1
  store %struct.ocfs2_lock_res* %20, %struct.ocfs2_lock_res** %13, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @F_WRLCK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @IS_SETLKW(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %12, align 8
  %34 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %32
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LKM_NLMODE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %13, align 8
  %50 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LKM_EXMODE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %102

60:                                               ; preds = %55
  %61 = call i32 @locks_init_lock(%struct.file_lock* %15)
  %62 = load i64, i64* @F_UNLCK, align 8
  %63 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @FL_FLOCK, align 4
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = call i32 @locks_lock_file_wait(%struct.file* %66, %struct.file_lock* %15)
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = call i32 @ocfs2_file_unlock(%struct.file* %68)
  br label %70

70:                                               ; preds = %60, %42, %32
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @ocfs2_file_lock(%struct.file* %71, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EWOULDBLOCK, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %91

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %102

92:                                               ; preds = %70
  %93 = load %struct.file*, %struct.file** %5, align 8
  %94 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %95 = call i32 @locks_lock_file_wait(%struct.file* %93, %struct.file_lock* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.file*, %struct.file** %5, align 8
  %100 = call i32 @ocfs2_file_unlock(%struct.file* %99)
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101, %91, %59
  %103 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %12, align 8
  %104 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i32 @IS_SETLKW(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @ocfs2_file_unlock(%struct.file*) #1

declare dso_local i32 @ocfs2_file_lock(%struct.file*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
