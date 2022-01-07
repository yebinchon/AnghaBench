; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_local_print_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_local_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"\09xprt:\09local %lu %lu %lu %ld %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.seq_file*)* @xs_local_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_local_print_stats(%struct.rpc_xprt* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %7 = call i64 @xprt_connected(%struct.rpc_xprt* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = load i64, i64* @HZ, align 8
  %16 = sdiv i64 %14, %15
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = sdiv i64 %30, %31
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %43 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %47 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %51 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %55 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %63 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i64 %32, i64 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %61, i32 %65)
  ret void
}

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
