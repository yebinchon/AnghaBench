; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_get_pipe_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_get_pipe_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.pipe_inode_info*, i32 }
%struct.pipe_inode_info = type { i32, i32, i32 }

@pipe_mnt = common dso_local global %struct.TYPE_2__* null, align 8
@pipefifo_fops = common dso_local global i32 0, align 4
@I_DIRTY = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* ()* @get_pipe_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_pipe_inode() #0 {
  %1 = alloca %struct.inode*, align 8
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pipe_mnt, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.inode* @new_inode_pseudo(i32 %6)
  store %struct.inode* %7, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %59

11:                                               ; preds = %0
  %12 = call i32 (...) @get_next_ino()
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = call %struct.pipe_inode_info* (...) @alloc_pipe_info()
  store %struct.pipe_inode_info* %15, %struct.pipe_inode_info** %3, align 8
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %17 = icmp ne %struct.pipe_inode_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %56

19:                                               ; preds = %11
  %20 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 8
  store %struct.pipe_inode_info* %20, %struct.pipe_inode_info** %22, align 8
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %24 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %26 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %25, i32 0, i32 2
  store i32 1, i32* %26, align 4
  %27 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %28 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 7
  store i32* @pipefifo_fops, i32** %30, align 8
  %31 = load i32, i32* @I_DIRTY, align 4
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @S_IFIFO, align 4
  %35 = load i32, i32* @S_IRUSR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = call i32 (...) @current_fsuid()
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = call i32 (...) @current_fsgid()
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = call i32 @current_time(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 3
  store i32 %48, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  store %struct.inode* %55, %struct.inode** %1, align 8
  br label %60

56:                                               ; preds = %18
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = call i32 @iput(%struct.inode* %57)
  br label %59

59:                                               ; preds = %56, %10
  store %struct.inode* null, %struct.inode** %1, align 8
  br label %60

60:                                               ; preds = %59, %19
  %61 = load %struct.inode*, %struct.inode** %1, align 8
  ret %struct.inode* %61
}

declare dso_local %struct.inode* @new_inode_pseudo(i32) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local %struct.pipe_inode_info* @alloc_pipe_info(...) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
