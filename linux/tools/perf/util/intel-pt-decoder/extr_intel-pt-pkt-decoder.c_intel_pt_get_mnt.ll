; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_MNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_mnt(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_pt_pkt*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ult i64 %8, 11
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %11, i32* %4, align 4
  br label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @INTEL_PT_MNT, align 4
  %14 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %15 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %17 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = call i32 @memcpy_le64(i32* %17, i8* %19, i32 8)
  store i32 11, i32* %4, align 4
  br label %21

21:                                               ; preds = %12, %10
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @memcpy_le64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
