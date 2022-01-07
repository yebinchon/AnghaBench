; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.xfrm_mode, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_9__, i32, %struct.xfrm_mode, %struct.xfrm_mode, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.xfrm_state*)* }
%struct.TYPE_9__ = type { i32 }
%struct.xfrm_mode = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@XFRM_STATE_NOPMTUDISC = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@XFRM_MODE_FLAG_TUNNEL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfrm_init_state(%struct.xfrm_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_mode*, align 8
  %8 = alloca %struct.xfrm_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_mode*, align 8
  %12 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AF_INET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %22 = call %struct.TYPE_11__* @xs_net(%struct.xfrm_state* %21)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @XFRM_STATE_NOPMTUDISC, align 4
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %20, %3
  %35 = load i32, i32* @EPROTONOSUPPORT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AF_UNSPEC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %34
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.xfrm_mode* @xfrm_get_mode(i32 %47, i32 %51)
  store %struct.xfrm_mode* %52, %struct.xfrm_mode** %7, align 8
  %53 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %54 = icmp eq %struct.xfrm_mode* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %199

56:                                               ; preds = %43
  %57 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %58 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %199

71:                                               ; preds = %63, %56
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 6
  %74 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %75 = bitcast %struct.xfrm_mode* %73 to i8*
  %76 = bitcast %struct.xfrm_mode* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  br label %137

77:                                               ; preds = %34
  %78 = load i32, i32* @AF_INET, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %80 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.xfrm_mode* @xfrm_get_mode(i32 %82, i32 %86)
  store %struct.xfrm_mode* %87, %struct.xfrm_mode** %7, align 8
  %88 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %89 = icmp eq %struct.xfrm_mode* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %199

91:                                               ; preds = %77
  %92 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %93 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %199

99:                                               ; preds = %91
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 6
  %102 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %103 = bitcast %struct.xfrm_mode* %101 to i8*
  %104 = bitcast %struct.xfrm_mode* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %106 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AF_INET, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %99
  %112 = load i32, i32* @AF_INET6, align 4
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %111, %99
  %114 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %115 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call %struct.xfrm_mode* @xfrm_get_mode(i32 %117, i32 %118)
  store %struct.xfrm_mode* %119, %struct.xfrm_mode** %11, align 8
  %120 = load %struct.xfrm_mode*, %struct.xfrm_mode** %11, align 8
  %121 = icmp ne %struct.xfrm_mode* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %113
  %123 = load %struct.xfrm_mode*, %struct.xfrm_mode** %11, align 8
  %124 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %131 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %130, i32 0, i32 5
  %132 = load %struct.xfrm_mode*, %struct.xfrm_mode** %11, align 8
  %133 = bitcast %struct.xfrm_mode* %131 to i8*
  %134 = bitcast %struct.xfrm_mode* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 4 %134, i64 4, i1 false)
  br label %135

135:                                              ; preds = %129, %122
  br label %136

136:                                              ; preds = %135, %113
  br label %137

137:                                              ; preds = %136, %71
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call %struct.TYPE_12__* @xfrm_get_type(i32 %141, i32 %142)
  %144 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %145 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %144, i32 0, i32 2
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %145, align 8
  %146 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %147 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %146, i32 0, i32 2
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = icmp eq %struct.TYPE_12__* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  br label %199

151:                                              ; preds = %137
  %152 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %153 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @xfrm_get_type_offload(i32 %155, i32 %156, i32 %157)
  %159 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %160 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  %161 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %162 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32 (%struct.xfrm_state*)*, i32 (%struct.xfrm_state*)** %164, align 8
  %166 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %167 = call i32 %165(%struct.xfrm_state* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %151
  br label %199

171:                                              ; preds = %151
  %172 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %173 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call %struct.xfrm_mode* @xfrm_get_mode(i32 %175, i32 %176)
  store %struct.xfrm_mode* %177, %struct.xfrm_mode** %8, align 8
  %178 = load %struct.xfrm_mode*, %struct.xfrm_mode** %8, align 8
  %179 = icmp ne %struct.xfrm_mode* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = load i32, i32* @EPROTONOSUPPORT, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %10, align 4
  br label %199

183:                                              ; preds = %171
  %184 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %185 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %184, i32 0, i32 0
  %186 = load %struct.xfrm_mode*, %struct.xfrm_mode** %8, align 8
  %187 = bitcast %struct.xfrm_mode* %185 to i8*
  %188 = bitcast %struct.xfrm_mode* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 4 %188, i64 4, i1 false)
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %183
  %192 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %193 = call i32 @xfrm_init_replay(%struct.xfrm_state* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %199

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198, %196, %180, %170, %150, %98, %90, %70, %55
  %200 = load i32, i32* %10, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_11__* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_mode* @xfrm_get_mode(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @xfrm_get_type(i32, i32) #1

declare dso_local i32 @xfrm_get_type_offload(i32, i32, i32) #1

declare dso_local i32 @xfrm_init_replay(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
