; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_tp_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_tp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.j1939_sk_buff_cb }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.j1939_sk_buff_cb = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.j1939_priv = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { %struct.TYPE_8__* }

@J1939_TP_PGN_DAT = common dso_local global i64 0, align 8
@J1939_TP_PGN_CTL = common dso_local global i64 0, align 8
@J1939_ETP_PGN_DAT = common dso_local global i64 0, align 8
@J1939_ETP_PGN_CTL = common dso_local global i64 0, align 8
@EDOM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@J1939_SIMPLE = common dso_local global i64 0, align 8
@J1939_MAX_TP_PACKET_SIZE = common dso_local global i64 0, align 8
@J1939_ETP = common dso_local global i64 0, align 8
@J1939_TP = common dso_local global i64 0, align 8
@EDESTADDRREQ = common dso_local global i32 0, align 4
@J1939_ECU_LOCAL_DST = common dso_local global i32 0, align 4
@J1939_ECU_LOCAL_SRC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@j1939_tp_block = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.j1939_session* @j1939_tp_send(%struct.j1939_priv* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.j1939_session*, align 8
  %5 = alloca %struct.j1939_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.j1939_sk_buff_cb*, align 8
  %9 = alloca %struct.j1939_session*, align 8
  %10 = alloca i32, align 4
  store %struct.j1939_priv* %0, %struct.j1939_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %11)
  store %struct.j1939_sk_buff_cb* %12, %struct.j1939_sk_buff_cb** %8, align 8
  %13 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %14 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @J1939_TP_PGN_DAT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %40, label %19

19:                                               ; preds = %3
  %20 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %21 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @J1939_TP_PGN_CTL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %28 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @J1939_ETP_PGN_DAT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %35 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @J1939_ETP_PGN_CTL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33, %26, %19, %3
  %41 = load i32, i32* @EDOM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.j1939_session* @ERR_PTR(i32 %42)
  store %struct.j1939_session* %43, %struct.j1939_session** %4, align 8
  br label %210

44:                                               ; preds = %33
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %47 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.j1939_session* @ERR_PTR(i32 %52)
  store %struct.j1939_session* %53, %struct.j1939_session** %4, align 8
  br label %210

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  %56 = icmp ule i64 %55, 8
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* @J1939_SIMPLE, align 8
  %59 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %60 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  br label %77

62:                                               ; preds = %54
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @J1939_MAX_TP_PACKET_SIZE, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* @J1939_ETP, align 8
  %68 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %69 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  br label %76

71:                                               ; preds = %62
  %72 = load i64, i64* @J1939_TP, align 8
  %73 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %74 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %79 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @J1939_ETP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %86 = call i64 @j1939_cb_is_broadcast(%struct.j1939_sk_buff_cb* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @EDESTADDRREQ, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.j1939_session* @ERR_PTR(i32 %90)
  store %struct.j1939_session* %91, %struct.j1939_session** %4, align 8
  br label %210

92:                                               ; preds = %84, %77
  %93 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @j1939_ac_fixup(%struct.j1939_priv* %93, %struct.sk_buff* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = call %struct.j1939_session* @ERR_PTR(i32 %100)
  store %struct.j1939_session* %101, %struct.j1939_session** %4, align 8
  br label %210

102:                                              ; preds = %92
  %103 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %104 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @j1939_address_is_unicast(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %111 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %114 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load i32, i32* @J1939_ECU_LOCAL_DST, align 4
  %123 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %124 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %109, %102
  %128 = load i32, i32* @J1939_ECU_LOCAL_SRC, align 4
  %129 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %130 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call %struct.j1939_session* @j1939_session_new(%struct.j1939_priv* %133, %struct.sk_buff* %134, i64 %135)
  store %struct.j1939_session* %136, %struct.j1939_session** %9, align 8
  %137 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %138 = icmp ne %struct.j1939_session* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %127
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  %142 = call %struct.j1939_session* @ERR_PTR(i32 %141)
  store %struct.j1939_session* %142, %struct.j1939_session** %4, align 8
  br label %210

143:                                              ; preds = %127
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %148 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %147, i32 0, i32 2
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %148, align 8
  %149 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %150 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %151, 6
  %153 = udiv i64 %152, 7
  %154 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %155 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i64 %153, i64* %156, align 8
  %157 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %158 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @J1939_ETP, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %143
  br label %177

164:                                              ; preds = %143
  %165 = load i64, i64* @j1939_tp_block, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %169

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %167
  %170 = phi i64 [ %165, %167 ], [ 255, %168 ]
  %171 = trunc i64 %170 to i32
  %172 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %173 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @min(i32 %171, i64 %175)
  br label %177

177:                                              ; preds = %169, %163
  %178 = phi i32 [ 255, %163 ], [ %176, %169 ]
  %179 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %180 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 8
  %182 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %183 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %182, i32 0, i32 4
  %184 = call i64 @j1939_cb_is_broadcast(%struct.j1939_sk_buff_cb* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %177
  %187 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %188 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %192 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  store i64 %190, i64* %193, align 8
  br label %194

194:                                              ; preds = %186, %177
  %195 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %196 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %195, i32 0, i32 2
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = sext i32 %199 to i64
  %202 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %203 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %205 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  %208 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  %209 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  store %struct.j1939_session* %209, %struct.j1939_session** %4, align 8
  br label %210

210:                                              ; preds = %194, %139, %99, %88, %50, %40
  %211 = load %struct.j1939_session*, %struct.j1939_session** %4, align 8
  ret %struct.j1939_session* %211
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local %struct.j1939_session* @ERR_PTR(i32) #1

declare dso_local i64 @j1939_cb_is_broadcast(%struct.j1939_sk_buff_cb*) #1

declare dso_local i32 @j1939_ac_fixup(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local %struct.j1939_session* @j1939_session_new(%struct.j1939_priv*, %struct.sk_buff*, i64) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
