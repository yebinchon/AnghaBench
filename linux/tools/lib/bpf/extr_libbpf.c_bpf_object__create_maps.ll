; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__create_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__create_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32, %struct.bpf_map*, i64, %struct.TYPE_2__ }
%struct.bpf_map = type { i32, i64, i32, i64, i64, i32, %struct.bpf_map_def }
%struct.bpf_map_def = type { i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_create_map_attr = type { i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"skip map create (preset) %s: fd=%d\0A\00", align 1
@BPF_MAP_TYPE_PERF_EVENT_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to determine number of system CPUs: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"map '%s': setting size to %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Error in bpf_create_map_xattr(%s):%s(%d). Retrying without BTF.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to create map (name: '%s'): %s(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"created map %s: fd=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__create_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__create_maps(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca %struct.bpf_create_map_attr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_map*, align 8
  %9 = alloca %struct.bpf_map_def*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %16 = bitcast %struct.bpf_create_map_attr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 72, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %257, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %260

23:                                               ; preds = %17
  %24 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %24, i32 0, i32 1
  %26 = load %struct.bpf_map*, %struct.bpf_map** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %26, i64 %28
  store %struct.bpf_map* %29, %struct.bpf_map** %8, align 8
  %30 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %31 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %30, i32 0, i32 6
  store %struct.bpf_map_def* %31, %struct.bpf_map_def** %9, align 8
  %32 = load i32, i32* @STRERR_BUFSIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %36 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %37 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %36, i32 0, i32 0
  store i32* %37, i32** %13, align 8
  %38 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %39 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %23
  %43 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %44 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %47 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  store i32 4, i32* %14, align 4
  br label %253

50:                                               ; preds = %23
  %51 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %52 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %58 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 10
  store i32 %59, i32* %60, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %63 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 9
  store i32 %64, i32* %65, align 4
  %66 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %67 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %71 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 8
  store i32 %72, i32* %73, align 8
  %74 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %75 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 7
  store i32 %76, i32* %77, align 4
  %78 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %79 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 6
  store i32 %80, i32* %81, align 8
  %82 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %83 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BPF_MAP_TYPE_PERF_EVENT_ARRAY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %61
  %88 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %89 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 (...) @libbpf_num_possible_cpus()
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %7, align 4
  br label %202

104:                                              ; preds = %97
  %105 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %106 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  br label %117

112:                                              ; preds = %87, %61
  %113 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %114 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %104
  %118 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %122 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @bpf_map_type__is_map_in_map(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %117
  %127 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %128 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %133 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 2
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %131, %126, %117
  %137 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %138 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %143 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %144 = call i32 @bpf_map_find_btf_info(%struct.bpf_object* %142, %struct.bpf_map* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %141
  %147 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %148 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @btf__fd(i64 %149)
  %151 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 5
  store i64 %150, i64* %151, align 8
  %152 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %153 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 4
  store i64 %154, i64* %155, align 8
  %156 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %157 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 3
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %146, %141, %136
  %161 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %4)
  %162 = load i32*, i32** %13, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %170, %166
  %175 = load i32, i32* @errno, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = trunc i64 %33 to i32
  %179 = call i8* @libbpf_strerror_r(i32 %177, i8* %35, i32 %178)
  store i8* %179, i8** %10, align 8
  %180 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %181 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %182, i8* %183, i32 %184)
  %186 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 5
  store i64 0, i64* %186, align 8
  %187 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %4, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %190 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %192 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %4)
  %194 = load i32*, i32** %13, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %174, %170, %160
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %231

199:                                              ; preds = %195
  %200 = load i32, i32* @errno, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %241, %199, %100
  %203 = load i32, i32* %7, align 4
  %204 = trunc i64 %33 to i32
  %205 = call i8* @libbpf_strerror_r(i32 %203, i8* %35, i32 %204)
  store i8* %205, i8** %10, align 8
  %206 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %207 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %208, i8* %209, i32 %210)
  store i64 0, i64* %15, align 8
  br label %212

212:                                              ; preds = %226, %202
  %213 = load i64, i64* %15, align 8
  %214 = load i32, i32* %6, align 4
  %215 = zext i32 %214 to i64
  %216 = icmp ult i64 %213, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %219 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %218, i32 0, i32 1
  %220 = load %struct.bpf_map*, %struct.bpf_map** %219, align 8
  %221 = load i64, i64* %15, align 8
  %222 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %220, i64 %221
  %223 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @zclose(i32 %224)
  br label %226

226:                                              ; preds = %217
  %227 = load i64, i64* %15, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %15, align 8
  br label %212

229:                                              ; preds = %212
  %230 = load i32, i32* %7, align 4
  store i32 %230, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %253

231:                                              ; preds = %195
  %232 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %233 = call i64 @bpf_map__is_internal(%struct.bpf_map* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %231
  %236 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %237 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %238 = call i32 @bpf_object__populate_internal_map(%struct.bpf_object* %236, %struct.bpf_map* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i32*, i32** %13, align 8
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @zclose(i32 %243)
  br label %202

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245, %231
  %247 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %248 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %13, align 8
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %249, i32 %251)
  store i32 0, i32* %14, align 4
  br label %253

253:                                              ; preds = %246, %229, %42
  %254 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %14, align 4
  switch i32 %255, label %263 [
    i32 0, label %256
    i32 4, label %257
    i32 1, label %261
  ]

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %256, %253
  %258 = load i32, i32* %6, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %17

260:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %253
  %262 = load i32, i32* %2, align 4
  ret i32 %262

263:                                              ; preds = %253
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #3

declare dso_local i32 @libbpf_num_possible_cpus(...) #3

declare dso_local i32 @pr_warning(i8*, i32, ...) #3

declare dso_local i64 @bpf_map_type__is_map_in_map(i64) #3

declare dso_local i32 @bpf_map_find_btf_info(%struct.bpf_object*, %struct.bpf_map*) #3

declare dso_local i64 @btf__fd(i64) #3

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #3

declare dso_local i8* @libbpf_strerror_r(i32, i8*, i32) #3

declare dso_local i32 @zclose(i32) #3

declare dso_local i64 @bpf_map__is_internal(%struct.bpf_map*) #3

declare dso_local i32 @bpf_object__populate_internal_map(%struct.bpf_object*, %struct.bpf_map*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
