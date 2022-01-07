; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fuse_copy_state = type { i32 }
%struct.fuse_dev = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @fuse_dev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dev_write(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.fuse_copy_state, align 4
  %7 = alloca %struct.fuse_dev*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.fuse_dev* @fuse_get_dev(i32 %10)
  store %struct.fuse_dev* %11, %struct.fuse_dev** %7, align 8
  %12 = load %struct.fuse_dev*, %struct.fuse_dev** %7, align 8
  %13 = icmp ne %struct.fuse_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %19 = call i32 @iter_is_iovec(%struct.iov_iter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %17
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = call i32 @fuse_copy_init(%struct.fuse_copy_state* %6, i32 0, %struct.iov_iter* %25)
  %27 = load %struct.fuse_dev*, %struct.fuse_dev** %7, align 8
  %28 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %29 = call i32 @iov_iter_count(%struct.iov_iter* %28)
  %30 = call i32 @fuse_dev_do_write(%struct.fuse_dev* %27, %struct.fuse_copy_state* %6, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %21, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.fuse_dev* @fuse_get_dev(i32) #1

declare dso_local i32 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i32 @fuse_copy_init(%struct.fuse_copy_state*, i32, %struct.iov_iter*) #1

declare dso_local i32 @fuse_dev_do_write(%struct.fuse_dev*, %struct.fuse_copy_state*, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
