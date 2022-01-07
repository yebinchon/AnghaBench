; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_request_queue_background.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_request_queue_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_req = type { i32, i32 }

@FR_BACKGROUND = common dso_local global i32 0, align 4
@FR_WAITING = common dso_local global i32 0, align 4
@FR_ISREPLY = common dso_local global i32 0, align 4
@BLK_RW_SYNC = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_request_queue_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_request_queue_background(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @FR_BACKGROUND, align 4
  %7 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %8 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %7, i32 0, i32 1
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* @FR_WAITING, align 4
  %15 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %16 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @FR_WAITING, align 4
  %21 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %22 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %21, i32 0, i32 1
  %23 = call i32 @__set_bit(i32 %20, i32* %22)
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 8
  %26 = call i32 @atomic_inc(i32* %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load i32, i32* @FR_ISREPLY, align 4
  %29 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %30 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %29, i32 0, i32 1
  %31 = call i32 @__set_bit(i32 %28, i32* %30)
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %33 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %32, i32 0, i32 4
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %36 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %27
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %46 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %40
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %57 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %60 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %65 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %70 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %69, i32 0, i32 6
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BLK_RW_SYNC, align 4
  %75 = call i32 @set_bdi_congested(i32 %73, i32 %74)
  %76 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %77 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %76, i32 0, i32 6
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BLK_RW_ASYNC, align 4
  %82 = call i32 @set_bdi_congested(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %68, %63, %55
  %84 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %85 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %84, i32 0, i32 0
  %86 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %87 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %86, i32 0, i32 5
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %90 = call i32 @flush_bg_queue(%struct.fuse_conn* %89)
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %83, %27
  %92 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %93 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %92, i32 0, i32 4
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_bdi_congested(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @flush_bg_queue(%struct.fuse_conn*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
