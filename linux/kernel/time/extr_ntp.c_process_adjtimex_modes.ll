; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_process_adjtimex_modes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_process_adjtimex_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kernel_timex = type { i32, i32, i32, i32, i32, i32, i32 }

@ADJ_STATUS = common dso_local global i32 0, align 4
@ADJ_NANO = common dso_local global i32 0, align 4
@STA_NANO = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@ADJ_MICRO = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@PPM_SCALE = common dso_local global i32 0, align 4
@time_freq = common dso_local global i32 0, align 4
@MAXFREQ_SCALED = common dso_local global i64 0, align 8
@ADJ_MAXERROR = common dso_local global i32 0, align 4
@time_maxerror = common dso_local global i32 0, align 4
@ADJ_ESTERROR = common dso_local global i32 0, align 4
@time_esterror = common dso_local global i32 0, align 4
@ADJ_TIMECONST = common dso_local global i32 0, align 4
@time_constant = common dso_local global i32 0, align 4
@MAXTC = common dso_local global i64 0, align 8
@ADJ_TAI = common dso_local global i32 0, align 4
@MAX_TAI_OFFSET = common dso_local global i64 0, align 8
@ADJ_OFFSET = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@tick_usec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__kernel_timex*, i64*)* @process_adjtimex_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_adjtimex_modes(%struct.__kernel_timex* %0, i64* %1) #0 {
  %3 = alloca %struct.__kernel_timex*, align 8
  %4 = alloca i64*, align 8
  store %struct.__kernel_timex* %0, %struct.__kernel_timex** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %6 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ADJ_STATUS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %13 = call i32 @process_adj_status(%struct.__kernel_timex* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %16 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ADJ_NANO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @STA_NANO, align 4
  %23 = load i32, i32* @time_status, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @time_status, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %27 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADJ_MICRO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @STA_NANO, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @time_status, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* @time_status, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %39 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADJ_FREQUENCY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %46 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PPM_SCALE, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* @time_freq, align 4
  %50 = load i32, i32* @time_freq, align 4
  %51 = load i64, i64* @MAXFREQ_SCALED, align 8
  %52 = call i32 @min(i32 %50, i64 %51)
  store i32 %52, i32* @time_freq, align 4
  %53 = load i32, i32* @time_freq, align 4
  %54 = load i64, i64* @MAXFREQ_SCALED, align 8
  %55 = sub nsw i64 0, %54
  %56 = call i32 @max(i32 %53, i64 %55)
  store i32 %56, i32* @time_freq, align 4
  %57 = load i32, i32* @time_freq, align 4
  %58 = call i32 @pps_set_freq(i32 %57)
  br label %59

59:                                               ; preds = %44, %37
  %60 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %61 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ADJ_MAXERROR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %68 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* @time_maxerror, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %72 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ADJ_ESTERROR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %79 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* @time_esterror, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %83 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ADJ_TIMECONST, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %90 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* @time_constant, align 4
  %92 = load i32, i32* @time_status, align 4
  %93 = load i32, i32* @STA_NANO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @time_constant, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* @time_constant, align 4
  br label %99

99:                                               ; preds = %96, %88
  %100 = load i32, i32* @time_constant, align 4
  %101 = load i64, i64* @MAXTC, align 8
  %102 = call i32 @min(i32 %100, i64 %101)
  store i32 %102, i32* @time_constant, align 4
  %103 = load i32, i32* @time_constant, align 4
  %104 = call i32 @max(i32 %103, i64 0)
  store i32 %104, i32* @time_constant, align 4
  br label %105

105:                                              ; preds = %99, %81
  %106 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %107 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ADJ_TAI, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %114 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %119 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @MAX_TAI_OFFSET, align 8
  %123 = icmp sle i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %126 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %4, align 8
  store i64 %128, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %117, %112, %105
  %131 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %132 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ADJ_OFFSET, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %139 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ntp_update_offset(i32 %140)
  br label %142

142:                                              ; preds = %137, %130
  %143 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %144 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ADJ_TICK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %151 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* @tick_usec, align 4
  br label %153

153:                                              ; preds = %149, %142
  %154 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %155 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ADJ_TICK, align 4
  %158 = load i32, i32* @ADJ_FREQUENCY, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @ADJ_OFFSET, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %156, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %153
  %165 = call i32 (...) @ntp_update_frequency()
  br label %166

166:                                              ; preds = %164, %153
  ret void
}

declare dso_local i32 @process_adj_status(%struct.__kernel_timex*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @pps_set_freq(i32) #1

declare dso_local i32 @ntp_update_offset(i32) #1

declare dso_local i32 @ntp_update_frequency(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
