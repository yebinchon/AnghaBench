; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_lp.c_tcp_lp_pkts_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_lp.c_tcp_lp_pkts_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i64 }
%struct.tcp_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lp = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LP_WITHIN_INF = common dso_local global i32 0, align 4
@LP_WITHIN_THR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TCP-LP: %05o|%5u|%5u|%15u|%15u|%15u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @tcp_lp_pkts_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lp_pkts_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.lp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.lp* @inet_csk_ca(%struct.sock* %11)
  store %struct.lp* %12, %struct.lp** %6, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %14 = call i32 @tcp_time_stamp(%struct.tcp_sock* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %16 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %22 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @tcp_lp_rtt_sample(%struct.sock* %20, i64 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %26, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 3, %36
  %38 = load %struct.lp*, %struct.lp** %6, align 8
  %39 = getelementptr inbounds %struct.lp, %struct.lp* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.lp*, %struct.lp** %6, align 8
  %42 = getelementptr inbounds %struct.lp, %struct.lp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.lp*, %struct.lp** %6, align 8
  %48 = getelementptr inbounds %struct.lp, %struct.lp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = load %struct.lp*, %struct.lp** %6, align 8
  %52 = getelementptr inbounds %struct.lp, %struct.lp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* @LP_WITHIN_INF, align 4
  %57 = load %struct.lp*, %struct.lp** %6, align 8
  %58 = getelementptr inbounds %struct.lp, %struct.lp* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %68

61:                                               ; preds = %45, %40
  %62 = load i32, i32* @LP_WITHIN_INF, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.lp*, %struct.lp** %6, align 8
  %65 = getelementptr inbounds %struct.lp, %struct.lp* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.lp*, %struct.lp** %6, align 8
  %70 = getelementptr inbounds %struct.lp, %struct.lp* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 3
  %73 = load %struct.lp*, %struct.lp** %6, align 8
  %74 = getelementptr inbounds %struct.lp, %struct.lp* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.lp*, %struct.lp** %6, align 8
  %77 = getelementptr inbounds %struct.lp, %struct.lp* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lp*, %struct.lp** %6, align 8
  %80 = getelementptr inbounds %struct.lp, %struct.lp* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = mul nsw i32 15, %82
  %84 = sdiv i32 %83, 100
  %85 = add nsw i32 %75, %84
  %86 = icmp slt i32 %72, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load i32, i32* @LP_WITHIN_THR, align 4
  %89 = load %struct.lp*, %struct.lp** %6, align 8
  %90 = getelementptr inbounds %struct.lp, %struct.lp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %68
  %94 = load i32, i32* @LP_WITHIN_THR, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.lp*, %struct.lp** %6, align 8
  %97 = getelementptr inbounds %struct.lp, %struct.lp* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.lp*, %struct.lp** %6, align 8
  %102 = getelementptr inbounds %struct.lp, %struct.lp* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.lp*, %struct.lp** %6, align 8
  %108 = getelementptr inbounds %struct.lp, %struct.lp* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.lp*, %struct.lp** %6, align 8
  %111 = getelementptr inbounds %struct.lp, %struct.lp* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lp*, %struct.lp** %6, align 8
  %114 = getelementptr inbounds %struct.lp, %struct.lp* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.lp*, %struct.lp** %6, align 8
  %117 = getelementptr inbounds %struct.lp, %struct.lp* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 3
  %120 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %112, i32 %115, i32 %119)
  %121 = load %struct.lp*, %struct.lp** %6, align 8
  %122 = getelementptr inbounds %struct.lp, %struct.lp* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @LP_WITHIN_THR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %100
  br label %168

128:                                              ; preds = %100
  %129 = load %struct.lp*, %struct.lp** %6, align 8
  %130 = getelementptr inbounds %struct.lp, %struct.lp* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 3
  %133 = load %struct.lp*, %struct.lp** %6, align 8
  %134 = getelementptr inbounds %struct.lp, %struct.lp* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.lp*, %struct.lp** %6, align 8
  %136 = getelementptr inbounds %struct.lp, %struct.lp* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 2
  %139 = load %struct.lp*, %struct.lp** %6, align 8
  %140 = getelementptr inbounds %struct.lp, %struct.lp* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.lp*, %struct.lp** %6, align 8
  %142 = getelementptr inbounds %struct.lp, %struct.lp* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 2
  %145 = load %struct.lp*, %struct.lp** %6, align 8
  %146 = getelementptr inbounds %struct.lp, %struct.lp* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 4
  %147 = load %struct.lp*, %struct.lp** %6, align 8
  %148 = getelementptr inbounds %struct.lp, %struct.lp* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @LP_WITHIN_INF, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %128
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %155 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  br label %164

156:                                              ; preds = %128
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %158 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = lshr i32 %159, 1
  %161 = call i32 @max(i32 %160, i32 1)
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.lp*, %struct.lp** %6, align 8
  %167 = getelementptr inbounds %struct.lp, %struct.lp* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %127
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.lp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_time_stamp(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_lp_rtt_sample(%struct.sock*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
