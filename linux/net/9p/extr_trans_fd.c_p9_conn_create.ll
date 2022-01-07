; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { %struct.p9_conn }
%struct.p9_conn = type { i32, i32, i32, i32, i32, i32, i32, %struct.p9_client*, i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"client %p msize %d\0A\00", align 1
@p9_read_work = common dso_local global i32 0, align 4
@p9_write_work = common dso_local global i32 0, align 4
@p9_pollwait = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mux %p can read\0A\00", align 1
@Rpending = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mux %p can write\0A\00", align 1
@Wpending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_client*)* @p9_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_conn_create(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_trans_fd*, align 8
  %5 = alloca %struct.p9_conn*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %2, align 8
  %6 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %7 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %6, i32 0, i32 1
  %8 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %7, align 8
  store %struct.p9_trans_fd* %8, %struct.p9_trans_fd** %4, align 8
  %9 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %4, align 8
  %10 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %9, i32 0, i32 0
  store %struct.p9_conn* %10, %struct.p9_conn** %5, align 8
  %11 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %12 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %13 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %14 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, ...) @p9_debug(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %12, i32 %15)
  %17 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %18 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %17, i32 0, i32 8
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %21 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %22 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %21, i32 0, i32 7
  store %struct.p9_client* %20, %struct.p9_client** %22, align 8
  %23 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %24 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %27 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %26, i32 0, i32 5
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %30 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %29, i32 0, i32 4
  %31 = load i32, i32* @p9_read_work, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %34 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %33, i32 0, i32 3
  %35 = load i32, i32* @p9_write_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %38 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %37, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %41 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %40, i32 0, i32 1
  %42 = load i32, i32* @p9_pollwait, align 4
  %43 = call i32 @init_poll_funcptr(i32* %41, i32 %42)
  %44 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %45 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %46 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %45, i32 0, i32 1
  %47 = call i32 @p9_fd_poll(%struct.p9_client* %44, i32* %46, i32* null)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @EPOLLIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %1
  %53 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %54 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %55 = call i32 (i32, i8*, ...) @p9_debug(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.p9_conn* %54)
  %56 = load i32, i32* @Rpending, align 4
  %57 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %58 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %52, %1
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @EPOLLOUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %67 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %68 = call i32 (i32, i8*, ...) @p9_debug(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.p9_conn* %67)
  %69 = load i32, i32* @Wpending, align 4
  %70 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %71 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i32 @p9_fd_poll(%struct.p9_client*, i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
