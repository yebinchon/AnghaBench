; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_wait_for_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_wait_for_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i64, i64, i32, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, i32)* @wait_for_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_space(%struct.pipe_inode_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %45, %2
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i32, i32* @SIGPIPE, align 4
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @send_sig(i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* @EPIPE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %6
  %22 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %23 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %26 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %56

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load i32, i32* @current, align 4
  %40 = call i64 @signal_pending(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ERESTARTSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %47 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %51 = call i32 @pipe_wait(%struct.pipe_inode_info* %50)
  %52 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %53 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  br label %6

56:                                               ; preds = %42, %35, %29, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
