; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_clear_ring.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_clear_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.TYPE_3__, %struct.rds_ib_send_work* }
%struct.TYPE_3__ = type { i64 }
%struct.rds_ib_send_work = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_send_clear_ring(%struct.rds_ib_connection* %0) #0 {
  %2 = alloca %struct.rds_ib_connection*, align 8
  %3 = alloca %struct.rds_ib_send_work*, align 8
  %4 = alloca i64, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %5, i32 0, i32 1
  %7 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %6, align 8
  store %struct.rds_ib_send_work* %7, %struct.rds_ib_send_work** %3, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %11 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %17 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %22 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 57005
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %28 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %29 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %30 = call i32 @rds_ib_send_unmap_op(%struct.rds_ib_connection* %27, %struct.rds_ib_send_work* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %20, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %4, align 8
  %35 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %36 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %35, i32 1
  store %struct.rds_ib_send_work* %36, %struct.rds_ib_send_work** %3, align 8
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rds_ib_send_unmap_op(%struct.rds_ib_connection*, %struct.rds_ib_send_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
