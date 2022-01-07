; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_vmcs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32, i32 }

@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_VMCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_vmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_vmcs(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_pt_pkt*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %7, align 8
  store i32 5, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp ugt i32 %12, 7
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* @INTEL_PT_VMCS, align 4
  %26 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %27 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %30 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %32 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %31, i32 0, i32 1
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @memcpy_le64(i32* %32, i8* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 2
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %24, %22, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @memcpy_le64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
