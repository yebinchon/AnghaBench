; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.TYPE_6__*, i64, %struct.TYPE_4__, %struct.rds_ib_recv_work* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rds_ib_recv_work = type { %struct.ib_sge*, %struct.TYPE_5__, i32*, i32* }
%struct.ib_sge = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.ib_sge*, i32* }

@RDS_IB_RECV_SGE = common dso_local global i32 0, align 4
@RDS_FRAG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_recv_init_ring(%struct.rds_ib_connection* %0) #0 {
  %2 = alloca %struct.rds_ib_connection*, align 8
  %3 = alloca %struct.rds_ib_recv_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sge*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %6, i32 0, i32 3
  %8 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %7, align 8
  store %struct.rds_ib_recv_work* %8, %struct.rds_ib_recv_work** %3, align 8
  br label %9

9:                                                ; preds = %76, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %12 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %9
  %17 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %18 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %20 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %22 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %26 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %29 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %28, i32 0, i32 0
  %30 = load %struct.ib_sge*, %struct.ib_sge** %29, align 8
  %31 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %32 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store %struct.ib_sge* %30, %struct.ib_sge** %33, align 8
  %34 = load i32, i32* @RDS_IB_RECV_SGE, align 4
  %35 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %36 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %39 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %38, i32 0, i32 0
  %40 = load %struct.ib_sge*, %struct.ib_sge** %39, align 8
  %41 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %40, i64 0
  store %struct.ib_sge* %41, %struct.ib_sge** %5, align 8
  %42 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %43 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 %44, %47
  %49 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %50 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %52 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %54 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %59 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %61 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %60, i32 0, i32 0
  %62 = load %struct.ib_sge*, %struct.ib_sge** %61, align 8
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %62, i64 1
  store %struct.ib_sge* %63, %struct.ib_sge** %5, align 8
  %64 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %65 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %67 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %68 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %70 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %75 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %16
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  %79 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %3, align 8
  %80 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %79, i32 1
  store %struct.rds_ib_recv_work* %80, %struct.rds_ib_recv_work** %3, align 8
  br label %9

81:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
