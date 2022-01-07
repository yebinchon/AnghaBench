; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_htcp.c_measure_achieved_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_htcp.c_measure_achieved_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i64, i64 }
%struct.inet_connection_sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.htcp = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@tcp_jiffies32 = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@use_bandwidth_switch = common dso_local global i32 0, align 4
@TCPF_CA_Open = common dso_local global i32 0, align 4
@TCPF_CA_Disorder = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @measure_achieved_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_achieved_throughput(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.htcp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %10)
  store %struct.inet_connection_sock* %11, %struct.inet_connection_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.htcp* @inet_csk_ca(%struct.sock* %14)
  store %struct.htcp* %15, %struct.htcp** %7, align 8
  %16 = load i32, i32* @tcp_jiffies32, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TCP_CA_Open, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %24 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.htcp*, %struct.htcp** %7, align 8
  %27 = getelementptr inbounds %struct.htcp, %struct.htcp* %26, i32 0, i32 7
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %30 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %36 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @usecs_to_jiffies(i64 %37)
  %39 = call i32 @measure_rtt(%struct.sock* %34, i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @use_bandwidth_switch, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %169

44:                                               ; preds = %40
  %45 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %46 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @TCPF_CA_Open, align 4
  %50 = load i32, i32* @TCPF_CA_Disorder, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load %struct.htcp*, %struct.htcp** %7, align 8
  %56 = getelementptr inbounds %struct.htcp, %struct.htcp* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.htcp*, %struct.htcp** %7, align 8
  %59 = getelementptr inbounds %struct.htcp, %struct.htcp* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %169

60:                                               ; preds = %44
  %61 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %62 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.htcp*, %struct.htcp** %7, align 8
  %65 = getelementptr inbounds %struct.htcp, %struct.htcp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load %struct.htcp*, %struct.htcp** %7, align 8
  %71 = getelementptr inbounds %struct.htcp, %struct.htcp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.htcp*, %struct.htcp** %7, align 8
  %77 = getelementptr inbounds %struct.htcp, %struct.htcp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 7
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %60
  br label %83

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82, %81
  %84 = phi i32 [ %79, %81 ], [ 1, %82 ]
  %85 = sub nsw i32 %75, %84
  %86 = icmp sge i32 %72, %85
  br i1 %86, label %87, label %169

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.htcp*, %struct.htcp** %7, align 8
  %90 = getelementptr inbounds %struct.htcp, %struct.htcp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = load %struct.htcp*, %struct.htcp** %7, align 8
  %94 = getelementptr inbounds %struct.htcp, %struct.htcp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %92, %95
  br i1 %96, label %97, label %169

97:                                               ; preds = %87
  %98 = load %struct.htcp*, %struct.htcp** %7, align 8
  %99 = getelementptr inbounds %struct.htcp, %struct.htcp* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %169

102:                                              ; preds = %97
  %103 = load %struct.htcp*, %struct.htcp** %7, align 8
  %104 = getelementptr inbounds %struct.htcp, %struct.htcp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.htcp*, %struct.htcp** %7, align 8
  %110 = getelementptr inbounds %struct.htcp, %struct.htcp* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = sdiv i32 %107, %112
  store i32 %113, i32* %9, align 4
  %114 = load %struct.htcp*, %struct.htcp** %7, align 8
  %115 = call i32 @htcp_ccount(%struct.htcp* %114)
  %116 = icmp sle i32 %115, 3
  br i1 %116, label %117, label %125

117:                                              ; preds = %102
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.htcp*, %struct.htcp** %7, align 8
  %120 = getelementptr inbounds %struct.htcp, %struct.htcp* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.htcp*, %struct.htcp** %7, align 8
  %122 = getelementptr inbounds %struct.htcp, %struct.htcp* %121, i32 0, i32 5
  store i32 %118, i32* %122, align 4
  %123 = load %struct.htcp*, %struct.htcp** %7, align 8
  %124 = getelementptr inbounds %struct.htcp, %struct.htcp* %123, i32 0, i32 4
  store i32 %118, i32* %124, align 8
  br label %163

125:                                              ; preds = %102
  %126 = load %struct.htcp*, %struct.htcp** %7, align 8
  %127 = getelementptr inbounds %struct.htcp, %struct.htcp* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 3, %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %129, %130
  %132 = sdiv i32 %131, 4
  %133 = load %struct.htcp*, %struct.htcp** %7, align 8
  %134 = getelementptr inbounds %struct.htcp, %struct.htcp* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load %struct.htcp*, %struct.htcp** %7, align 8
  %136 = getelementptr inbounds %struct.htcp, %struct.htcp* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.htcp*, %struct.htcp** %7, align 8
  %139 = getelementptr inbounds %struct.htcp, %struct.htcp* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %125
  %143 = load %struct.htcp*, %struct.htcp** %7, align 8
  %144 = getelementptr inbounds %struct.htcp, %struct.htcp* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.htcp*, %struct.htcp** %7, align 8
  %147 = getelementptr inbounds %struct.htcp, %struct.htcp* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %125
  %149 = load %struct.htcp*, %struct.htcp** %7, align 8
  %150 = getelementptr inbounds %struct.htcp, %struct.htcp* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.htcp*, %struct.htcp** %7, align 8
  %153 = getelementptr inbounds %struct.htcp, %struct.htcp* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load %struct.htcp*, %struct.htcp** %7, align 8
  %158 = getelementptr inbounds %struct.htcp, %struct.htcp* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.htcp*, %struct.htcp** %7, align 8
  %161 = getelementptr inbounds %struct.htcp, %struct.htcp* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %148
  br label %163

163:                                              ; preds = %162, %117
  %164 = load %struct.htcp*, %struct.htcp** %7, align 8
  %165 = getelementptr inbounds %struct.htcp, %struct.htcp* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.htcp*, %struct.htcp** %7, align 8
  %168 = getelementptr inbounds %struct.htcp, %struct.htcp* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %43, %54, %163, %97, %87, %83
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.htcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @measure_rtt(%struct.sock*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local i32 @htcp_ccount(%struct.htcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
