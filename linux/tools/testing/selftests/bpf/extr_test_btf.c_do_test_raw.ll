; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_raw_test = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_create_map_attr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.btf_header = type { i64, i64, i64, i64 }

@raw_tests = common dso_local global %struct.btf_raw_test* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BTF raw test[%u] (%s): \00", align 1
@hdr_tmpl = common dso_local global i32 0, align 4
@btf_log_buf = common dso_local global i8* null, align 8
@BTF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"btf_fd:%d test->btf_load_err:%u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected err_str:%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"map_fd:%d test->map_create_err:%u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_test_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_raw_test*, align 8
  %5 = alloca %struct.bpf_create_map_attr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf_header*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load %struct.btf_raw_test*, %struct.btf_raw_test** @raw_tests, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %12, i64 %15
  store %struct.btf_raw_test* %16, %struct.btf_raw_test** %4, align 8
  %17 = bitcast %struct.bpf_create_map_attr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 32, i1 false)
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %21 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %22)
  %24 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %25 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %28 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %31 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @btf_raw_create(i32* @hdr_tmpl, i32 %26, i32 %29, i32 %32, i32* %8, i32* null)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %218

37:                                               ; preds = %1
  %38 = load i8*, i8** %10, align 8
  %39 = bitcast i8* %38 to %struct.btf_header*
  store %struct.btf_header* %39, %struct.btf_header** %9, align 8
  %40 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %41 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %46 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %45, i32 0, i32 14
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %50 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %52 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %57 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %56, i32 0, i32 13
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %61 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %63 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %68 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %67, i32 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %72 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %74 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %79 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %83 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** @btf_log_buf, align 8
  %88 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %90 = call i32 @bpf_load_btf(i8* %85, i32 %86, i8* %87, i32 %88, i64 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, -1
  %95 = zext i1 %94 to i32
  %96 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %97 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %104 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 (i32, i8*, i32, ...) @CHECK(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %37
  %109 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %110 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i8*, i8** @btf_log_buf, align 8
  %115 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %116 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strstr(i8* %114, i32 %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %113, %108
  %122 = phi i1 [ false, %108 ], [ %120, %113 ]
  %123 = zext i1 %122 to i32
  %124 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %125 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = call i64 (i32, i8*, i32, ...) @CHECK(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %37
  store i32 -1, i32* %11, align 4
  br label %183

130:                                              ; preds = %121
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %133, %130
  br label %183

137:                                              ; preds = %133
  %138 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %139 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 7
  store i32 %140, i32* %141, align 4
  %142 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %143 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 6
  store i32 %144, i32* %145, align 4
  %146 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %147 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 5
  store i32 %148, i32* %149, align 4
  %150 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %151 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 4
  store i32 %152, i32* %153, align 4
  %154 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %155 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 3
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %7, align 4
  %159 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %161 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 2
  store i32 %162, i32* %163, align 4
  %164 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %165 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 1
  store i32 %166, i32* %167, align 4
  %168 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %5)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, -1
  %171 = zext i1 %170 to i32
  %172 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %173 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %171, %174
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %180 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i64 (i32, i8*, i32, ...) @CHECK(i32 %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %137, %136, %129
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i8*, i8** @btf_log_buf, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %189
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197, %194
  %201 = load i32, i32* @stderr, align 4
  %202 = load i8*, i8** @btf_log_buf, align 8
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %200, %197, %189
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, -1
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @close(i32 %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, -1
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @close(i32 %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %216, %36
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @btf_raw_create(i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @bpf_load_btf(i8*, i32, i8*, i32, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @CHECK(i32, i8*, i32, ...) #2

declare dso_local i32 @strstr(i8*, i32) #2

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
