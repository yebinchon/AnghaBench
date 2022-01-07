; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }
%struct.big_key_buf = type { i8* }
%struct.path = type { i32 }
%struct.file = type { %struct.path }

@big_key_path = common dso_local global i64 0, align 8
@ENC_AUTHTAG_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@big_key_len = common dso_local global i64 0, align 8
@BIG_KEY_FILE_THRESHOLD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ENC_KEY_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@BIG_KEY_ENC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@big_key_data = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @big_key_preparse(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.big_key_buf*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  %14 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %15 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @big_key_path, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = bitcast i32** %19 to %struct.path*
  store %struct.path* %20, %struct.path** %5, align 8
  %21 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %22 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @ENC_AUTHTAG_SIZE, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ule i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %1
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 1048576
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %34 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %29, %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %182

40:                                               ; preds = %32
  %41 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %42 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %41, i32 0, i32 1
  store i32 16, i32* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %47 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i64, i64* @big_key_len, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  store i32* %45, i32** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @BIG_KEY_FILE_THRESHOLD, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %145

55:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  %56 = load i64, i64* %10, align 8
  %57 = call %struct.big_key_buf* @big_key_alloc_buffer(i64 %56)
  store %struct.big_key_buf* %57, %struct.big_key_buf** %4, align 8
  %58 = load %struct.big_key_buf*, %struct.big_key_buf** %4, align 8
  %59 = icmp ne %struct.big_key_buf* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %182

63:                                               ; preds = %55
  %64 = load %struct.big_key_buf*, %struct.big_key_buf** %4, align 8
  %65 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %68 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @memcpy(i8* %66, i32 %69, i64 %70)
  %72 = load i64, i64* @ENC_KEY_SIZE, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kmalloc(i64 %72, i32 %73)
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %7, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %63
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %178

81:                                               ; preds = %63
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* @ENC_KEY_SIZE, align 8
  %84 = call i32 @get_random_bytes_wait(i32* %82, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %175

89:                                               ; preds = %81
  %90 = load i32, i32* @BIG_KEY_ENC, align 4
  %91 = load %struct.big_key_buf*, %struct.big_key_buf** %4, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @big_key_crypt(i32 %90, %struct.big_key_buf* %91, i64 %92, i32* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %175

98:                                               ; preds = %89
  %99 = load i64, i64* %10, align 8
  %100 = call %struct.file* @shmem_kernel_file_setup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %99, i32 0)
  store %struct.file* %100, %struct.file** %6, align 8
  %101 = load %struct.file*, %struct.file** %6, align 8
  %102 = call i64 @IS_ERR(%struct.file* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.file*, %struct.file** %6, align 8
  %106 = call i32 @PTR_ERR(%struct.file* %105)
  store i32 %106, i32* %11, align 4
  br label %175

107:                                              ; preds = %98
  %108 = load %struct.file*, %struct.file** %6, align 8
  %109 = load %struct.big_key_buf*, %struct.big_key_buf** %4, align 8
  %110 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @kernel_write(%struct.file* %108, i8* %111, i64 %112, i32* %12)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load i64, i64* %8, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %11, align 4
  %120 = load i64, i64* %8, align 8
  %121 = icmp uge i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %117
  br label %172

126:                                              ; preds = %107
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %129 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = load i64, i64* @big_key_data, align 8
  %133 = getelementptr inbounds i32*, i32** %131, i64 %132
  store i32* %127, i32** %133, align 8
  %134 = load %struct.path*, %struct.path** %5, align 8
  %135 = load %struct.file*, %struct.file** %6, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 0
  %137 = bitcast %struct.path* %134 to i8*
  %138 = bitcast %struct.path* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = load %struct.path*, %struct.path** %5, align 8
  %140 = call i32 @path_get(%struct.path* %139)
  %141 = load %struct.file*, %struct.file** %6, align 8
  %142 = call i32 @fput(%struct.file* %141)
  %143 = load %struct.big_key_buf*, %struct.big_key_buf** %4, align 8
  %144 = call i32 @big_key_free_buffer(%struct.big_key_buf* %143)
  br label %171

145:                                              ; preds = %40
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kmalloc(i64 %146, i32 %147)
  store i8* %148, i8** %13, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %182

154:                                              ; preds = %145
  %155 = load i8*, i8** %13, align 8
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %158 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @big_key_data, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* %156, i32** %162, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %165 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %168 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @memcpy(i8* %163, i32 %166, i64 %169)
  br label %171

171:                                              ; preds = %154, %126
  store i32 0, i32* %2, align 4
  br label %182

172:                                              ; preds = %125
  %173 = load %struct.file*, %struct.file** %6, align 8
  %174 = call i32 @fput(%struct.file* %173)
  br label %175

175:                                              ; preds = %172, %104, %97, %88
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @kzfree(i32* %176)
  br label %178

178:                                              ; preds = %175, %78
  %179 = load %struct.big_key_buf*, %struct.big_key_buf** %4, align 8
  %180 = call i32 @big_key_free_buffer(%struct.big_key_buf* %179)
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %171, %151, %60, %37
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.big_key_buf* @big_key_alloc_buffer(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @get_random_bytes_wait(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @big_key_crypt(i32, %struct.big_key_buf*, i64, i32*) #1

declare dso_local %struct.file* @shmem_kernel_file_setup(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @kernel_write(%struct.file*, i8*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @big_key_free_buffer(%struct.big_key_buf*) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
