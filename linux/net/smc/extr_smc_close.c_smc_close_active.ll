; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_active.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.smc_sock = type { i32, %struct.TYPE_7__*, %struct.sock, %struct.smc_connection }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.smc_connection = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.smc_cdc_conn_state_flags }
%struct.smc_cdc_conn_state_flags = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@SMC_MAX_STREAM_WAIT_TIMEOUT = common dso_local global i64 0, align 8
@SHUT_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_close_active(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.smc_cdc_conn_state_flags*, align 8
  %4 = alloca %struct.smc_connection*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %9 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %10 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.smc_cdc_conn_state_flags* %12, %struct.smc_cdc_conn_state_flags** %3, align 8
  %13 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %14 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %13, i32 0, i32 3
  store %struct.smc_connection* %14, %struct.smc_connection** %4, align 8
  %15 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %16 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %15, i32 0, i32 2
  store %struct.sock* %16, %struct.sock** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PF_EXITING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = load i32, i32* @SOCK_LINGER, align 4
  %27 = call i64 @sock_flag(%struct.sock* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @SMC_MAX_STREAM_WAIT_TIMEOUT, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i64 [ %32, %29 ], [ %34, %33 ]
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i64 [ 0, %23 ], [ %36, %35 ]
  store i64 %38, i64* %7, align 8
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %167, %121, %37
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %211 [
    i32 134, label %46
    i32 133, label %49
    i32 139, label %97
    i32 136, label %123
    i32 138, label %142
    i32 137, label %142
    i32 131, label %187
    i32 130, label %187
    i32 129, label %204
    i32 128, label %205
    i32 132, label %210
    i32 135, label %210
  ]

46:                                               ; preds = %42
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  store i32 135, i32* %48, align 8
  br label %211

49:                                               ; preds = %42
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  store i32 135, i32* %51, align 8
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 2
  %54 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %53, align 8
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = call i32 %54(%struct.sock* %55)
  %57 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %58 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %87

61:                                               ; preds = %49
  %62 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %63 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %61
  %69 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %70 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* @SHUT_RDWR, align 4
  %73 = call i32 @kernel_sock_shutdown(%struct.TYPE_7__* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %75 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %79, align 8
  %81 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %82 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 %80(%struct.TYPE_6__* %85)
  br label %87

87:                                               ; preds = %68, %61, %49
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = call i32 @smc_close_cleanup_listen(%struct.sock* %88)
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = call i32 @release_sock(%struct.sock* %90)
  %92 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %93 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %92, i32 0, i32 0
  %94 = call i32 @flush_work(i32* %93)
  %95 = load %struct.sock*, %struct.sock** %5, align 8
  %96 = call i32 @lock_sock(%struct.sock* %95)
  br label %211

97:                                               ; preds = %42
  %98 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @smc_close_stream_wait(%struct.smc_sock* %98, i64 %99)
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = call i32 @release_sock(%struct.sock* %101)
  %103 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %104 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %103, i32 0, i32 0
  %105 = call i32 @cancel_delayed_work_sync(i32* %104)
  %106 = load %struct.sock*, %struct.sock** %5, align 8
  %107 = call i32 @lock_sock(%struct.sock* %106)
  %108 = load %struct.sock*, %struct.sock** %5, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 139
  br i1 %111, label %112, label %121

112:                                              ; preds = %97
  %113 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %114 = call i32 @smc_close_final(%struct.smc_connection* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %211

118:                                              ; preds = %112
  %119 = load %struct.sock*, %struct.sock** %5, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 1
  store i32 131, i32* %120, align 8
  br label %122

121:                                              ; preds = %97
  br label %42

122:                                              ; preds = %118
  br label %211

123:                                              ; preds = %42
  %124 = load %struct.smc_cdc_conn_state_flags*, %struct.smc_cdc_conn_state_flags** %3, align 8
  %125 = getelementptr inbounds %struct.smc_cdc_conn_state_flags, %struct.smc_cdc_conn_state_flags* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %130 = call i32 @smc_close_sent_any_close(%struct.smc_connection* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %134 = call i32 @smc_close_final(%struct.smc_connection* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %211

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %128, %123
  %140 = load %struct.sock*, %struct.sock** %5, align 8
  %141 = getelementptr inbounds %struct.sock, %struct.sock* %140, i32 0, i32 1
  store i32 135, i32* %141, align 8
  br label %211

142:                                              ; preds = %42, %42
  %143 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %144 = call i32 @smc_cdc_rxed_any_close(%struct.smc_connection* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @smc_close_stream_wait(%struct.smc_sock* %147, i64 %148)
  br label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.sock*, %struct.sock** %5, align 8
  %152 = call i32 @release_sock(%struct.sock* %151)
  %153 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %154 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %153, i32 0, i32 0
  %155 = call i32 @cancel_delayed_work_sync(i32* %154)
  %156 = load %struct.sock*, %struct.sock** %5, align 8
  %157 = call i32 @lock_sock(%struct.sock* %156)
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 138
  br i1 %161, label %162, label %168

162:                                              ; preds = %150
  %163 = load %struct.sock*, %struct.sock** %5, align 8
  %164 = getelementptr inbounds %struct.sock, %struct.sock* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 137
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %42

168:                                              ; preds = %162, %150
  %169 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %170 = call i32 @smc_close_final(%struct.smc_connection* %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %211

174:                                              ; preds = %168
  %175 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %176 = call i32 @smc_cdc_rxed_any_close(%struct.smc_connection* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load %struct.sock*, %struct.sock** %5, align 8
  %180 = getelementptr inbounds %struct.sock, %struct.sock* %179, i32 0, i32 1
  store i32 135, i32* %180, align 8
  %181 = load %struct.sock*, %struct.sock** %5, align 8
  %182 = call i32 @sock_put(%struct.sock* %181)
  br label %186

183:                                              ; preds = %174
  %184 = load %struct.sock*, %struct.sock** %5, align 8
  %185 = getelementptr inbounds %struct.sock, %struct.sock* %184, i32 0, i32 1
  store i32 129, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %178
  br label %211

187:                                              ; preds = %42, %42
  %188 = load %struct.smc_cdc_conn_state_flags*, %struct.smc_cdc_conn_state_flags** %3, align 8
  %189 = getelementptr inbounds %struct.smc_cdc_conn_state_flags, %struct.smc_cdc_conn_state_flags* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %194 = call i32 @smc_close_sent_any_close(%struct.smc_connection* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %198 = call i32 @smc_close_final(%struct.smc_connection* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %211

202:                                              ; preds = %196
  br label %203

203:                                              ; preds = %202, %192, %187
  br label %211

204:                                              ; preds = %42
  br label %211

205:                                              ; preds = %42
  %206 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %207 = call i32 @smc_close_abort(%struct.smc_connection* %206)
  %208 = load %struct.sock*, %struct.sock** %5, align 8
  %209 = getelementptr inbounds %struct.sock, %struct.sock* %208, i32 0, i32 1
  store i32 135, i32* %209, align 8
  br label %211

210:                                              ; preds = %42, %42
  br label %211

211:                                              ; preds = %42, %210, %205, %204, %203, %201, %186, %173, %139, %137, %122, %117, %87, %46
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.sock*, %struct.sock** %5, align 8
  %214 = getelementptr inbounds %struct.sock, %struct.sock* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %212, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load %struct.sock*, %struct.sock** %5, align 8
  %219 = getelementptr inbounds %struct.sock, %struct.sock* %218, i32 0, i32 2
  %220 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %219, align 8
  %221 = load %struct.sock*, %struct.sock** %5, align 8
  %222 = call i32 %220(%struct.sock* %221)
  br label %223

223:                                              ; preds = %217, %211
  %224 = load i32, i32* %8, align 4
  ret i32 %224
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @smc_close_cleanup_listen(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_close_stream_wait(%struct.smc_sock*, i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @smc_close_final(%struct.smc_connection*) #1

declare dso_local i32 @smc_close_sent_any_close(%struct.smc_connection*) #1

declare dso_local i32 @smc_cdc_rxed_any_close(%struct.smc_connection*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @smc_close_abort(%struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
