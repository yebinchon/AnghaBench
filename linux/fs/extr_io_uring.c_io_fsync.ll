; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.io_uring_sqe = type { i32, i32, i32, i32 }

@IORING_FSYNC_DATASYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@REQ_F_LINK = common dso_local global i32 0, align 4
@REQ_F_FAIL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.io_uring_sqe*, i32)* @io_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_fsync(%struct.io_kiocb* %0, %struct.io_uring_sqe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca %struct.io_uring_sqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.io_kiocb* %0, %struct.io_kiocb** %5, align 8
  store %struct.io_uring_sqe* %1, %struct.io_uring_sqe** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %14 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @READ_ONCE(i32 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %19 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @READ_ONCE(i32 %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %10, align 8
  %26 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %27 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @READ_ONCE(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @IORING_FSYNC_DATASYNC, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %98

40:                                               ; preds = %3
  %41 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %42 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %43 = call i32 @io_prep_fsync(%struct.io_kiocb* %41, %struct.io_uring_sqe* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %98

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %98

54:                                               ; preds = %48
  %55 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %56 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* %10, align 8
  br label %66

64:                                               ; preds = %54
  %65 = load i64, i64* @LLONG_MAX, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @IORING_FSYNC_DATASYNC, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @vfs_fsync_range(i32 %58, i64 %59, i64 %67, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %76 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @REQ_F_LINK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @REQ_F_FAIL_LINK, align 4
  %83 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %84 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %74, %66
  %88 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %89 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  %92 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @io_cqring_add_event(i32 %90, i32 %93, i32 %94)
  %96 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %97 = call i32 @io_put_req(%struct.io_kiocb* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %87, %51, %46, %37
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @io_prep_fsync(%struct.io_kiocb*, %struct.io_uring_sqe*) #1

declare dso_local i32 @vfs_fsync_range(i32, i64, i64, i32) #1

declare dso_local i32 @io_cqring_add_event(i32, i32, i32) #1

declare dso_local i32 @io_put_req(%struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
