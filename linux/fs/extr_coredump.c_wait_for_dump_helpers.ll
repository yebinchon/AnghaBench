; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_coredump.c_wait_for_dump_helpers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_coredump.c_wait_for_dump_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, i32 }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @wait_for_dump_helpers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_dump_helpers(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pipe_inode_info*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 0
  %6 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_inode_info* %6, %struct.pipe_inode_info** %3, align 8
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %8 = call i32 @pipe_lock(%struct.pipe_inode_info* %7)
  %9 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %17, i32 0, i32 2
  %19 = call i32 @wake_up_interruptible_sync(i32* %18)
  %20 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %21 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %20, i32 0, i32 3
  %22 = load i32, i32* @SIGIO, align 4
  %23 = load i32, i32* @POLL_IN, align 4
  %24 = call i32 @kill_fasync(i32* %21, i32 %22, i32 %23)
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %26 = call i32 @pipe_unlock(%struct.pipe_inode_info* %25)
  %27 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %28 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %31 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @wait_event_interruptible(i32 %29, i32 %34)
  %36 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %37 = call i32 @pipe_lock(%struct.pipe_inode_info* %36)
  %38 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %39 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %43 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %47 = call i32 @pipe_unlock(%struct.pipe_inode_info* %46)
  ret void
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
