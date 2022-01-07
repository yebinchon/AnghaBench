; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i64, i32, i32, i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @pipe_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 2
  %10 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  store %struct.pipe_inode_info* %10, %struct.pipe_inode_info** %6, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %13 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %12, i32 0, i32 5
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, i32* %13, i32* %14)
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %17 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FMODE_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @EPOLLIN, align 4
  %30 = load i32, i32* @EPOLLRDNORM, align 4
  %31 = or i32 %29, %30
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  store i32 %34, i32* %5, align 4
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %44 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @EPOLLHUP, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %39, %33
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FMODE_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %62 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @EPOLLOUT, align 4
  %67 = load i32, i32* @EPOLLWRNORM, align 4
  %68 = or i32 %66, %67
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 0, %69 ]
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %75 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @EPOLLERR, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %70
  br label %83

83:                                               ; preds = %82, %52
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
