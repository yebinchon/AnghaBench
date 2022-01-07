; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_setlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_lk_in = type { i32 }
%struct.pid = type { i32 }

@args = common dso_local global i32 0, align 4
@FL_SLEEP = common dso_local global i32 0, align 4
@FUSE_SETLKW = common dso_local global i32 0, align 4
@FUSE_SETLK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@FL_CLOSE_POSIX = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*, i32)* @fuse_setlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_setlk(%struct.file* %0, %struct.file_lock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_lk_in, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.file_lock* %1, %struct.file_lock** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %17)
  store %struct.fuse_conn* %18, %struct.fuse_conn** %9, align 8
  %19 = load i32, i32* @args, align 4
  %20 = call i32 @FUSE_ARGS(i32 %19)
  %21 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FL_SLEEP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @FUSE_SETLKW, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @FUSE_SETLK, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %11, align 4
  %33 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @F_UNLCK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @current, align 4
  %40 = call %struct.pid* @task_tgid(i32 %39)
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi %struct.pid* [ %40, %38 ], [ null, %41 ]
  store %struct.pid* %43, %struct.pid** %12, align 8
  %44 = load %struct.pid*, %struct.pid** %12, align 8
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %46 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pid_nr_ns(%struct.pid* %44, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %50 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %55 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOLCK, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %90

63:                                               ; preds = %53, %42
  %64 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FL_CLOSE_POSIX, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @FL_CLOSE_POSIX, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %90

72:                                               ; preds = %63
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @fuse_lk_fill(i32* @args, %struct.file* %73, %struct.file_lock* %74, i32 %75, i32 %76, i32 %77, %struct.fuse_lk_in* %10)
  %79 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %80 = call i32 @fuse_simple_request(%struct.fuse_conn* %79, i32* @args)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @EINTR, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load i32, i32* @ERESTARTSYS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %72
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %71, %60
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(i32) #1

declare dso_local %struct.pid* @task_tgid(i32) #1

declare dso_local i32 @pid_nr_ns(%struct.pid*, i32) #1

declare dso_local i32 @fuse_lk_fill(i32*, %struct.file*, %struct.file_lock*, i32, i32, i32, %struct.fuse_lk_in*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
