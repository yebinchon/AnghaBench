; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_sm_dispatcher.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_sm_dispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { %struct.fscache_transition*, %struct.fscache_state* (%struct.fscache_object.0*, i32)*, i32 }
%struct.fscache_transition = type { i32, %struct.fscache_state* }
%struct.fscache_object.0 = type opaque
%struct.fscache_object = type { i64, i64, i64, %struct.fscache_state*, i32, %struct.fscache_transition* }

@.str = private unnamed_addr constant [15 x i8] c"{OBJ%x,%s,%lx}\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"{OBJ%x} oob %lx\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"{OBJ%x} ev %d: %s -> %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"{OBJ%x} exec %s\00", align 1
@NO_TRANSIT = common dso_local global %struct.fscache_state* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"{OBJ%x} %s notrans\00", align 1
@OBJECT_DEAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" [dead]\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"{OBJ%x} %s -> %s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" [msk %lx]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscache_object*)* @fscache_object_sm_dispatcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fscache_object_sm_dispatcher(%struct.fscache_object* %0) #0 {
  %2 = alloca %struct.fscache_object*, align 8
  %3 = alloca %struct.fscache_transition*, align 8
  %4 = alloca %struct.fscache_state*, align 8
  %5 = alloca %struct.fscache_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %2, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %11 = icmp ne %struct.fscache_object* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %15 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %18 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %17, i32 0, i32 3
  %19 = load %struct.fscache_state*, %struct.fscache_state** %18, align 8
  %20 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %23 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i64 %24)
  %26 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %27 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %285, %1
  %30 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %31 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %33 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %32, i32 0, i32 3
  %34 = load %struct.fscache_state*, %struct.fscache_state** %33, align 8
  store %struct.fscache_state* %34, %struct.fscache_state** %4, align 8
  br label %35

35:                                               ; preds = %249, %29
  %36 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %37 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %41 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %102

45:                                               ; preds = %35
  %46 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %47 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %51 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = and i64 %49, %52
  %54 = call i32 (i8*, i32, i64, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48, i64 %53)
  store i32 1, i32* %8, align 4
  %55 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %56 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %55, i32 0, i32 5
  %57 = load %struct.fscache_transition*, %struct.fscache_transition** %56, align 8
  store %struct.fscache_transition* %57, %struct.fscache_transition** %3, align 8
  br label %58

58:                                               ; preds = %98, %45
  %59 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %60 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %66 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = and i64 %64, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %63
  %72 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %73 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %72, i32 0, i32 1
  %74 = load %struct.fscache_state*, %struct.fscache_state** %73, align 8
  store %struct.fscache_state* %74, %struct.fscache_state** %4, align 8
  %75 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %76 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %75, i32 0, i32 1
  %77 = load %struct.fscache_state* (%struct.fscache_object.0*, i32)*, %struct.fscache_state* (%struct.fscache_object.0*, i32)** %76, align 8
  %78 = icmp ne %struct.fscache_state* (%struct.fscache_object.0*, i32)* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %83 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = and i64 %81, %85
  %87 = call i32 @fls(i64 %86)
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %91 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %90, i32 0, i32 2
  %92 = call i32 @__clear_bit(i32 %89, i64* %91)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %95 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %94, i32 0, i32 0
  %96 = call i32 @clear_bit(i32 %93, i64* %95)
  br label %172

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %100 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %99, i32 1
  store %struct.fscache_transition* %100, %struct.fscache_transition** %3, align 8
  br label %58

101:                                              ; preds = %58
  br label %102

102:                                              ; preds = %101, %35
  store i32 0, i32* %8, align 4
  %103 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %104 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %103, i32 0, i32 1
  %105 = load %struct.fscache_state* (%struct.fscache_object.0*, i32)*, %struct.fscache_state* (%struct.fscache_object.0*, i32)** %104, align 8
  %106 = icmp ne %struct.fscache_state* (%struct.fscache_object.0*, i32)* %105, null
  br i1 %106, label %171, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %170

112:                                              ; preds = %107
  %113 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %114 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %113, i32 0, i32 0
  %115 = load %struct.fscache_transition*, %struct.fscache_transition** %114, align 8
  store %struct.fscache_transition* %115, %struct.fscache_transition** %3, align 8
  br label %116

116:                                              ; preds = %165, %112
  %117 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %118 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %168

121:                                              ; preds = %116
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %124 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = and i64 %122, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %121
  %130 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %131 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %130, i32 0, i32 1
  %132 = load %struct.fscache_state*, %struct.fscache_state** %131, align 8
  store %struct.fscache_state* %132, %struct.fscache_state** %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %135 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = and i64 %133, %137
  %139 = call i32 @fls(i64 %138)
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %142 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @trace_fscache_osm(%struct.fscache_object* %141, %struct.fscache_state* %142, i32 1, i32 0, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %147 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %146, i32 0, i32 0
  %148 = call i32 @clear_bit(i32 %145, i64* %147)
  %149 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %150 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %155 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.fscache_state*, %struct.fscache_state** %5, align 8
  %158 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i8*, i32, i64, ...) @_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %151, i64 %153, i32 %156, i32 %159)
  %161 = load %struct.fscache_state*, %struct.fscache_state** %5, align 8
  store %struct.fscache_state* %161, %struct.fscache_state** %4, align 8
  %162 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %163 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %162, i32 0, i32 3
  store %struct.fscache_state* %161, %struct.fscache_state** %163, align 8
  br label %172

164:                                              ; preds = %121
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %167 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %166, i32 1
  store %struct.fscache_transition* %167, %struct.fscache_transition** %3, align 8
  br label %116

168:                                              ; preds = %116
  %169 = call i32 (...) @BUG()
  br label %170

170:                                              ; preds = %168, %107
  br label %273

171:                                              ; preds = %102
  br label %172

172:                                              ; preds = %171, %129, %71
  %173 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %174 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %177 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = call i32 (i8*, i32, i64, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %175, i64 %179)
  %181 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %182 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @trace_fscache_osm(%struct.fscache_object* %181, %struct.fscache_state* %182, i32 0, i32 %183, i32 %184)
  %186 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %187 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %186, i32 0, i32 1
  %188 = load %struct.fscache_state* (%struct.fscache_object.0*, i32)*, %struct.fscache_state* (%struct.fscache_object.0*, i32)** %187, align 8
  %189 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %190 = bitcast %struct.fscache_object* %189 to %struct.fscache_object.0*
  %191 = load i32, i32* %9, align 4
  %192 = call %struct.fscache_state* %188(%struct.fscache_object.0* %190, i32 %191)
  store %struct.fscache_state* %192, %struct.fscache_state** %5, align 8
  store i32 -1, i32* %9, align 4
  %193 = load %struct.fscache_state*, %struct.fscache_state** %5, align 8
  %194 = load %struct.fscache_state*, %struct.fscache_state** @NO_TRANSIT, align 8
  %195 = icmp eq %struct.fscache_state* %193, %194
  br i1 %195, label %196, label %220

196:                                              ; preds = %172
  %197 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %198 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %201 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = call i32 (i8*, i32, i64, ...) @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %199, i64 %203)
  %205 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %206 = load i32, i32* @OBJECT_DEAD, align 4
  %207 = call %struct.fscache_state* @STATE(i32 %206)
  %208 = icmp eq %struct.fscache_state* %205, %207
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %196
  %213 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %289

214:                                              ; preds = %196
  %215 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %216 = call i32 @fscache_enqueue_object(%struct.fscache_object* %215)
  %217 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %218 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %7, align 8
  br label %273

220:                                              ; preds = %172
  %221 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %222 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %225 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load %struct.fscache_state*, %struct.fscache_state** %5, align 8
  %229 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, i32, i64, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %223, i64 %227, i32 %230)
  %232 = load %struct.fscache_state*, %struct.fscache_state** %5, align 8
  store %struct.fscache_state* %232, %struct.fscache_state** %4, align 8
  %233 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %234 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %233, i32 0, i32 3
  store %struct.fscache_state* %232, %struct.fscache_state** %234, align 8
  %235 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %236 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %235, i32 0, i32 1
  %237 = load %struct.fscache_state* (%struct.fscache_object.0*, i32)*, %struct.fscache_state* (%struct.fscache_object.0*, i32)** %236, align 8
  %238 = icmp ne %struct.fscache_state* (%struct.fscache_object.0*, i32)* %237, null
  br i1 %238, label %239, label %250

239:                                              ; preds = %220
  %240 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %241 = load i32, i32* @OBJECT_DEAD, align 4
  %242 = call %struct.fscache_state* @STATE(i32 %241)
  %243 = icmp eq %struct.fscache_state* %240, %242
  %244 = zext i1 %243 to i32
  %245 = call i64 @unlikely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %239
  %248 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %289

249:                                              ; preds = %239
  br label %35

250:                                              ; preds = %220
  %251 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %252 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %7, align 8
  %254 = load %struct.fscache_state*, %struct.fscache_state** %4, align 8
  %255 = getelementptr inbounds %struct.fscache_state, %struct.fscache_state* %254, i32 0, i32 0
  %256 = load %struct.fscache_transition*, %struct.fscache_transition** %255, align 8
  store %struct.fscache_transition* %256, %struct.fscache_transition** %3, align 8
  br label %257

257:                                              ; preds = %269, %250
  %258 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %259 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %257
  %263 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %264 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* %7, align 8
  %268 = or i64 %267, %266
  store i64 %268, i64* %7, align 8
  br label %269

269:                                              ; preds = %262
  %270 = load %struct.fscache_transition*, %struct.fscache_transition** %3, align 8
  %271 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %270, i32 1
  store %struct.fscache_transition* %271, %struct.fscache_transition** %3, align 8
  br label %257

272:                                              ; preds = %257
  br label %273

273:                                              ; preds = %272, %214, %170
  %274 = load i64, i64* %7, align 8
  %275 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %276 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %275, i32 0, i32 1
  store i64 %274, i64* %276, align 8
  %277 = call i32 (...) @smp_mb()
  %278 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %279 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %6, align 8
  %281 = load i64, i64* %6, align 8
  %282 = load i64, i64* %7, align 8
  %283 = and i64 %281, %282
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %273
  br label %29

286:                                              ; preds = %273
  %287 = load i64, i64* %7, align 8
  %288 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %287)
  br label %289

289:                                              ; preds = %286, %247, %212
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i64) #1

declare dso_local i32 @_debug(i8*, i32, i64, ...) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @trace_fscache_osm(%struct.fscache_object*, %struct.fscache_state*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.fscache_state* @STATE(i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @fscache_enqueue_object(%struct.fscache_object*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
