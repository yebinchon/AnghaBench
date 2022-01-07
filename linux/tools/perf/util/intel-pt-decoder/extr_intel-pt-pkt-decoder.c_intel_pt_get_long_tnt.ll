; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_long_tnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_long_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32, i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@BIT63 = common dso_local global i32 0, align 4
@INTEL_PT_TNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_long_tnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_long_tnt(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_pt_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le64_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 47, i32* %9, align 4
  br label %19

19:                                               ; preds = %31, %14
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BIT63, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  br label %19

34:                                               ; preds = %27, %19
  %35 = load i32, i32* @INTEL_PT_TNT, align 4
  %36 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %37 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %40 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 1
  %43 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %44 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 8, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
