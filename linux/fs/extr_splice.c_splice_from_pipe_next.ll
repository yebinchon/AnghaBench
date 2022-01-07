; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_splice_from_pipe_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_splice_from_pipe_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32 }
%struct.splice_desc = type { i32, i32, i64 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.splice_desc*)* @splice_from_pipe_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splice_from_pipe_next(%struct.pipe_inode_info* %0, %struct.splice_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.splice_desc*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.splice_desc* %1, %struct.splice_desc** %5, align 8
  %6 = load i32, i32* @current, align 4
  %7 = call i64 @signal_pending(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ERESTARTSYS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %67

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %63, %12
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %15 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %21 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %67

25:                                               ; preds = %19
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %27 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %32 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %67

36:                                               ; preds = %30, %25
  %37 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %38 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %36
  %47 = load i32, i32* @current, align 4
  %48 = call i64 @signal_pending(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @ERESTARTSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %67

53:                                               ; preds = %46
  %54 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %55 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %60 = call i32 @wakeup_pipe_writers(%struct.pipe_inode_info* %59)
  %61 = load %struct.splice_desc*, %struct.splice_desc** %5, align 8
  %62 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %65 = call i32 @pipe_wait(%struct.pipe_inode_info* %64)
  br label %13

66:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %50, %43, %35, %24, %9
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @wakeup_pipe_writers(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
