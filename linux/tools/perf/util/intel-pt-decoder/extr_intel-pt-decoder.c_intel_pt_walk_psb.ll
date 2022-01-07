; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_psb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@__fallthrough = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ERROR: Unexpected packet\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Setting IP\00", align 1
@BIT63 = common dso_local global i32 0, align 4
@INTEL_PT_STATE_ERR4 = common dso_local global i32 0, align 4
@INTEL_PT_STATE_ERR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_walk_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_psb(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %5 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %6 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %1, %118
  %8 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %9 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %119

13:                                               ; preds = %7
  %14 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %15 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %117 [
    i32 134, label %18
    i32 133, label %22
    i32 135, label %22
    i32 139, label %22
    i32 138, label %22
    i32 152, label %22
    i32 151, label %22
    i32 145, label %22
    i32 137, label %22
    i32 136, label %22
    i32 158, label %22
    i32 155, label %22
    i32 157, label %22
    i32 156, label %22
    i32 150, label %26
    i32 146, label %47
    i32 129, label %50
    i32 132, label %53
    i32 153, label %56
    i32 154, label %59
    i32 142, label %62
    i32 148, label %72
    i32 147, label %79
    i32 130, label %82
    i32 131, label %90
    i32 159, label %109
    i32 144, label %112
    i32 140, label %115
    i32 141, label %116
    i32 128, label %116
    i32 149, label %116
    i32 143, label %116
  ]

18:                                               ; preds = %13
  %19 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %20 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @__fallthrough, align 4
  br label %22

22:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %18
  %23 = call i32 @intel_pt_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %119

26:                                               ; preds = %13
  %27 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %28 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %30 = call i32 @intel_pt_have_ip(%struct.intel_pt_decoder* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %34 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %37 = call i32 @intel_pt_set_ip(%struct.intel_pt_decoder* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %42 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @intel_pt_log_to(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %32
  br label %46

46:                                               ; preds = %45, %26
  br label %118

47:                                               ; preds = %13
  %48 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %49 = call i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder* %48)
  br label %118

50:                                               ; preds = %13
  %51 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %52 = call i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder* %51)
  br label %118

53:                                               ; preds = %13
  %54 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %55 = call i32 @intel_pt_calc_tma(%struct.intel_pt_decoder* %54)
  br label %118

56:                                               ; preds = %13
  %57 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %58 = call i32 @intel_pt_calc_cyc_timestamp(%struct.intel_pt_decoder* %57)
  br label %118

59:                                               ; preds = %13
  %60 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %61 = call i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder* %60)
  br label %118

62:                                               ; preds = %13
  %63 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %64 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BIT63, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %71 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %118

72:                                               ; preds = %13
  %73 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %74 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %78 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  br label %118

79:                                               ; preds = %13
  %80 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %81 = call i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder* %80)
  br label %118

82:                                               ; preds = %13
  %83 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %84 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %86 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %88 = call i32 @intel_pt_clear_tx_flags(%struct.intel_pt_decoder* %87)
  %89 = load i32, i32* @__fallthrough, align 4
  br label %90

90:                                               ; preds = %13, %82
  %91 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %92 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %91, i32 0, i32 5
  store i32 0, i32* %92, align 4
  %93 = call i32 @intel_pt_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %95 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @INTEL_PT_STATE_ERR4, align 4
  %100 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %101 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  br label %106

102:                                              ; preds = %90
  %103 = load i32, i32* @INTEL_PT_STATE_ERR3, align 4
  %104 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %105 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %119

109:                                              ; preds = %13
  %110 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %111 = call i32 @intel_pt_bug(%struct.intel_pt_decoder* %110)
  store i32 %111, i32* %3, align 4
  br label %119

112:                                              ; preds = %13
  %113 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %114 = call i32 @intel_pt_overflow(%struct.intel_pt_decoder* %113)
  store i32 %114, i32* %3, align 4
  br label %119

115:                                              ; preds = %13
  store i32 0, i32* %3, align 4
  br label %119

116:                                              ; preds = %13, %13, %13, %13
  br label %117

117:                                              ; preds = %13, %116
  br label %118

118:                                              ; preds = %117, %79, %72, %62, %59, %56, %53, %50, %47, %46
  br label %7

119:                                              ; preds = %115, %112, %109, %106, %22, %12
  %120 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %121 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log(i8*) #1

declare dso_local i32 @intel_pt_have_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_set_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log_to(i8*, i32) #1

declare dso_local i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tma(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cyc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_clear_tx_flags(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_bug(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_overflow(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
