; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32, i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_ip(i32 %0, i32 %1, i8* %2, i64 %3, %struct.intel_pt_pkt* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.intel_pt_pkt*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.intel_pt_pkt* %4, %struct.intel_pt_pkt** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = lshr i32 %13, 5
  %15 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %16 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %18 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %71 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %34
    i32 3, label %47
    i32 4, label %47
    i32 6, label %58
  ]

20:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %73

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %25, i32* %6, align 4
  br label %79

26:                                               ; preds = %21
  store i32 2, i32* %12, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %33 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %73

34:                                               ; preds = %5
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %35, 5
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %38, i32* %6, align 4
  br label %79

39:                                               ; preds = %34
  store i32 4, i32* %12, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %46 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %73

47:                                               ; preds = %5, %5
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %48, 7
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %51, i32* %6, align 4
  br label %79

52:                                               ; preds = %47
  store i32 6, i32* %12, align 4
  %53 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %54 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %53, i32 0, i32 2
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @memcpy_le64(i32* %54, i8* %56, i32 6)
  br label %73

58:                                               ; preds = %5
  %59 = load i64, i64* %10, align 8
  %60 = icmp ult i64 %59, 9
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %62, i32* %6, align 4
  br label %79

63:                                               ; preds = %58
  store i32 8, i32* %12, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le64_to_cpu(i32 %67)
  %69 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %70 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %73

71:                                               ; preds = %5
  %72 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %72, i32* %6, align 4
  br label %79

73:                                               ; preds = %63, %52, %39, %26, %20
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %11, align 8
  %76 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %73, %71, %61, %50, %37, %24
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy_le64(i32*, i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
