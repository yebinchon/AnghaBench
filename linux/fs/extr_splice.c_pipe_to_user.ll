; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_pipe_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_pipe_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, i32 }
%struct.splice_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @pipe_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_to_user(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  %6 = alloca %struct.splice_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %6, align 8
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %15 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %18 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @copy_page_to_iter(i32 %10, i32 %13, i32 %16, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %24 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  ret i32 %33
}

declare dso_local i32 @copy_page_to_iter(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
