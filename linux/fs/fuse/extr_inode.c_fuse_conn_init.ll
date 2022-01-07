; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_conn_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.user_namespace = type { i32 }
%struct.fuse_iqueue_ops = type { i32 }

@FUSE_DEFAULT_MAX_BACKGROUND = common dso_local global i32 0, align 4
@FUSE_DEFAULT_CONGESTION_THRESHOLD = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FUSE_DEFAULT_MAX_PAGES_PER_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_conn_init(%struct.fuse_conn* %0, %struct.user_namespace* %1, %struct.fuse_iqueue_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.fuse_iqueue_ops*, align 8
  %8 = alloca i8*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %5, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %6, align 8
  store %struct.fuse_iqueue_ops* %2, %struct.fuse_iqueue_ops** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %10 = call i32 @memset(%struct.fuse_conn* %9, i32 0, i32 104)
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 22
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 21
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 20
  %19 = call i32 @init_rwsem(i32* %18)
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 19
  %22 = call i32 @refcount_set(i32* %21, i32 1)
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %23, i32 0, i32 18
  %25 = call i32 @atomic_set(i32* %24, i32 1)
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %27 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %26, i32 0, i32 17
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %30 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %29, i32 0, i32 16
  %31 = load %struct.fuse_iqueue_ops*, %struct.fuse_iqueue_ops** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @fuse_iqueue_init(i32* %30, %struct.fuse_iqueue_ops* %31, i8* %32)
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %35 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %34, i32 0, i32 15
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 14
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %41 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %40, i32 0, i32 13
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %44 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %43, i32 0, i32 12
  %45 = call i32 @atomic_set(i32* %44, i32 0)
  %46 = load i32, i32* @FUSE_DEFAULT_MAX_BACKGROUND, align 4
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %48 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @FUSE_DEFAULT_CONGESTION_THRESHOLD, align 4
  %50 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %51 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %53 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %52, i32 0, i32 9
  %54 = call i32 @atomic64_set(i32* %53, i32 0)
  %55 = load i32, i32* @RB_ROOT, align 4
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %57 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %59 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %61 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %63 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %65 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %64, i32 0, i32 5
  %66 = call i32 @atomic64_set(i32* %65, i32 1)
  %67 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %68 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %67, i32 0, i32 4
  %69 = call i32 @get_random_bytes(i32* %68, i32 4)
  %70 = load i32, i32* @current, align 4
  %71 = call i32 @task_active_pid_ns(i32 %70)
  %72 = call i32 @get_pid_ns(i32 %71)
  %73 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %74 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %76 = call i32 @get_user_ns(%struct.user_namespace* %75)
  %77 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %78 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @FUSE_DEFAULT_MAX_PAGES_PER_REQ, align 4
  %80 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %81 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  ret void
}

declare dso_local i32 @memset(%struct.fuse_conn*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @fuse_iqueue_init(i32*, %struct.fuse_iqueue_ops*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @get_pid_ns(i32) #1

declare dso_local i32 @task_active_pid_ns(i32) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
