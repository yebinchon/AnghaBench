; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @pipe_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  store %struct.pipe_inode_info* %11, %struct.pipe_inode_info** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %13 = call i32 @__pipe_lock(%struct.pipe_inode_info* %12)
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FMODE_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %25 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %24, i32 0, i32 0
  %26 = call i32 @fasync_helper(i32 %21, %struct.file* %22, i32 %23, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FMODE_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %41, i32 0, i32 1
  %43 = call i32 @fasync_helper(i32 %38, %struct.file* %39, i32 %40, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FMODE_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %56 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %55, i32 0, i32 0
  %57 = call i32 @fasync_helper(i32 -1, %struct.file* %54, i32 0, i32* %56)
  br label %58

58:                                               ; preds = %53, %46, %37
  br label %59

59:                                               ; preds = %58, %34, %27
  %60 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %61 = call i32 @__pipe_unlock(%struct.pipe_inode_info* %60)
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @__pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @__pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
