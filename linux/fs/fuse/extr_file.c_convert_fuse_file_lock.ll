; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_convert_fuse_file_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_convert_fuse_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_file_lock = type { i32, i32, i32, i32 }
%struct.file_lock = type { i32, i32, i32, i32 }

@OFFSET_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.fuse_file_lock*, %struct.file_lock*)* @convert_fuse_file_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_fuse_file_lock(%struct.fuse_conn* %0, %struct.fuse_file_lock* %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.fuse_file_lock*, align 8
  %7 = alloca %struct.file_lock*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %5, align 8
  store %struct.fuse_file_lock* %1, %struct.fuse_file_lock** %6, align 8
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %8 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %9 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %58 [
    i32 129, label %11
    i32 130, label %12
    i32 128, label %12
  ]

11:                                               ; preds = %3
  br label %61

12:                                               ; preds = %3, %3
  %13 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %14 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OFFSET_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  %19 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %20 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OFFSET_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %26 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %29 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %18, %12
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %24
  %36 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %37 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %42 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = call i32 (...) @rcu_read_lock()
  %47 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %48 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %51 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @find_pid_ns(i32 %49, i32 %52)
  %54 = call i32 @pid_nr_ns(i32 %53, i32* @init_pid_ns)
  %55 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = call i32 (...) @rcu_read_unlock()
  br label %61

58:                                               ; preds = %3
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %35, %11
  %62 = load %struct.fuse_file_lock*, %struct.fuse_file_lock** %6, align 8
  %63 = getelementptr inbounds %struct.fuse_file_lock, %struct.fuse_file_lock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %66 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %58, %32
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pid_nr_ns(i32, i32*) #1

declare dso_local i32 @find_pid_ns(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
