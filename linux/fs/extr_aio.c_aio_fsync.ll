; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsync_iocb = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iocb = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@aio_fsync_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsync_iocb*, %struct.iocb*, i32)* @aio_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_fsync(%struct.fsync_iocb* %0, %struct.iocb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsync_iocb*, align 8
  %6 = alloca %struct.iocb*, align 8
  %7 = alloca i32, align 4
  store %struct.fsync_iocb* %0, %struct.fsync_iocb** %5, align 8
  store %struct.iocb* %1, %struct.iocb** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.iocb*, %struct.iocb** %6, align 8
  %9 = getelementptr inbounds %struct.iocb, %struct.iocb* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = load %struct.iocb*, %struct.iocb** %6, align 8
  %14 = getelementptr inbounds %struct.iocb, %struct.iocb* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.iocb*, %struct.iocb** %6, align 8
  %19 = getelementptr inbounds %struct.iocb, %struct.iocb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.iocb*, %struct.iocb** %6, align 8
  %24 = getelementptr inbounds %struct.iocb, %struct.iocb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17, %12, %3
  %28 = phi i1 [ true, %17 ], [ true, %12 ], [ true, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %62

35:                                               ; preds = %27
  %36 = load %struct.fsync_iocb*, %struct.fsync_iocb** %5, align 8
  %37 = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.fsync_iocb*, %struct.fsync_iocb** %5, align 8
  %54 = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fsync_iocb*, %struct.fsync_iocb** %5, align 8
  %56 = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %55, i32 0, i32 1
  %57 = load i32, i32* @aio_fsync_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.fsync_iocb*, %struct.fsync_iocb** %5, align 8
  %60 = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %59, i32 0, i32 1
  %61 = call i32 @schedule_work(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %48, %32
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
