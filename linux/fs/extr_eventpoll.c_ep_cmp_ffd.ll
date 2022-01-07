; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_cmp_ffd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_cmp_ffd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_filefd = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epoll_filefd*, %struct.epoll_filefd*)* @ep_cmp_ffd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_cmp_ffd(%struct.epoll_filefd* %0, %struct.epoll_filefd* %1) #0 {
  %3 = alloca %struct.epoll_filefd*, align 8
  %4 = alloca %struct.epoll_filefd*, align 8
  store %struct.epoll_filefd* %0, %struct.epoll_filefd** %3, align 8
  store %struct.epoll_filefd* %1, %struct.epoll_filefd** %4, align 8
  %5 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %6 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.epoll_filefd*, %struct.epoll_filefd** %4, align 8
  %9 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %15 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.epoll_filefd*, %struct.epoll_filefd** %4, align 8
  %18 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %30

22:                                               ; preds = %13
  %23 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %24 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.epoll_filefd*, %struct.epoll_filefd** %4, align 8
  %27 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  br label %30

30:                                               ; preds = %22, %21
  %31 = phi i32 [ -1, %21 ], [ %29, %22 ]
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i32 [ 1, %12 ], [ %31, %30 ]
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
