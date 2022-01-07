; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_user_page_pipe_buf_steal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_user_page_pipe_buf_steal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32 }

@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_LRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @user_page_pipe_buf_steal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_page_pipe_buf_steal(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  %6 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %7 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @PIPE_BUF_FLAG_LRU, align 4
  %15 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %20 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %21 = call i32 @generic_pipe_buf_steal(%struct.pipe_inode_info* %19, %struct.pipe_buffer* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @generic_pipe_buf_steal(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
