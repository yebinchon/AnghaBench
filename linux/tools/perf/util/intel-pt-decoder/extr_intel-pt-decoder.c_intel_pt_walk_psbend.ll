; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_psbend.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_psbend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ERROR: Unexpected packet\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BIT63 = common dso_local global i32 0, align 4
@INTEL_PT_PERIOD_MTC = common dso_local global i32 0, align 4
@INTEL_PT_INSTRUCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_walk_psbend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_psbend(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %4 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %5 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %1, %86
  %7 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %8 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %87

12:                                               ; preds = %6
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %85 [
    i32 140, label %17
    i32 134, label %18
    i32 133, label %18
    i32 135, label %18
    i32 131, label %18
    i32 130, label %18
    i32 159, label %18
    i32 141, label %18
    i32 139, label %18
    i32 138, label %18
    i32 152, label %18
    i32 151, label %18
    i32 145, label %18
    i32 137, label %18
    i32 136, label %18
    i32 158, label %18
    i32 155, label %18
    i32 157, label %18
    i32 156, label %18
    i32 144, label %24
    i32 129, label %27
    i32 132, label %30
    i32 154, label %33
    i32 148, label %36
    i32 142, label %43
    i32 150, label %53
    i32 147, label %65
    i32 146, label %68
    i32 153, label %84
    i32 128, label %84
    i32 149, label %84
    i32 143, label %84
  ]

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %87

18:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %19 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %20 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = call i32 @intel_pt_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %87

24:                                               ; preds = %12
  %25 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %26 = call i32 @intel_pt_overflow(%struct.intel_pt_decoder* %25)
  store i32 %26, i32* %3, align 4
  br label %87

27:                                               ; preds = %12
  %28 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %29 = call i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder* %28)
  br label %86

30:                                               ; preds = %12
  %31 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %32 = call i32 @intel_pt_calc_tma(%struct.intel_pt_decoder* %31)
  br label %86

33:                                               ; preds = %12
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %35 = call i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder* %34)
  br label %86

36:                                               ; preds = %12
  %37 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %38 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %42 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %86

43:                                               ; preds = %12
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %45 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BIT63, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %52 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %86

53:                                               ; preds = %12
  %54 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %55 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %54, i32 0, i32 4
  store i32 1, i32* %55, align 4
  %56 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %57 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %63 = call i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder* %62)
  br label %64

64:                                               ; preds = %61, %53
  br label %86

65:                                               ; preds = %12
  %66 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %67 = call i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder* %66)
  br label %86

68:                                               ; preds = %12
  %69 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %70 = call i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder* %69)
  %71 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %72 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @INTEL_PT_PERIOD_MTC, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i32, i32* @INTEL_PT_INSTRUCTION, align 4
  %78 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %79 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %68
  br label %86

84:                                               ; preds = %12, %12, %12, %12
  br label %85

85:                                               ; preds = %12, %84
  br label %86

86:                                               ; preds = %85, %83, %65, %64, %43, %36, %33, %30, %27
  br label %6

87:                                               ; preds = %24, %18, %17, %11
  %88 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %89 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log(i8*) #1

declare dso_local i32 @intel_pt_overflow(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tma(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_set_last_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
