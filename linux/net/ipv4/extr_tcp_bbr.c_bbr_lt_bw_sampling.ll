; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_lt_bw_sampling.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_lt_bw_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32, i64 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.bbr = type { i64, i64, i32, i32, i32, i32, i64, i64 }

@BBR_PROBE_BW = common dso_local global i64 0, align 8
@bbr_lt_bw_max_rtts = common dso_local global i64 0, align 8
@bbr_lt_intvl_min_rtts = common dso_local global i32 0, align 4
@BBR_SCALE = common dso_local global i32 0, align 4
@bbr_lt_loss_thresh = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@BW_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_lt_bw_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_lt_bw_sampling(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.bbr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.bbr* @inet_csk_ca(%struct.sock* %13)
  store %struct.bbr* %14, %struct.bbr** %6, align 8
  %15 = load %struct.bbr*, %struct.bbr** %6, align 8
  %16 = getelementptr inbounds %struct.bbr, %struct.bbr* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.bbr*, %struct.bbr** %6, align 8
  %21 = getelementptr inbounds %struct.bbr, %struct.bbr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BBR_PROBE_BW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.bbr*, %struct.bbr** %6, align 8
  %27 = getelementptr inbounds %struct.bbr, %struct.bbr* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.bbr*, %struct.bbr** %6, align 8
  %32 = getelementptr inbounds %struct.bbr, %struct.bbr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* @bbr_lt_bw_max_rtts, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @bbr_reset_lt_bw_sampling(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 @bbr_reset_probe_bw_mode(%struct.sock* %40)
  br label %42

42:                                               ; preds = %37, %30, %25, %19
  br label %162

43:                                               ; preds = %2
  %44 = load %struct.bbr*, %struct.bbr** %6, align 8
  %45 = getelementptr inbounds %struct.bbr, %struct.bbr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %50 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %162

54:                                               ; preds = %48
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call i32 @bbr_reset_lt_bw_sampling_interval(%struct.sock* %55)
  %57 = load %struct.bbr*, %struct.bbr** %6, align 8
  %58 = getelementptr inbounds %struct.bbr, %struct.bbr* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %43
  %60 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %61 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = call i32 @bbr_reset_lt_bw_sampling(%struct.sock* %65)
  br label %162

67:                                               ; preds = %59
  %68 = load %struct.bbr*, %struct.bbr** %6, align 8
  %69 = getelementptr inbounds %struct.bbr, %struct.bbr* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.bbr*, %struct.bbr** %6, align 8
  %74 = getelementptr inbounds %struct.bbr, %struct.bbr* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.bbr*, %struct.bbr** %6, align 8
  %79 = getelementptr inbounds %struct.bbr, %struct.bbr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @bbr_lt_intvl_min_rtts, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %162

85:                                               ; preds = %77
  %86 = load %struct.bbr*, %struct.bbr** %6, align 8
  %87 = getelementptr inbounds %struct.bbr, %struct.bbr* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @bbr_lt_intvl_min_rtts, align 4
  %90 = mul nsw i32 4, %89
  %91 = sext i32 %90 to i64
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call i32 @bbr_reset_lt_bw_sampling(%struct.sock* %94)
  br label %162

96:                                               ; preds = %85
  %97 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %98 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %162

102:                                              ; preds = %96
  %103 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %104 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bbr*, %struct.bbr** %6, align 8
  %107 = getelementptr inbounds %struct.bbr, %struct.bbr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sub i32 %105, %108
  store i32 %109, i32* %7, align 4
  %110 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %111 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.bbr*, %struct.bbr** %6, align 8
  %114 = getelementptr inbounds %struct.bbr, %struct.bbr* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = sub i32 %112, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %102
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @BBR_SCALE, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* @bbr_lt_loss_thresh, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul i32 %123, %124
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %102
  br label %162

128:                                              ; preds = %119
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @USEC_PER_MSEC, align 4
  %133 = call i32 @div_u64(i32 %131, i32 %132)
  %134 = load %struct.bbr*, %struct.bbr** %6, align 8
  %135 = getelementptr inbounds %struct.bbr, %struct.bbr* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %133, %136
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %162

141:                                              ; preds = %128
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @USEC_PER_MSEC, align 4
  %144 = udiv i32 -1, %143
  %145 = icmp uge i32 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.sock*, %struct.sock** %3, align 8
  %148 = call i32 @bbr_reset_lt_bw_sampling(%struct.sock* %147)
  br label %162

149:                                              ; preds = %141
  %150 = load i32, i32* @USEC_PER_MSEC, align 4
  %151 = load i32, i32* %10, align 4
  %152 = mul i32 %151, %150
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @BW_UNIT, align 4
  %155 = mul nsw i32 %153, %154
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @do_div(i32 %156, i32 %157)
  %159 = load %struct.sock*, %struct.sock** %3, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @bbr_lt_bw_interval_done(%struct.sock* %159, i32 %160)
  br label %162

162:                                              ; preds = %149, %146, %140, %127, %101, %93, %84, %64, %53, %42
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @bbr_reset_lt_bw_sampling(%struct.sock*) #1

declare dso_local i32 @bbr_reset_probe_bw_mode(%struct.sock*) #1

declare dso_local i32 @bbr_reset_lt_bw_sampling_interval(%struct.sock*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @bbr_lt_bw_interval_done(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
