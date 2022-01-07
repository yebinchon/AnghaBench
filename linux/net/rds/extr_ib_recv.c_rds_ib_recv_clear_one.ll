; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_clear_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_clear_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rds_ib_recv_work = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_connection*, %struct.rds_ib_recv_work*)* @rds_ib_recv_clear_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_recv_clear_one(%struct.rds_ib_connection* %0, %struct.rds_ib_recv_work* %1) #0 {
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.rds_ib_recv_work*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %3, align 8
  store %struct.rds_ib_recv_work* %1, %struct.rds_ib_recv_work** %4, align 8
  %5 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %6 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %11 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @rds_inc_put(i32* %13)
  %15 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %16 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %15, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %19 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %24 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %29 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @ib_dma_unmap_sg(i32 %27, i32* %31, i32 1, i32 %32)
  %34 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %35 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %36 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @rds_ib_frag_free(%struct.rds_ib_connection* %34, %struct.TYPE_6__* %37)
  %39 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %4, align 8
  %40 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %39, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %40, align 8
  br label %41

41:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @rds_inc_put(i32*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @rds_ib_frag_free(%struct.rds_ib_connection*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
