; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_MODE_EXEC = common dso_local global i32 0, align 4
@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@INTEL_PT_MODE_TSX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_mode(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_pt_pkt*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %11, i32* %4, align 4
  br label %62

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 5
  switch i32 %17, label %59 [
    i32 0, label %18
    i32 1, label %39
  ]

18:                                               ; preds = %12
  %19 = load i32, i32* @INTEL_PT_MODE_EXEC, align 4
  %20 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %21 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 3
  switch i32 %26, label %36 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %33
  ]

27:                                               ; preds = %18
  %28 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %29 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %28, i32 0, i32 0
  store i32 16, i32* %29, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %32 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %31, i32 0, i32 0
  store i32 64, i32* %32, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %35 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %34, i32 0, i32 0
  store i32 32, i32* %35, align 4
  br label %38

36:                                               ; preds = %18
  %37 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %33, %30, %27
  br label %61

39:                                               ; preds = %12
  %40 = load i32, i32* @INTEL_PT_MODE_TSX, align 4
  %41 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %42 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 3
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %39
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 3
  %57 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %58 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %61

59:                                               ; preds = %12
  %60 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %51, %38
  store i32 2, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %59, %49, %36, %10
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
