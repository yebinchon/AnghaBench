; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.TYPE_16__, i64, %struct.TYPE_14__, %struct.TYPE_12__, i32, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.net = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@IPSEC_PROTO_ANY = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL_SOFT = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_update(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 10
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IPSEC_PROTO_ANY, align 4
  %14 = call i32 @xfrm_id_proto_match(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = call %struct.net* @xs_net(%struct.xfrm_state* %15)
  store %struct.net* %16, %struct.net** %8, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state* %21, i32 %22, i32 %26)
  store %struct.xfrm_state* %27, %struct.xfrm_state** %4, align 8
  %28 = load i32, i32* @ESRCH, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %31 = icmp ne %struct.xfrm_state* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %35 = call i64 @xfrm_state_kern(%struct.xfrm_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_state* %38, %struct.xfrm_state** %5, align 8
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %50 = call i32 @__xfrm_state_insert(%struct.xfrm_state* %49)
  store %struct.xfrm_state* null, %struct.xfrm_state** %3, align 8
  br label %51

51:                                               ; preds = %48, %41
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %37, %32
  %53 = load %struct.net*, %struct.net** %8, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %58 = icmp ne %struct.xfrm_state* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %61 = call i32 @xfrm_state_put(%struct.xfrm_state* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %267

67:                                               ; preds = %62
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %69 = icmp ne %struct.xfrm_state* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %72 = call i32 @xfrm_state_delete(%struct.xfrm_state* %71)
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %74 = call i32 @xfrm_state_put(%struct.xfrm_state* %73)
  store i32 0, i32* %2, align 4
  br label %267

75:                                               ; preds = %67
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 0
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XFRM_STATE_VALID, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %259

90:                                               ; preds = %75
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %92 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %91, i32 0, i32 9
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = icmp ne %struct.TYPE_17__* %93, null
  br i1 %94, label %95, label %120

95:                                               ; preds = %90
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %97 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %96, i32 0, i32 9
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = icmp ne %struct.TYPE_17__* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %95
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 9
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 9
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 9
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %117 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %116, i32 0, i32 9
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = call i32 @memcpy(%struct.TYPE_17__* %115, %struct.TYPE_17__* %118, i32 8)
  br label %132

120:                                              ; preds = %100, %95, %90
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %122 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %121, i32 0, i32 9
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = icmp ne %struct.TYPE_17__* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %127 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %126, i32 0, i32 9
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = icmp ne %struct.TYPE_17__* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %120
  br label %260

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %112
  %133 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %134 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %133, i32 0, i32 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = icmp ne %struct.TYPE_17__* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = icmp ne %struct.TYPE_17__* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %144 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %143, i32 0, i32 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %147 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %146, i32 0, i32 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = call i32 @memcpy(%struct.TYPE_17__* %145, %struct.TYPE_17__* %148, i32 8)
  br label %150

150:                                              ; preds = %142, %137, %132
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %150
  %154 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %155 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %154, i32 0, i32 7
  %156 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %157 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %156, i32 0, i32 7
  %158 = call i64 @memcmp(%struct.TYPE_17__* %155, %struct.TYPE_17__* %157, i32 8)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %162 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %161, i32 0, i32 7
  %163 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %164 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %163, i32 0, i32 7
  %165 = call i32 @memcpy(%struct.TYPE_17__* %162, %struct.TYPE_17__* %164, i32 8)
  br label %166

166:                                              ; preds = %160, %153, %150
  %167 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %168 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %167, i32 0, i32 6
  %169 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %170 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %169, i32 0, i32 6
  %171 = call i32 @memcpy(%struct.TYPE_17__* %168, %struct.TYPE_17__* %170, i32 8)
  %172 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %173 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %176 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %175, i32 0, i32 5
  %177 = call i32 @ktime_set(i32 1, i32 0)
  %178 = load i32, i32* @HRTIMER_MODE_REL_SOFT, align 4
  %179 = call i32 @hrtimer_start(i32* %176, i32 %177, i32 %178)
  %180 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %181 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %166
  %186 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %187 = call i32 @xfrm_state_check_expire(%struct.xfrm_state* %186)
  br label %188

188:                                              ; preds = %185, %166
  %189 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %190 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %207, label %195

195:                                              ; preds = %188
  %196 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %197 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %195
  %203 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %204 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %252

207:                                              ; preds = %202, %195, %188
  %208 = load %struct.net*, %struct.net** %8, align 8
  %209 = getelementptr inbounds %struct.net, %struct.net* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = call i32 @spin_lock_bh(i32* %210)
  %212 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %213 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %207
  %219 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %220 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %218, %207
  %226 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %227 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %230 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = bitcast %struct.TYPE_13__* %228 to i8*
  %233 = bitcast %struct.TYPE_13__* %231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %232, i8* align 8 %233, i64 16, i1 false)
  br label %234

234:                                              ; preds = %225, %218
  %235 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %236 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %241 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %244 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %239, %234
  %246 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %247 = call i32 @__xfrm_state_bump_genids(%struct.xfrm_state* %246)
  %248 = load %struct.net*, %struct.net** %8, align 8
  %249 = getelementptr inbounds %struct.net, %struct.net* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = call i32 @spin_unlock_bh(i32* %250)
  br label %252

252:                                              ; preds = %245, %202
  store i32 0, i32* %6, align 4
  %253 = load i64, i64* @XFRM_STATE_DEAD, align 8
  %254 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %255 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  store i64 %253, i64* %256, align 8
  %257 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %258 = call i32 @__xfrm_state_put(%struct.xfrm_state* %257)
  br label %259

259:                                              ; preds = %252, %75
  br label %260

260:                                              ; preds = %259, %130
  %261 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %262 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %261, i32 0, i32 0
  %263 = call i32 @spin_unlock_bh(i32* %262)
  %264 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %265 = call i32 @xfrm_state_put(%struct.xfrm_state* %264)
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %260, %70, %65
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i32 @xfrm_id_proto_match(i32, i32) #1

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state*, i32, i32) #1

declare dso_local i64 @xfrm_state_kern(%struct.xfrm_state*) #1

declare dso_local i32 @__xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__xfrm_state_bump_genids(%struct.xfrm_state*) #1

declare dso_local i32 @__xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
