; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, i64, i64 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pipe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.pipe_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 1
  %8 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  store %struct.pipe_inode_info* %8, %struct.pipe_inode_info** %5, align 8
  %9 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %10 = call i32 @__pipe_lock(%struct.pipe_inode_info* %9)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FMODE_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FMODE_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %31 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %41 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39, %34
  %45 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %46 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %45, i32 0, i32 2
  %47 = load i32, i32* @EPOLLIN, align 4
  %48 = load i32, i32* @EPOLLOUT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @EPOLLRDNORM, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @EPOLLWRNORM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @EPOLLERR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @EPOLLHUP, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @wake_up_interruptible_sync_poll(i32* %46, i32 %57)
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %60 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %59, i32 0, i32 1
  %61 = load i32, i32* @SIGIO, align 4
  %62 = load i32, i32* @POLL_IN, align 4
  %63 = call i32 @kill_fasync(i32* %60, i32 %61, i32 %62)
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %65 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %64, i32 0, i32 0
  %66 = load i32, i32* @SIGIO, align 4
  %67 = load i32, i32* @POLL_OUT, align 4
  %68 = call i32 @kill_fasync(i32* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %44, %39
  %70 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %71 = call i32 @__pipe_unlock(%struct.pipe_inode_info* %70)
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %74 = call i32 @put_pipe_info(%struct.inode* %72, %struct.pipe_inode_info* %73)
  ret i32 0
}

declare dso_local i32 @__pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @__pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @put_pipe_info(%struct.inode*, %struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
