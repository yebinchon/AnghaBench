; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fuse_iqueue = type { i32, i32, i32 }
%struct.fuse_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fuse_iqueue }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @fuse_dev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_iqueue*, align 8
  %8 = alloca %struct.fuse_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @EPOLLOUT, align 4
  %10 = load i32, i32* @EPOLLWRNORM, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.fuse_dev* @fuse_get_dev(%struct.file* %12)
  store %struct.fuse_dev* %13, %struct.fuse_dev** %8, align 8
  %14 = load %struct.fuse_dev*, %struct.fuse_dev** %8, align 8
  %15 = icmp ne %struct.fuse_dev* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EPOLLERR, align 4
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.fuse_dev*, %struct.fuse_dev** %8, align 8
  %20 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.fuse_iqueue* %22, %struct.fuse_iqueue** %7, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %7, align 8
  %25 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %24, i32 0, i32 2
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @poll_wait(%struct.file* %23, i32* %25, i32* %26)
  %28 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %7, align 8
  %29 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %7, align 8
  %32 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* @EPOLLERR, align 4
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %18
  %38 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %7, align 8
  %39 = call i64 @request_pending(%struct.fuse_iqueue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @EPOLLIN, align 4
  %43 = load i32, i32* @EPOLLRDNORM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %7, align 8
  %50 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.fuse_dev* @fuse_get_dev(%struct.file*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @request_pending(%struct.fuse_iqueue*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
