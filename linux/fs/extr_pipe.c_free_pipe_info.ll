; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_free_pipe_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_free_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, %struct.pipe_inode_info*, i64, i64, i32 }
%struct.pipe_buffer = type { i32, %struct.pipe_buffer*, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pipe_info(%struct.pipe_inode_info* %0) #0 {
  %2 = alloca %struct.pipe_inode_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %2, align 8
  %5 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %6 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %9 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @account_pipe_buffers(i32 %7, i32 %10, i32 0)
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %13 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @free_uid(i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %24 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %23, i32 0, i32 1
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %25, i64 %27
  %29 = bitcast %struct.pipe_inode_info* %28 to %struct.pipe_buffer*
  store %struct.pipe_buffer* %29, %struct.pipe_buffer** %4, align 8
  %30 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %36 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %37 = bitcast %struct.pipe_buffer* %36 to %struct.pipe_inode_info*
  %38 = call i32 @pipe_buf_release(%struct.pipe_inode_info* %35, %struct.pipe_inode_info* %37)
  br label %39

39:                                               ; preds = %34, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %45 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %50 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @__free_page(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %55 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %54, i32 0, i32 1
  %56 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %55, align 8
  %57 = call i32 @kfree(%struct.pipe_inode_info* %56)
  %58 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  %59 = call i32 @kfree(%struct.pipe_inode_info* %58)
  ret void
}

declare dso_local i32 @account_pipe_buffers(i32, i32, i32) #1

declare dso_local i32 @free_uid(i32) #1

declare dso_local i32 @pipe_buf_release(%struct.pipe_inode_info*, %struct.pipe_inode_info*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
