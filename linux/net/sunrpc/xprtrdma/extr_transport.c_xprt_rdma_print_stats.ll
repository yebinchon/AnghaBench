; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_print_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"\09xprt:\09rdma \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%u %lu %lu %lu %ld %lu %lu %lu %llu %llu \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%lu %lu %lu %llu %llu %llu %llu %lu %lu %lu %lu \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%lu %lu %lu %lu %lu %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_rdma_print_stats(%struct.rpc_xprt* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %7)
  store %struct.rpcrdma_xprt* %8, %struct.rpcrdma_xprt** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = call i64 @xprt_connected(%struct.rpc_xprt* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load i64, i64* @HZ, align 8
  %19 = sdiv i64 %17, %18
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = sdiv i64 %35, %36
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %44 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %52 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %56 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %27, i32 %31, i64 %37, i64 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %62 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %66 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %70 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %74 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 13
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %79 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %84 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %88 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %92 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %96 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %100 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %104 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %68, i32 %72, i64 %77, i64 %82, i32 %86, i32 %90, i32 %94, i32 %98, i32 %102, i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %110 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %114 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %118 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %122 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %127 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %132 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %116, i32 %120, i64 %125, i64 %130, i32 %134)
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i64, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
