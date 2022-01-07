; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_get_info_test = type { i8*, i32 (i32)*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_btf_info = type { i32, i32, i32 }

@get_info_tests = common dso_local global %struct.btf_get_info_test* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BTF GET_INFO test[%u] (%s): \00", align 1
@hdr_tmpl = common dso_local global i32 0, align 4
@btf_log_buf = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"!user_btf\00", align 1
@BTF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [118 x i8] c"err:%d errno:%d info.id:%u info_len:%u sizeof(info):%lu raw_btf_size:%u info.btf_size:%u expected_nbytes:%u memcmp:%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%u...\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"user_btf[%u]:%x != 0xff\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_test_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_get_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_get_info_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bpf_btf_info, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** @get_info_tests, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %15, i64 %18
  store %struct.btf_get_info_test* %19, %struct.btf_get_info_test** %4, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %20 = bitcast %struct.bpf_btf_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  store i32 -1, i32* %11, align 4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %24 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %25)
  %27 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %28 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %27, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %33 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %32, i32 0, i32 1
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 %34(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %201

37:                                               ; preds = %1
  %38 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %39 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %42 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %45 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @btf_raw_create(i32* @hdr_tmpl, i32 %40, i32 %43, i32 %46, i32* %5, i32* null)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %201

51:                                               ; preds = %37
  %52 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %5, align 4
  %54 = call i32* @malloc(i32 %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 (i32, i8*, ...) @CHECK(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 -1, i32* %12, align 4
  br label %174

62:                                               ; preds = %51
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i8*, i8** @btf_log_buf, align 8
  %66 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %68 = call i32 @bpf_load_btf(i32* %63, i32 %64, i8* %65, i32 %66, i64 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, -1
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* @errno, align 4
  %73 = call i64 (i32, i8*, ...) @CHECK(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i32 -1, i32* %12, align 4
  br label %174

76:                                               ; preds = %62
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %79 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @min(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %76
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %93, %94
  %96 = call i32 @memset(i32* %92, i32 255, i32 %95)
  br label %97

97:                                               ; preds = %88, %76
  store i32 12, i32* %14, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @ptr_to_u64(i32* %98)
  %100 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %10, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %10, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  store i32 0, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @bpf_obj_get_info_by_fd(i32 %103, %struct.bpf_btf_info* %10, i32* %14)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %126, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %10, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ne i64 %113, 12
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @memcmp(i32* %121, i32* %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %120, %115, %111, %107, %97
  %127 = phi i1 [ true, %115 ], [ true, %111 ], [ true, %107 ], [ true, %97 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @errno, align 4
  %131 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %10, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %5, align 4
  %135 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %10, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i64 (i32, i8*, ...) @CHECK(i32 %128, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130, i32 %132, i32 %133, i64 12, i32 %134, i32 %136, i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %126
  store i32 -1, i32* %12, align 4
  br label %174

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %170, %142
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %171

147:                                              ; preds = %143
  %148 = load i32, i32* @stderr, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 255
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %7, align 4
  %160 = sub i32 %159, 1
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sub i32 %162, 1
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i64 (i32, i8*, ...) @CHECK(i32 %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %147
  store i32 -1, i32* %12, align 4
  br label %174

170:                                              ; preds = %147
  br label %143

171:                                              ; preds = %143
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %169, %141, %75, %61
  %175 = load i8*, i8** @btf_log_buf, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182, %179
  %186 = load i32, i32* @stderr, align 4
  %187 = load i8*, i8** @btf_log_buf, align 8
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %185, %182, %174
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @free(i32* %190)
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @free(i32* %192)
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, -1
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @close(i32 %197)
  br label %199

199:                                              ; preds = %196, %189
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %50, %31
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @btf_raw_create(i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i64 @CHECK(i32, i8*, ...) #2

declare dso_local i32 @bpf_load_btf(i32*, i32, i8*, i32, i64) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ptr_to_u64(i32*) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_btf_info*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
