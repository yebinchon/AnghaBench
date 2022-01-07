; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_to_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_walk_to_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INTEL_PT_TRACE_END = common dso_local global i32 0, align 4
@INTEL_PT_TRACE_BEGIN = common dso_local global i32 0, align 4
@BIT63 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_walk_to_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_to_ip(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  br label %5

5:                                                ; preds = %1, %171
  %6 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %7 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %172

12:                                               ; preds = %5
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %170 [
    i32 134, label %17
    i32 133, label %41
    i32 135, label %65
    i32 150, label %81
    i32 146, label %95
    i32 129, label %98
    i32 132, label %101
    i32 153, label %104
    i32 154, label %107
    i32 142, label %110
    i32 148, label %120
    i32 147, label %127
    i32 144, label %130
    i32 159, label %133
    i32 130, label %136
    i32 141, label %145
    i32 131, label %169
    i32 140, label %169
    i32 128, label %169
    i32 149, label %169
    i32 143, label %169
    i32 139, label %169
    i32 138, label %169
    i32 152, label %169
    i32 151, label %169
    i32 145, label %169
    i32 137, label %169
    i32 136, label %169
    i32 158, label %169
    i32 155, label %169
    i32 157, label %169
    i32 156, label %169
  ]

17:                                               ; preds = %12
  %18 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %23 = call i32 @intel_pt_have_ip(%struct.intel_pt_decoder* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %27 = call i32 @intel_pt_set_ip(%struct.intel_pt_decoder* %26)
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %171

34:                                               ; preds = %28
  %35 = load i32, i32* @INTEL_PT_TRACE_END, align 4
  %36 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %172

41:                                               ; preds = %12
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %45 = call i32 @intel_pt_mtc_cyc_cnt_pge(%struct.intel_pt_decoder* %44)
  %46 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %47 = call i32 @intel_pt_have_ip(%struct.intel_pt_decoder* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %51 = call i32 @intel_pt_set_ip(%struct.intel_pt_decoder* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %54 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %171

58:                                               ; preds = %52
  %59 = load i32, i32* @INTEL_PT_TRACE_BEGIN, align 4
  %60 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %172

65:                                               ; preds = %12
  %66 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %67 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %69 = call i32 @intel_pt_have_ip(%struct.intel_pt_decoder* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %73 = call i32 @intel_pt_set_ip(%struct.intel_pt_decoder* %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %76 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %171

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %172

81:                                               ; preds = %12
  %82 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %83 = call i32 @intel_pt_have_ip(%struct.intel_pt_decoder* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %87 = call i32 @intel_pt_set_ip(%struct.intel_pt_decoder* %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %90 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %172

94:                                               ; preds = %88
  br label %171

95:                                               ; preds = %12
  %96 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %97 = call i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder* %96)
  br label %171

98:                                               ; preds = %12
  %99 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %100 = call i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder* %99)
  br label %171

101:                                              ; preds = %12
  %102 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %103 = call i32 @intel_pt_calc_tma(%struct.intel_pt_decoder* %102)
  br label %171

104:                                              ; preds = %12
  %105 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %106 = call i32 @intel_pt_calc_cyc_timestamp(%struct.intel_pt_decoder* %105)
  br label %171

107:                                              ; preds = %12
  %108 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %109 = call i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder* %108)
  br label %171

110:                                              ; preds = %12
  %111 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %112 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %111, i32 0, i32 10
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BIT63, align 4
  %116 = sub nsw i32 %115, 1
  %117 = and i32 %114, %116
  %118 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %119 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %171

120:                                              ; preds = %12
  %121 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %122 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %126 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %171

127:                                              ; preds = %12
  %128 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %129 = call i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder* %128)
  br label %171

130:                                              ; preds = %12
  %131 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %132 = call i32 @intel_pt_overflow(%struct.intel_pt_decoder* %131)
  store i32 %132, i32* %2, align 4
  br label %172

133:                                              ; preds = %12
  %134 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %135 = call i32 @intel_pt_bug(%struct.intel_pt_decoder* %134)
  store i32 %135, i32* %2, align 4
  br label %172

136:                                              ; preds = %12
  %137 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %138 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %140 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  %141 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %142 = call i32 @intel_pt_clear_tx_flags(%struct.intel_pt_decoder* %141)
  %143 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %144 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %143, i32 0, i32 4
  store i32 0, i32* %144, align 4
  br label %171

145:                                              ; preds = %12
  %146 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %147 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %146, i32 0, i32 9
  store i32 0, i32* %147, align 4
  %148 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %149 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %148, i32 0, i32 5
  store i32 1, i32* %149, align 4
  %150 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %151 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %150, i32 0, i32 8
  %152 = call i32 @intel_pt_clear_stack(i32* %151)
  %153 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %154 = call i32 @intel_pt_walk_psb(%struct.intel_pt_decoder* %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %172

159:                                              ; preds = %145
  %160 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %161 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %166 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  store i32 0, i32* %2, align 4
  br label %172

168:                                              ; preds = %159
  br label %171

169:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  br label %170

170:                                              ; preds = %12, %169
  br label %171

171:                                              ; preds = %170, %168, %136, %127, %120, %110, %107, %104, %101, %98, %95, %94, %79, %57, %33
  br label %5

172:                                              ; preds = %164, %157, %133, %130, %93, %80, %58, %34, %10
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_have_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_set_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_mtc_cyc_cnt_pge(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_mtc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_tma(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cyc_timestamp(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_calc_cbr(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_overflow(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_bug(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_clear_tx_flags(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_clear_stack(i32*) #1

declare dso_local i32 @intel_pt_walk_psb(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
