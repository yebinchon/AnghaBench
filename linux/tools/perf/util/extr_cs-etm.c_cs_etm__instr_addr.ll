; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__instr_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__instr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_packet = type { i64, i32 }

@CS_ETM_ISA_T32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, i32, %struct.cs_etm_packet*, i32)* @cs_etm__instr_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__instr_addr(%struct.cs_etm_queue* %0, i32 %1, %struct.cs_etm_packet* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_etm_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cs_etm_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cs_etm_packet* %2, %struct.cs_etm_packet** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %8, align 8
  %12 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CS_ETM_ISA_T32, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %8, align 8
  %18 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %23, %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @cs_etm__t32_instr_size(%struct.cs_etm_queue* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %43

36:                                               ; preds = %4
  %37 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %8, align 8
  %38 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %36, %34
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @cs_etm__t32_instr_size(%struct.cs_etm_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
