; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_do_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_do_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_TIP = common dso_local global i32 0, align 4
@INTEL_PT_TIP_PGE = common dso_local global i32 0, align 4
@INTEL_PT_TIP_PGD = common dso_local global i32 0, align 4
@INTEL_PT_FUP = common dso_local global i32 0, align 4
@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*, i32)* @intel_pt_do_get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_do_get_packet(i8* %0, i64 %1, %struct.intel_pt_pkt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_pt_pkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %12 = call i32 @memset(%struct.intel_pt_pkt* %11, i32 0, i32 4)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %16, i32* %5, align 4
  br label %130

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %44 [
    i32 128, label %23
    i32 130, label %24
    i32 129, label %34
  ]

23:                                               ; preds = %17
  br label %45

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %32 = call i32 @intel_pt_get_bip_4(i8* %29, i64 %30, %struct.intel_pt_pkt* %31)
  store i32 %32, i32* %5, align 4
  br label %130

33:                                               ; preds = %24
  br label %45

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %42 = call i32 @intel_pt_get_bip_8(i8* %39, i64 %40, %struct.intel_pt_pkt* %41)
  store i32 %42, i32* %5, align 4
  br label %130

43:                                               ; preds = %34
  br label %45

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %43, %33, %23
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @BIT(i32 0)
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %55 = call i32 @intel_pt_get_pad(%struct.intel_pt_pkt* %54)
  store i32 %55, i32* %5, align 4
  br label %130

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %63 = call i32 @intel_pt_get_ext(i8* %60, i64 %61, %struct.intel_pt_pkt* %62)
  store i32 %63, i32* %5, align 4
  br label %130

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %67 = call i32 @intel_pt_get_short_tnt(i32 %65, %struct.intel_pt_pkt* %66)
  store i32 %67, i32* %5, align 4
  br label %130

68:                                               ; preds = %45
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %77 = call i32 @intel_pt_get_cyc(i32 %73, i8* %74, i64 %75, %struct.intel_pt_pkt* %76)
  store i32 %77, i32* %5, align 4
  br label %130

78:                                               ; preds = %68
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 31
  switch i32 %80, label %128 [
    i32 13, label %81
    i32 17, label %88
    i32 1, label %95
    i32 29, label %102
    i32 25, label %109
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* @INTEL_PT_TIP, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %87 = call i32 @intel_pt_get_ip(i32 %82, i32 %83, i8* %84, i64 %85, %struct.intel_pt_pkt* %86)
  store i32 %87, i32* %5, align 4
  br label %130

88:                                               ; preds = %78
  %89 = load i32, i32* @INTEL_PT_TIP_PGE, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %94 = call i32 @intel_pt_get_ip(i32 %89, i32 %90, i8* %91, i64 %92, %struct.intel_pt_pkt* %93)
  store i32 %94, i32* %5, align 4
  br label %130

95:                                               ; preds = %78
  %96 = load i32, i32* @INTEL_PT_TIP_PGD, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %101 = call i32 @intel_pt_get_ip(i32 %96, i32 %97, i8* %98, i64 %99, %struct.intel_pt_pkt* %100)
  store i32 %101, i32* %5, align 4
  br label %130

102:                                              ; preds = %78
  %103 = load i32, i32* @INTEL_PT_FUP, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %108 = call i32 @intel_pt_get_ip(i32 %103, i32 %104, i8* %105, i64 %106, %struct.intel_pt_pkt* %107)
  store i32 %108, i32* %5, align 4
  br label %130

109:                                              ; preds = %78
  %110 = load i32, i32* %10, align 4
  switch i32 %110, label %126 [
    i32 153, label %111
    i32 25, label %116
    i32 89, label %121
  ]

111:                                              ; preds = %109
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %115 = call i32 @intel_pt_get_mode(i8* %112, i64 %113, %struct.intel_pt_pkt* %114)
  store i32 %115, i32* %5, align 4
  br label %130

116:                                              ; preds = %109
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %120 = call i32 @intel_pt_get_tsc(i8* %117, i64 %118, %struct.intel_pt_pkt* %119)
  store i32 %120, i32* %5, align 4
  br label %130

121:                                              ; preds = %109
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %8, align 8
  %125 = call i32 @intel_pt_get_mtc(i8* %122, i64 %123, %struct.intel_pt_pkt* %124)
  store i32 %125, i32* %5, align 4
  br label %130

126:                                              ; preds = %109
  %127 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %127, i32* %5, align 4
  br label %130

128:                                              ; preds = %78
  %129 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %126, %121, %116, %111, %102, %95, %88, %81, %72, %64, %59, %53, %38, %28, %15
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @memset(%struct.intel_pt_pkt*, i32, i32) #1

declare dso_local i32 @intel_pt_get_bip_4(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_bip_8(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @intel_pt_get_pad(%struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_ext(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_short_tnt(i32, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_cyc(i32, i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_ip(i32, i32, i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_mode(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_tsc(i8*, i64, %struct.intel_pt_pkt*) #1

declare dso_local i32 @intel_pt_get_mtc(i8*, i64, %struct.intel_pt_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
