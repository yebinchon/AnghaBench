; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_cqe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_cqe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.TYPE_8__, %struct.rds_ib_send_work*, i64, %struct.rds_connection* }
%struct.TYPE_8__ = type { i64 }
%struct.rds_ib_send_work = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rds_connection = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rds_message = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\0A\00", align 1
@s_ib_tx_cq_event = common dso_local global i32 0, align 4
@RDS_IB_ACK_WR_ID = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@s_ib_tx_stalled = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@RDS_LL_SEND_FULL = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"send completion on <%pI6c,%pI6c,%d> had status %u (%s), disconnecting and reconnecting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_send_cqe_handler(%struct.rds_ib_connection* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.rds_message*, align 8
  %6 = alloca %struct.rds_connection*, align 8
  %7 = alloca %struct.rds_ib_send_work*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  store %struct.rds_message* null, %struct.rds_message** %5, align 8
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %12, i32 0, i32 3
  %14 = load %struct.rds_connection*, %struct.rds_connection** %13, align 8
  store %struct.rds_connection* %14, %struct.rds_connection** %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ib_wc_status_msg(i32 %23)
  %25 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = call i32 @rdsdebug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20, i32 %24, i32 %27, i32 %32)
  %34 = load i32, i32* @s_ib_tx_cq_event, align 4
  %35 = call i32 @rds_ib_stats_inc(i32 %34)
  %36 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RDS_IB_ACK_WR_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %2
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %44 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = call i64 @time_after(i32 %42, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @s_ib_tx_stalled, align 4
  %54 = call i32 @rds_ib_stats_inc(i32 %53)
  br label %55

55:                                               ; preds = %52, %41
  %56 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %57 = call i32 @rds_ib_ack_send_complete(%struct.rds_ib_connection* %56)
  br label %191

58:                                               ; preds = %2
  %59 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %60 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %59, i32 0, i32 0
  %61 = call i64 @rds_ib_ring_oldest(%struct.TYPE_8__* %60)
  store i64 %61, i64* %9, align 8
  %62 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %63 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %62, i32 0, i32 0
  %64 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @rds_ib_ring_completed(%struct.TYPE_8__* %63, i64 %66, i64 %67)
  store i64 %68, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %138, %58
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %141

73:                                               ; preds = %69
  %74 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %75 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %74, i32 0, i32 1
  %76 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %76, i64 %77
  store %struct.rds_ib_send_work* %78, %struct.rds_ib_send_work** %7, align 8
  %79 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  %80 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %73
  %90 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %91 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  %92 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %93 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.rds_message* @rds_ib_send_unmap_op(%struct.rds_ib_connection* %90, %struct.rds_ib_send_work* %91, i32 %94)
  store %struct.rds_message* %95, %struct.rds_message** %5, align 8
  %96 = load i32, i32* @jiffies, align 4
  %97 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  %98 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @HZ, align 4
  %101 = sdiv i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = call i64 @time_after(i32 %96, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %89
  %107 = load i32, i32* @s_ib_tx_stalled, align 4
  %108 = call i32 @rds_ib_stats_inc(i32 %107)
  br label %109

109:                                              ; preds = %106, %89
  %110 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  %111 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  %116 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %119 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %124 = call i32 @rds_message_unmapped(%struct.rds_message* %123)
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %127 = call i32 @rds_message_put(%struct.rds_message* %126)
  %128 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  %129 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %109
  %131 = load i64, i64* %9, align 8
  %132 = add nsw i64 %131, 1
  %133 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %134 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = srem i64 %132, %136
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load i64, i64* %10, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %10, align 8
  br label %69

141:                                              ; preds = %69
  %142 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %143 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %142, i32 0, i32 0
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @rds_ib_ring_free(%struct.TYPE_8__* %143, i64 %144)
  %146 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @rds_ib_sub_signaled(%struct.rds_ib_connection* %146, i32 %147)
  store i32 0, i32* %11, align 4
  %149 = load i32, i32* @RDS_LL_SEND_FULL, align 4
  %150 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %151 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %150, i32 0, i32 5
  %152 = call i64 @test_and_clear_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %141
  %155 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %156 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %155, i32 0, i32 4
  %157 = call i64 @test_bit(i32 0, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154, %141
  %160 = load i32, i32* @rds_wq, align 4
  %161 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %162 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %161, i32 0, i32 3
  %163 = call i32 @queue_delayed_work(i32 %160, i32* %162, i32 0)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %166 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IB_WC_SUCCESS, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %164
  %171 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %172 = call i64 @rds_conn_up(%struct.rds_connection* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %170
  %175 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %176 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %177 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %176, i32 0, i32 2
  %178 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %179 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %178, i32 0, i32 1
  %180 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %181 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %184 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %187 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @ib_wc_status_msg(i32 %188)
  %190 = call i32 @rds_ib_conn_error(%struct.rds_connection* %175, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32* %177, i32* %179, i32 %182, i32 %185, i32 %189)
  br label %191

191:                                              ; preds = %55, %174, %170, %164
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ib_wc_status_msg(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @rds_ib_ack_send_complete(%struct.rds_ib_connection*) #1

declare dso_local i64 @rds_ib_ring_oldest(%struct.TYPE_8__*) #1

declare dso_local i64 @rds_ib_ring_completed(%struct.TYPE_8__*, i64, i64) #1

declare dso_local %struct.rds_message* @rds_ib_send_unmap_op(%struct.rds_ib_connection*, %struct.rds_ib_send_work*, i32) #1

declare dso_local i32 @rds_message_unmapped(%struct.rds_message*) #1

declare dso_local i32 @rds_message_put(%struct.rds_message*) #1

declare dso_local i32 @rds_ib_ring_free(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @rds_ib_sub_signaled(%struct.rds_ib_connection*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
