; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_rdma_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i64, %struct.TYPE_7__, i64, %struct.smc_link_group* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.smc_link_group = type { %struct.TYPE_5__**, %struct.smc_link* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.smc_link = type { i32 }
%struct.ib_rdma_wr = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_connection*, i32, i32, %struct.ib_rdma_wr*)* @smc_tx_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_tx_rdma_write(%struct.smc_connection* %0, i32 %1, i32 %2, %struct.ib_rdma_wr* %3) #0 {
  %5 = alloca %struct.smc_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_rdma_wr*, align 8
  %9 = alloca %struct.smc_link_group*, align 8
  %10 = alloca %struct.smc_link*, align 8
  %11 = alloca i32, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ib_rdma_wr* %3, %struct.ib_rdma_wr** %8, align 8
  %12 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %13 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %12, i32 0, i32 3
  %14 = load %struct.smc_link_group*, %struct.smc_link_group** %13, align 8
  store %struct.smc_link_group* %14, %struct.smc_link_group** %9, align 8
  %15 = load %struct.smc_link_group*, %struct.smc_link_group** %9, align 8
  %16 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %15, i32 0, i32 1
  %17 = load %struct.smc_link*, %struct.smc_link** %16, align 8
  %18 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %19 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %17, i64 %18
  store %struct.smc_link* %19, %struct.smc_link** %10, align 8
  %20 = load %struct.smc_link*, %struct.smc_link** %10, align 8
  %21 = call i32 @smc_wr_tx_get_next_wr_id(%struct.smc_link* %20)
  %22 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %8, align 8
  %23 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %8, align 8
  %27 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.smc_link_group*, %struct.smc_link_group** %9, align 8
  %30 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %30, align 8
  %32 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %33 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %42 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %8, align 8
  %49 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.smc_link_group*, %struct.smc_link_group** %9, align 8
  %51 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %54 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %8, align 8
  %63 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.smc_link*, %struct.smc_link** %10, align 8
  %65 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %8, align 8
  %68 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %67, i32 0, i32 0
  %69 = call i32 @ib_post_send(i32 %66, %struct.TYPE_8__* %68, i32* null)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %4
  %73 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %74 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.smc_link_group*, %struct.smc_link_group** %9, align 8
  %78 = call i32 @smc_lgr_terminate(%struct.smc_link_group* %77)
  br label %79

79:                                               ; preds = %72, %4
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @smc_wr_tx_get_next_wr_id(%struct.smc_link*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @smc_lgr_terminate(%struct.smc_link_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
