; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map_op__clone.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map_op__clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_op = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.bpf_map_op* }

@.str = private unnamed_addr constant [28 x i8] c"Failed to alloc bpf_map_op\0A\00", align 1
@BPF_MAP_KEY_RANGES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to alloc indices for map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map_op* (%struct.bpf_map_op*)* @bpf_map_op__clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map_op* @bpf_map_op__clone(%struct.bpf_map_op* %0) #0 {
  %2 = alloca %struct.bpf_map_op*, align 8
  %3 = alloca %struct.bpf_map_op*, align 8
  %4 = alloca %struct.bpf_map_op*, align 8
  %5 = alloca i64, align 8
  store %struct.bpf_map_op* %0, %struct.bpf_map_op** %3, align 8
  %6 = load %struct.bpf_map_op*, %struct.bpf_map_op** %3, align 8
  %7 = call i8* @memdup(%struct.bpf_map_op* %6, i64 32)
  %8 = bitcast i8* %7 to %struct.bpf_map_op*
  store %struct.bpf_map_op* %8, %struct.bpf_map_op** %4, align 8
  %9 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %10 = icmp ne %struct.bpf_map_op* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.bpf_map_op* null, %struct.bpf_map_op** %2, align 8
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.bpf_map_op*, %struct.bpf_map_op** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BPF_MAP_KEY_RANGES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %13
  %23 = load %struct.bpf_map_op*, %struct.bpf_map_op** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 32
  store i64 %29, i64* %5, align 8
  %30 = load %struct.bpf_map_op*, %struct.bpf_map_op** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.bpf_map_op*, %struct.bpf_map_op** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i8* @memdup(%struct.bpf_map_op* %34, i64 %35)
  %37 = bitcast i8* %36 to %struct.bpf_map_op*
  %38 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store %struct.bpf_map_op* %37, %struct.bpf_map_op** %41, align 8
  %42 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.bpf_map_op*, %struct.bpf_map_op** %45, align 8
  %47 = icmp ne %struct.bpf_map_op* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %22
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  %51 = call i32 @free(%struct.bpf_map_op* %50)
  store %struct.bpf_map_op* null, %struct.bpf_map_op** %2, align 8
  br label %55

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %13
  %54 = load %struct.bpf_map_op*, %struct.bpf_map_op** %4, align 8
  store %struct.bpf_map_op* %54, %struct.bpf_map_op** %2, align 8
  br label %55

55:                                               ; preds = %53, %48, %11
  %56 = load %struct.bpf_map_op*, %struct.bpf_map_op** %2, align 8
  ret %struct.bpf_map_op* %56
}

declare dso_local i8* @memdup(%struct.bpf_map_op*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @free(%struct.bpf_map_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
