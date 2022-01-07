; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_poll_mux.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_poll_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_conn = type { i64, i32, i32, i32, i64, i32, i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLNVAL = common dso_local global i32 0, align 4
@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error mux %p err %d\0A\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@Rpending = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mux %p can read\0A\00", align 1
@Rworksched = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"sched read work %p\0A\00", align 1
@EPOLLOUT = common dso_local global i32 0, align 4
@Wpending = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"mux %p can write\0A\00", align 1
@Wworksched = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"sched write work %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_conn*)* @p9_poll_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_poll_mux(%struct.p9_conn* %0) #0 {
  %2 = alloca %struct.p9_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.p9_conn* %0, %struct.p9_conn** %2, align 8
  %5 = load i32, i32* @ECONNRESET, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %8 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %14 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @p9_fd_poll(i32 %15, i32* null, i32* %4)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EPOLLERR, align 4
  %19 = load i32, i32* @EPOLLHUP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @EPOLLNVAL, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %27 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, %struct.p9_conn*, ...) @p9_debug(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.p9_conn* %27, i32 %28)
  %30 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @p9_conn_cancel(%struct.p9_conn* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %12
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @EPOLLIN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* @Rpending, align 4
  %40 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %41 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %44 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %45 = call i32 (i32, i8*, %struct.p9_conn*, ...) @p9_debug(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.p9_conn* %44)
  %46 = load i32, i32* @Rworksched, align 4
  %47 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %48 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %47, i32 0, i32 2
  %49 = call i32 @test_and_set_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %53 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %54 = call i32 (i32, i8*, %struct.p9_conn*, ...) @p9_debug(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.p9_conn* %53)
  %55 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %56 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %55, i32 0, i32 5
  %57 = call i32 @schedule_work(i32* %56)
  br label %58

58:                                               ; preds = %51, %38
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @EPOLLOUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %59
  %65 = load i32, i32* @Wpending, align 4
  %66 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %67 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %66, i32 0, i32 2
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %70 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %71 = call i32 (i32, i8*, %struct.p9_conn*, ...) @p9_debug(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.p9_conn* %70)
  %72 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %73 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %64
  %77 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %78 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %77, i32 0, i32 3
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %76, %64
  %82 = load i32, i32* @Wworksched, align 4
  %83 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %84 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %83, i32 0, i32 2
  %85 = call i32 @test_and_set_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %89 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %90 = call i32 (i32, i8*, %struct.p9_conn*, ...) @p9_debug(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.p9_conn* %89)
  %91 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %92 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %91, i32 0, i32 1
  %93 = call i32 @schedule_work(i32* %92)
  br label %94

94:                                               ; preds = %87, %81, %76
  br label %95

95:                                               ; preds = %11, %94, %59
  ret void
}

declare dso_local i32 @p9_fd_poll(i32, i32*, i32*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.p9_conn*, ...) #1

declare dso_local i32 @p9_conn_cancel(%struct.p9_conn*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
