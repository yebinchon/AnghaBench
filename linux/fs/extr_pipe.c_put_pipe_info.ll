; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_put_pipe_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_put_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32* }
%struct.pipe_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.pipe_inode_info*)* @put_pipe_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pipe_info(%struct.inode* %0, %struct.pipe_inode_info* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.pipe_inode_info* %1, %struct.pipe_inode_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %10 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %25 = call i32 @free_pipe_info(%struct.pipe_inode_info* %24)
  br label %26

26:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_pipe_info(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
