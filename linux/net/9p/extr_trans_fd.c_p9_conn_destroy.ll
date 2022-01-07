; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_conn = type { i32*, i32*, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mux %p prev %p next %p\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_conn*)* @p9_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_conn_destroy(%struct.p9_conn* %0) #0 {
  %2 = alloca %struct.p9_conn*, align 8
  store %struct.p9_conn* %0, %struct.p9_conn** %2, align 8
  %3 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %4 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %5 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %6 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %10 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @p9_debug(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.p9_conn* %4, i32 %8, i32 %12)
  %14 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %15 = call i32 @p9_mux_poll_stop(%struct.p9_conn* %14)
  %16 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %17 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %16, i32 0, i32 4
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %20 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %25 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @p9_req_put(i32* %26)
  %28 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %29 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %32 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %31, i32 0, i32 2
  %33 = call i32 @cancel_work_sync(i32* %32)
  %34 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %35 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %40 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @p9_req_put(i32* %41)
  %43 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %44 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %30
  %46 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %47 = load i32, i32* @ECONNRESET, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @p9_conn_cancel(%struct.p9_conn* %46, i32 %48)
  %50 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %51 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.p9_conn*, i32, i32) #1

declare dso_local i32 @p9_mux_poll_stop(%struct.p9_conn*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @p9_req_put(i32*) #1

declare dso_local i32 @p9_conn_cancel(%struct.p9_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
