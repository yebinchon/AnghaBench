; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_wait_for_partner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_wait_for_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, i32*)* @wait_for_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_partner(%struct.pipe_inode_info* %0, i32* %1) #0 {
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %15 = call i32 @pipe_wait(%struct.pipe_inode_info* %14)
  %16 = load i32, i32* @current, align 4
  %17 = call i64 @signal_pending(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  br label %8

21:                                               ; preds = %19, %8
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
