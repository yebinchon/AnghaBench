; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_uring_get_fd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_uring_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.file* }
%struct.TYPE_4__ = type { %struct.io_ring_ctx* }
%struct.file = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[io_uring]\00", align 1
@io_uring_fops = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*)* @io_uring_get_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_uring_get_fd(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.io_ring_ctx*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %3, align 8
  %6 = load i32, i32* @O_RDWR, align 4
  %7 = load i32, i32* @O_CLOEXEC, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @get_unused_fd_flags(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @io_uring_fops, %struct.io_ring_ctx* %14, i32 %17)
  store %struct.file* %18, %struct.file** %4, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i64 @IS_ERR(%struct.file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @put_unused_fd(i32 %23)
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.file* %25)
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = call i32 @fd_install(i32 %28, %struct.file* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %22, %12
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.io_ring_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
