; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_check_seqno.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_check_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64 }
%struct.dccp_sock = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@DCCP_PKT_SYNC = common dso_local global i64 0, align 8
@DCCP_PKT_SYNCACK = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSEREQ = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSE = common dso_local global i64 0, align 8
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@sysctl_dccp_sync_ratelimit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [154 x i8] c"Step 6 failed for %s packet, (LSWL(%llu) <= P.seqno(%llu) <= S.SWH(%llu)) and (P.ackno %s or LAWL(%llu) <= P.ackno(%llu) <= S.AWH(%llu), sending SYNC...\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"doesn't exist\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_check_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_check_seqno(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %13)
  store %struct.dccp_hdr* %14, %struct.dccp_hdr** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %15)
  store %struct.dccp_sock* %16, %struct.dccp_sock** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DCCP_PKT_SYNCACK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30, %2
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %39 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %42 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @between48(i64 %37, i64 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %48 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @dccp_delta_seqno(i64 %49, i64 %50)
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @dccp_update_gsr(%struct.sock* %54, i64 %55)
  br label %58

57:                                               ; preds = %46, %36
  store i32 -1, i32* %3, align 4
  br label %186

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %61 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %64 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %67 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DCCP_PKT_CLOSEREQ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %73 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DCCP_PKT_CLOSE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DCCP_PKT_RESET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77, %71, %59
  %84 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %85 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @ADD48(i64 %86, i32 1)
  store i64 %87, i64* %8, align 8
  %88 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %89 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %83, %77
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %95 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @between48(i64 %92, i64 %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %136

99:                                               ; preds = %91
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %107 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @between48(i64 %104, i64 %105, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %103, %99
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @dccp_update_gsr(%struct.sock* %112, i64 %113)
  %115 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %116 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %111
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %127 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @after48(i64 %125, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %134 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %124, %120, %111
  br label %185

136:                                              ; preds = %103, %91
  %137 = load i64, i64* @jiffies, align 8
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %140 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @sysctl_dccp_sync_ratelimit, align 8
  %143 = add i64 %141, %142
  %144 = call i64 @time_before(i64 %138, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  store i32 -1, i32* %3, align 4
  br label %186

147:                                              ; preds = %136
  %148 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %149 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @dccp_packet_name(i64 %150)
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %155 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %165 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0), i32 %151, i64 %152, i64 %153, i64 %156, i8* %161, i64 %162, i64 %163, i64 %166)
  %168 = load i64, i64* %12, align 8
  %169 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %170 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  %171 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %172 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @DCCP_PKT_RESET, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %147
  %177 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %178 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %10, align 8
  br label %180

180:                                              ; preds = %176, %147
  %181 = load %struct.sock*, %struct.sock** %4, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %184 = call i32 @dccp_send_sync(%struct.sock* %181, i64 %182, i64 %183)
  store i32 -1, i32* %3, align 4
  br label %186

185:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %180, %146, %57
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @between48(i64, i64, i64) #1

declare dso_local i64 @dccp_delta_seqno(i64, i64) #1

declare dso_local i32 @dccp_update_gsr(%struct.sock*, i64) #1

declare dso_local i64 @ADD48(i64, i32) #1

declare dso_local i64 @after48(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @DCCP_WARN(i8*, i32, i64, i64, i64, i8*, i64, i64, i64) #1

declare dso_local i32 @dccp_packet_name(i64) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
