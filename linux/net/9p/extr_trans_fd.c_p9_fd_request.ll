; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { %struct.p9_conn }
%struct.p9_conn = type { i64, i32, i32, i32, i32 }
%struct.p9_req_t = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mux %p task %p tcall %p id %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@REQ_STATUS_UNSENT = common dso_local global i32 0, align 4
@Wpending = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@Wworksched = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_fd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_request(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_trans_fd*, align 8
  %8 = alloca %struct.p9_conn*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %9 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %10 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %9, i32 0, i32 1
  %11 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %10, align 8
  store %struct.p9_trans_fd* %11, %struct.p9_trans_fd** %7, align 8
  %12 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %7, align 8
  %13 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %12, i32 0, i32 0
  store %struct.p9_conn* %13, %struct.p9_conn** %8, align 8
  %14 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %15 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %16 = load i32, i32* @current, align 4
  %17 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %18 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %17, i32 0, i32 2
  %19 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %20 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @p9_debug(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.p9_conn* %15, i32 %16, %struct.TYPE_2__* %18, i32 %22)
  %24 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %25 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %30 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %2
  %34 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %35 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load i32, i32* @REQ_STATUS_UNSENT, align 4
  %38 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %39 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %41 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %40, i32 0, i32 0
  %42 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %43 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %42, i32 0, i32 4
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %46 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @Wpending, align 4
  %49 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %50 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %49, i32 0, i32 2
  %51 = call i64 @test_and_clear_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* @EPOLLOUT, align 4
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %33
  %56 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %57 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @p9_fd_poll(i32 %58, i32* null, i32* null)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %53
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @EPOLLOUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* @Wworksched, align 4
  %67 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %68 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %67, i32 0, i32 2
  %69 = call i32 @test_and_set_bit(i32 %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %73 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %72, i32 0, i32 1
  %74 = call i32 @schedule_work(i32* %73)
  br label %75

75:                                               ; preds = %71, %65, %60
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %28
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.p9_conn*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @p9_fd_poll(i32, i32*, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
