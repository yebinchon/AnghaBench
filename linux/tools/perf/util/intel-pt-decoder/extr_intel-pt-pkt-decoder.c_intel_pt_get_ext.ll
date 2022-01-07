; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_ext.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_ext(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
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
  br label %109

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 31
  %18 = icmp eq i32 %17, 18
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %23 = call i32 @intel_pt_get_ptwrite(i8* %20, i64 %21, %struct.intel_pt_pkt* %22)
  store i32 %23, i32* %4, align 4
  br label %109

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  switch i32 %28, label %107 [
    i32 163, label %29
    i32 67, label %34
    i32 131, label %39
    i32 3, label %42
    i32 200, label %47
    i32 243, label %52
    i32 130, label %55
    i32 35, label %60
    i32 115, label %63
    i32 195, label %68
    i32 98, label %73
    i32 226, label %76
    i32 194, label %79
    i32 34, label %84
    i32 162, label %89
    i32 99, label %94
    i32 51, label %99
    i32 179, label %103
  ]

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %33 = call i32 @intel_pt_get_long_tnt(i8* %30, i64 %31, %struct.intel_pt_pkt* %32)
  store i32 %33, i32* %4, align 4
  br label %109

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %38 = call i32 @intel_pt_get_pip(i8* %35, i64 %36, %struct.intel_pt_pkt* %37)
  store i32 %38, i32* %4, align 4
  br label %109

39:                                               ; preds = %24
  %40 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %41 = call i32 @intel_pt_get_tracestop(%struct.intel_pt_pkt* %40)
  store i32 %41, i32* %4, align 4
  br label %109

42:                                               ; preds = %24
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %46 = call i32 @intel_pt_get_cbr(i8* %43, i64 %44, %struct.intel_pt_pkt* %45)
  store i32 %46, i32* %4, align 4
  br label %109

47:                                               ; preds = %24
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %51 = call i32 @intel_pt_get_vmcs(i8* %48, i64 %49, %struct.intel_pt_pkt* %50)
  store i32 %51, i32* %4, align 4
  br label %109

52:                                               ; preds = %24
  %53 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %54 = call i32 @intel_pt_get_ovf(%struct.intel_pt_pkt* %53)
  store i32 %54, i32* %4, align 4
  br label %109

55:                                               ; preds = %24
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %59 = call i32 @intel_pt_get_psb(i8* %56, i64 %57, %struct.intel_pt_pkt* %58)
  store i32 %59, i32* %4, align 4
  br label %109

60:                                               ; preds = %24
  %61 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %62 = call i32 @intel_pt_get_psbend(%struct.intel_pt_pkt* %61)
  store i32 %62, i32* %4, align 4
  br label %109

63:                                               ; preds = %24
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %67 = call i32 @intel_pt_get_tma(i8* %64, i64 %65, %struct.intel_pt_pkt* %66)
  store i32 %67, i32* %4, align 4
  br label %109

68:                                               ; preds = %24
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %72 = call i32 @intel_pt_get_3byte(i8* %69, i64 %70, %struct.intel_pt_pkt* %71)
  store i32 %72, i32* %4, align 4
  br label %109

73:                                               ; preds = %24
  %74 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %75 = call i32 @intel_pt_get_exstop(%struct.intel_pt_pkt* %74)
  store i32 %75, i32* %4, align 4
  br label %109

76:                                               ; preds = %24
  %77 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %78 = call i32 @intel_pt_get_exstop_ip(%struct.intel_pt_pkt* %77)
  store i32 %78, i32* %4, align 4
  br label %109

79:                                               ; preds = %24
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %83 = call i32 @intel_pt_get_mwait(i8* %80, i64 %81, %struct.intel_pt_pkt* %82)
  store i32 %83, i32* %4, align 4
  br label %109

84:                                               ; preds = %24
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %88 = call i32 @intel_pt_get_pwre(i8* %85, i64 %86, %struct.intel_pt_pkt* %87)
  store i32 %88, i32* %4, align 4
  br label %109

89:                                               ; preds = %24
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %93 = call i32 @intel_pt_get_pwrx(i8* %90, i64 %91, %struct.intel_pt_pkt* %92)
  store i32 %93, i32* %4, align 4
  br label %109

94:                                               ; preds = %24
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %98 = call i32 @intel_pt_get_bbp(i8* %95, i64 %96, %struct.intel_pt_pkt* %97)
  store i32 %98, i32* %4, align 4
  br label %109

99:                                               ; preds = %24
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %102 = call i32 @intel_pt_get_bep(i64 %100, %struct.intel_pt_pkt* %101)
  store i32 %102, i32* %4, align 4
  br label %109

103:                                              ; preds = %24
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %106 = call i32 @intel_pt_get_bep_ip(i64 %104, %struct.intel_pt_pkt* %105)
  store i32 %106, i32* %4, align 4
  br label %109

107:                                              ; preds = %24
  %108 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %103, %99, %94, %89, %84, %79, %76, %73, %68, %63, %60, %55, %52, %47, %42, %39, %34, %29, %19, %10
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @intel_pt_get_ptwrite(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_long_tnt(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_pip(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_tracestop(%struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_cbr(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_vmcs(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_ovf(%struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_psb(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_psbend(%struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_tma(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_3byte(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_exstop(%struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_exstop_ip(%struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_mwait(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_pwre(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_pwrx(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_bbp(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_bep(i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_bep_ip(i64, %struct.intel_pt_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
