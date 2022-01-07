; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pipe_wait(%struct.pipe_inode_info* %0) #0 {
  %2 = alloca %struct.pipe_inode_info*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = call i32 @DEFINE_WAIT(i32 %3)
  %5 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %6 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %5, i32 0, i32 0
  %7 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %8 = call i32 @prepare_to_wait(i32* %6, i32* @wait, i32 %7)
  %9 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %10 = call i32 @pipe_unlock(%struct.pipe_inode_info* %9)
  %11 = call i32 (...) @schedule()
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %13 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %12, i32 0, i32 0
  %14 = call i32 @finish_wait(i32* %13, i32* @wait)
  %15 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %16 = call i32 @pipe_lock(%struct.pipe_inode_info* %15)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
