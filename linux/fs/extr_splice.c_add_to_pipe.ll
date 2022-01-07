; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_add_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_add_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, %struct.pipe_buffer*, i32 }
%struct.pipe_buffer = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_pipe(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  %8 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %9 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @SIGPIPE, align 4
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @send_sig(i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* @EPIPE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %27 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %62

33:                                               ; preds = %22
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %38 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %40, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %47 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %46, i32 0, i32 3
  %48 = load %struct.pipe_buffer*, %struct.pipe_buffer** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %48, i64 %50
  %52 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %53 = bitcast %struct.pipe_buffer* %51 to i8*
  %54 = bitcast %struct.pipe_buffer* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %56 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62, %16
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %65 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %66 = call i32 @pipe_buf_release(%struct.pipe_inode_info* %64, %struct.pipe_buffer* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %33
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pipe_buf_release(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
