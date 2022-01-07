; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_opipe_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_opipe_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i64, i64, i32, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, i32)* @opipe_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opipe_prep(%struct.pipe_inode_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %17 = call i32 @pipe_lock(%struct.pipe_inode_info* %16)
  br label %18

18:                                               ; preds = %52, %15
  %19 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %20 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %23 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %18
  %27 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %28 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @SIGPIPE, align 4
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @send_sig(i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* @EPIPE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %63

45:                                               ; preds = %37
  %46 = load i32, i32* @current, align 4
  %47 = call i64 @signal_pending(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ERESTARTSYS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %63

52:                                               ; preds = %45
  %53 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %54 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %58 = call i32 @pipe_wait(%struct.pipe_inode_info* %57)
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %60 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  br label %18

63:                                               ; preds = %49, %42, %31, %18
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %65 = call i32 @pipe_unlock(%struct.pipe_inode_info* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
