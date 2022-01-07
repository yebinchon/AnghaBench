; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__setup_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__setup_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_auxtrace*)* @cs_etm__setup_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__setup_queues(%struct.cs_etm_auxtrace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs_etm_auxtrace*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %3, align 8
  %6 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %7 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %12 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @machine__kernel_start(i32 %13)
  %15 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %16 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %21 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %27 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %28 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @cs_etm__setup_queue(%struct.cs_etm_auxtrace* %26, i32* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %18

44:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @machine__kernel_start(i32) #1

declare dso_local i32 @cs_etm__setup_queue(%struct.cs_etm_auxtrace*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
