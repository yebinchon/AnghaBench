; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_ptwrite.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_ptwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i8, i32, i32 }

@INTEL_PT_PTWRITE_IP = common dso_local global i32 0, align 4
@INTEL_PT_PTWRITE = common dso_local global i32 0, align 4
@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_ptwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_ptwrite(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_pt_pkt*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = ashr i32 %11, 5
  %13 = and i32 %12, 3
  %14 = trunc i32 %13 to i8
  %15 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %15, i32 0, i32 0
  store i8 %14, i8* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = call zeroext i8 @BIT(i32 7)
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @INTEL_PT_PTWRITE_IP, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @INTEL_PT_PTWRITE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %32 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %34 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = zext i8 %35 to i32
  switch i32 %36, label %63 [
    i32 0, label %37
    i32 1, label %50
  ]

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %38, 6
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %41, i32* %4, align 4
  br label %65

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %49 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 6, i32* %4, align 4
  br label %65

50:                                               ; preds = %29
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %51, 10
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le64_to_cpu(i32 %59)
  %61 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %62 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 10, i32* %4, align 4
  br label %65

63:                                               ; preds = %29
  %64 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %55, %53, %42, %40
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local zeroext i8 @BIT(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
