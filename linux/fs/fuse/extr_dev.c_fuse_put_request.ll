; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_put_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_put_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32, i32 }
%struct.fuse_req = type { i32, i32 }

@FR_BACKGROUND = common dso_local global i32 0, align 4
@FR_WAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_put_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_put_request(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %5 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %6 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %5, i32 0, i32 1
  %7 = call i64 @refcount_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = load i32, i32* @FR_BACKGROUND, align 4
  %11 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %12 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 1
  %26 = call i32 @wake_up(i32* %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %29 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  br label %31

31:                                               ; preds = %27, %9
  %32 = load i32, i32* @FR_WAITING, align 4
  %33 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @FR_WAITING, align 4
  %39 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %40 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %39, i32 0, i32 0
  %41 = call i32 @__clear_bit(i32 %38, i32* %40)
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %43 = call i32 @fuse_drop_waiting(%struct.fuse_conn* %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %46 = call i32 @fuse_request_free(%struct.fuse_req* %45)
  br label %47

47:                                               ; preds = %44, %2
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @fuse_drop_waiting(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_request_free(%struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
