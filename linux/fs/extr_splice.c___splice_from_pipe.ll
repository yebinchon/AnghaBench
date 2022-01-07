; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c___splice_from_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c___splice_from_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.splice_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__splice_from_pipe(%struct.pipe_inode_info* %0, %struct.splice_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.splice_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.splice_desc* %1, %struct.splice_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %9 = call i32 @splice_from_pipe_begin(%struct.splice_desc* %8)
  br label %10

10:                                               ; preds = %23, %3
  %11 = call i32 (...) @cond_resched()
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %13 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %14 = call i32 @splice_from_pipe_next(%struct.pipe_inode_info* %12, %struct.splice_desc* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %19 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @splice_from_pipe_feed(%struct.pipe_inode_info* %18, %struct.splice_desc* %19, i32* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %10, label %26

26:                                               ; preds = %23
  %27 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %28 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %29 = call i32 @splice_from_pipe_end(%struct.pipe_inode_info* %27, %struct.splice_desc* %28)
  %30 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %31 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %36 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  ret i32 %41
}

declare dso_local i32 @splice_from_pipe_begin(%struct.splice_desc*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @splice_from_pipe_next(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @splice_from_pipe_feed(%struct.pipe_inode_info*, %struct.splice_desc*, i32*) #1

declare dso_local i32 @splice_from_pipe_end(%struct.pipe_inode_info*, %struct.splice_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
