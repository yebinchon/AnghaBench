; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_pipe_to_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_pipe_to_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, i32 }
%struct.splice_desc = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.file* }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.file*, i32, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@SPLICE_F_MORE = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @pipe_to_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_to_sendpage(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %11 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %12 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %8, align 8
  %15 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %16 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.file*, i32, i32, i32, i32*, i32)*, i32 (%struct.file*, i32, i32, i32, i32*, i32)** %21, align 8
  %23 = call i32 @likely(i32 (%struct.file*, i32, i32, i32, i32*, i32)* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %74

28:                                               ; preds = %3
  %29 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %30 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SPLICE_F_MORE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_MORE, align 4
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %10, align 4
  %40 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %41 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %44 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %49 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %47, %38
  %57 = load %struct.file*, %struct.file** %8, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.file*, i32, i32, i32, i32*, i32)*, i32 (%struct.file*, i32, i32, i32, i32*, i32)** %60, align 8
  %62 = load %struct.file*, %struct.file** %8, align 8
  %63 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %70 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 %61(%struct.file* %62, i32 %65, i32 %68, i32 %71, i32* %9, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %56, %25
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @likely(i32 (%struct.file*, i32, i32, i32, i32*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
