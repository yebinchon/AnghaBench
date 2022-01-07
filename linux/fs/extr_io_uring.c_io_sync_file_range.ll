; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sync_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sync_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.io_uring_sqe = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@REQ_F_LINK = common dso_local global i32 0, align 4
@REQ_F_FAIL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.io_uring_sqe*, i32)* @io_sync_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_sync_file_range(%struct.io_kiocb* %0, %struct.io_uring_sqe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca %struct.io_uring_sqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.io_kiocb* %0, %struct.io_kiocb** %5, align 8
  store %struct.io_uring_sqe* %1, %struct.io_uring_sqe** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %13 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %14 = call i32 @io_prep_sfr(%struct.io_kiocb* %12, %struct.io_uring_sqe* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %73

25:                                               ; preds = %19
  %26 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %27 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @READ_ONCE(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %31 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @READ_ONCE(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %35 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @READ_ONCE(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %40 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @sync_file_range(i32 %42, i8* %43, i8* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %25
  %50 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %51 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @REQ_F_LINK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @REQ_F_FAIL_LINK, align 4
  %58 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %59 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %49, %25
  %63 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %64 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %67 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @io_cqring_add_event(i32 %65, i32 %68, i32 %69)
  %71 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %72 = call i32 @io_put_req(%struct.io_kiocb* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %62, %22, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @io_prep_sfr(%struct.io_kiocb*, %struct.io_uring_sqe*) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @sync_file_range(i32, i8*, i8*, i32) #1

declare dso_local i32 @io_cqring_add_event(i32, i32, i32) #1

declare dso_local i32 @io_put_req(%struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
