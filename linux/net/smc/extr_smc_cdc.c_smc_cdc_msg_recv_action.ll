; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_msg_recv_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_msg_recv_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_23__, %struct.TYPE_22__*, %struct.smc_connection }
%struct.TYPE_23__ = type { i32, i32, i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.smc_connection = type { i64, i32, i32, %struct.TYPE_20__, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.smc_cdc_msg = type { i32 }
%union.smc_host_cursor = type { i32 }

@SMC_URG_NOTYET = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, %struct.smc_cdc_msg*)* @smc_cdc_msg_recv_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_cdc_msg_recv_action(%struct.smc_sock* %0, %struct.smc_cdc_msg* %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca %struct.smc_cdc_msg*, align 8
  %5 = alloca %union.smc_host_cursor, align 4
  %6 = alloca %union.smc_host_cursor, align 4
  %7 = alloca %struct.smc_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store %struct.smc_cdc_msg* %1, %struct.smc_cdc_msg** %4, align 8
  %10 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %11 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %10, i32 0, i32 2
  store %struct.smc_connection* %11, %struct.smc_connection** %7, align 8
  %12 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %13 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %16 = call i32 @smc_curs_copy(%union.smc_host_cursor* %6, i32* %14, %struct.smc_connection* %15)
  %17 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %18 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %21 = call i32 @smc_curs_copy(%union.smc_host_cursor* %5, i32* %19, %struct.smc_connection* %20)
  %22 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %23 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %22, i32 0, i32 4
  %24 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %25 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %26 = call i32 @smc_cdc_msg_to_host(%struct.TYPE_15__* %23, %struct.smc_cdc_msg* %24, %struct.smc_connection* %25)
  %27 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %28 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %31 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = call i32 @smc_curs_diff(i64 %29, %union.smc_host_cursor* %5, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = call i32 (...) @smp_mb__before_atomic()
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %40 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %39, i32 0, i32 5
  %41 = call i32 @atomic_add(i32 %38, i32* %40)
  %42 = call i32 (...) @smp_mb__after_atomic()
  br label %43

43:                                               ; preds = %36, %2
  %44 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %45 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %44, i32 0, i32 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %50 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = call i32 @smc_curs_diff(i64 %48, %union.smc_host_cursor* %6, i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %43
  %56 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %57 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %64 = call i32 @smc_cdc_handle_urg_data_arrival(%struct.smc_sock* %63, i32* %9)
  br label %65

65:                                               ; preds = %62, %55
  %66 = call i32 (...) @smp_mb__before_atomic()
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %69 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %68, i32 0, i32 7
  %70 = call i32 @atomic_add(i32 %67, i32* %69)
  %71 = call i32 (...) @smp_mb__after_atomic()
  %72 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %73 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 3
  %75 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %74, align 8
  %76 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %77 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %76, i32 0, i32 0
  %78 = call i32 %75(%struct.TYPE_23__* %77)
  br label %106

79:                                               ; preds = %43
  %80 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %81 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %88 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 3
  %90 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %89, align 8
  %91 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %92 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %91, i32 0, i32 0
  %93 = call i32 %90(%struct.TYPE_23__* %92)
  br label %94

94:                                               ; preds = %86, %79
  %95 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %96 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @SMC_URG_NOTYET, align 4
  %103 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %104 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %94
  br label %106

106:                                              ; preds = %105, %65
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %111 = call i64 @smc_tx_prepared_sends(%struct.smc_connection* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %115 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %122 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120, %113, %109
  %128 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %129 = call i32 @smc_tx_sndbuf_nonempty(%struct.smc_connection* %128)
  br label %130

130:                                              ; preds = %127, %120
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %130
  %134 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %135 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %140 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %139, i32 0, i32 5
  %141 = call i64 @atomic_read(i32* %140)
  %142 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %143 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %138
  %147 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %148 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %147, i32 0, i32 1
  store i32 0, i32* %148, align 8
  %149 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %150 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 2
  %152 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %151, align 8
  %153 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %154 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %153, i32 0, i32 0
  %155 = call i32 %152(%struct.TYPE_23__* %154)
  br label %156

156:                                              ; preds = %146, %138, %133, %130
  %157 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %158 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load i32, i32* @ECONNRESET, align 4
  %165 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %166 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %169 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %163, %156
  %173 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %174 = call i64 @smc_cdc_rxed_any_close_or_senddone(%struct.smc_connection* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %172
  %177 = load i32, i32* @RCV_SHUTDOWN, align 4
  %178 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %179 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %177
  store i32 %182, i32* %180, align 8
  %183 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %184 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %183, i32 0, i32 1
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %184, align 8
  %186 = icmp ne %struct.TYPE_22__* %185, null
  br i1 %186, label %187, label %204

187:                                              ; preds = %176
  %188 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %189 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %188, i32 0, i32 1
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = icmp ne %struct.TYPE_21__* %192, null
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load i32, i32* @RCV_SHUTDOWN, align 4
  %196 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %197 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %196, i32 0, i32 1
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %195
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %194, %187, %176
  %205 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %206 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %205, i32 0, i32 0
  %207 = load i32, i32* @SOCK_DONE, align 4
  %208 = call i32 @sock_set_flag(%struct.TYPE_23__* %206, i32 %207)
  %209 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %210 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %209, i32 0, i32 0
  %211 = call i32 @sock_hold(%struct.TYPE_23__* %210)
  %212 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %213 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %212, i32 0, i32 2
  %214 = call i32 @schedule_work(i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %204
  %217 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %218 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %217, i32 0, i32 0
  %219 = call i32 @sock_put(%struct.TYPE_23__* %218)
  br label %220

220:                                              ; preds = %216, %204
  br label %221

221:                                              ; preds = %220, %172
  ret void
}

declare dso_local i32 @smc_curs_copy(%union.smc_host_cursor*, i32*, %struct.smc_connection*) #1

declare dso_local i32 @smc_cdc_msg_to_host(%struct.TYPE_15__*, %struct.smc_cdc_msg*, %struct.smc_connection*) #1

declare dso_local i32 @smc_curs_diff(i64, %union.smc_host_cursor*, i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @smc_cdc_handle_urg_data_arrival(%struct.smc_sock*, i32*) #1

declare dso_local i64 @smc_tx_prepared_sends(%struct.smc_connection*) #1

declare dso_local i32 @smc_tx_sndbuf_nonempty(%struct.smc_connection*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @smc_cdc_rxed_any_close_or_senddone(%struct.smc_connection*) #1

declare dso_local i32 @sock_set_flag(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sock_hold(%struct.TYPE_23__*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sock_put(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
