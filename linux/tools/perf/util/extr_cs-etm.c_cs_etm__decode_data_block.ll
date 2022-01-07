; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__decode_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__decode_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i64, i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*)* @cs_etm__decode_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__decode_data_block(%struct.cs_etm_queue* %0) #0 {
  %2 = alloca %struct.cs_etm_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %6 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %9 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %12 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %15 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %19 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cs_etm_decoder__process_data_block(i32 %7, i64 %10, i32* %17, i64 %20, i64* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %41

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %28 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %33 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  %38 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %25, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @cs_etm_decoder__process_data_block(i32, i64, i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
