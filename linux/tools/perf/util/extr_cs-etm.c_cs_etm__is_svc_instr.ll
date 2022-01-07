; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__is_svc_instr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__is_svc_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, i32, %struct.cs_etm_packet*, i32)* @cs_etm__is_svc_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__is_svc_instr(%struct.cs_etm_queue* %0, i32 %1, %struct.cs_etm_packet* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_etm_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cs_etm_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cs_etm_packet* %2, %struct.cs_etm_packet** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %8, align 8
  %14 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %57 [
    i32 129, label %16
    i32 131, label %28
    i32 130, label %44
    i32 128, label %56
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %12, align 4
  %19 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @cs_etm__mem_access(%struct.cs_etm_queue* %19, i32 %20, i32 %21, i32 4, i32* %10)
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 65280
  %25 = icmp eq i32 %24, 57088
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %59

27:                                               ; preds = %16
  br label %58

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @cs_etm__mem_access(%struct.cs_etm_queue* %31, i32 %32, i32 %33, i32 4, i32* %11)
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 251658240
  %37 = icmp eq i32 %36, 251658240
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, -268435456
  %41 = icmp ne i32 %40, -268435456
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %59

43:                                               ; preds = %38, %28
  br label %58

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @cs_etm__mem_access(%struct.cs_etm_queue* %47, i32 %48, i32 %49, i32 4, i32* %11)
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, -2097121
  %53 = icmp eq i32 %52, -738197503
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %59

55:                                               ; preds = %44
  br label %58

56:                                               ; preds = %4
  br label %57

57:                                               ; preds = %4, %56
  br label %58

58:                                               ; preds = %57, %55, %43, %27
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %54, %42, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @cs_etm__mem_access(%struct.cs_etm_queue*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
