; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_p9_cm_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_p9_cm_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.p9_client* }
%struct.p9_client = type { i8*, %struct.p9_trans_rdma* }
%struct.p9_trans_rdma = type { i32, i32, i32 }
%struct.rdma_cm_event = type { i32 }

@P9_RDMA_INIT = common dso_local global i32 0, align 4
@P9_RDMA_ADDR_RESOLVED = common dso_local global i32 0, align 4
@P9_RDMA_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@P9_RDMA_CONNECTED = common dso_local global i32 0, align 4
@P9_RDMA_CLOSED = common dso_local global i32 0, align 4
@Disconnected = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @p9_cm_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_cm_event_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca %struct.p9_trans_rdma*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load %struct.p9_client*, %struct.p9_client** %8, align 8
  store %struct.p9_client* %9, %struct.p9_client** %5, align 8
  %10 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %11 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %10, i32 0, i32 1
  %12 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %11, align 8
  store %struct.p9_trans_rdma* %12, %struct.p9_trans_rdma** %6, align 8
  %13 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %69 [
    i32 141, label %16
    i32 130, label %27
    i32 135, label %38
    i32 136, label %49
    i32 129, label %60
    i32 143, label %61
    i32 131, label %61
    i32 137, label %61
    i32 133, label %61
    i32 134, label %61
    i32 132, label %61
    i32 139, label %61
    i32 138, label %61
    i32 140, label %61
    i32 142, label %61
    i32 128, label %61
  ]

16:                                               ; preds = %2
  %17 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %18 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @P9_RDMA_INIT, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @P9_RDMA_ADDR_RESOLVED, align 4
  %25 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %26 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %29 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @P9_RDMA_ADDR_RESOLVED, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* @P9_RDMA_ROUTE_RESOLVED, align 4
  %36 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %37 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %71

38:                                               ; preds = %2
  %39 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %40 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @P9_RDMA_ROUTE_RESOLVED, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load i32, i32* @P9_RDMA_CONNECTED, align 4
  %47 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %48 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %71

49:                                               ; preds = %2
  %50 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %51 = icmp ne %struct.p9_trans_rdma* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @P9_RDMA_CLOSED, align 4
  %54 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %55 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** @Disconnected, align 8
  %58 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %59 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %71

60:                                               ; preds = %2
  br label %71

61:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %62 = load i8*, i8** @Disconnected, align 8
  %63 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %64 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %66 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rdma_disconnect(i32 %67)
  br label %71

69:                                               ; preds = %2
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %61, %60, %56, %38, %27, %16
  %72 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %73 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %72, i32 0, i32 0
  %74 = call i32 @complete(i32* %73)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
