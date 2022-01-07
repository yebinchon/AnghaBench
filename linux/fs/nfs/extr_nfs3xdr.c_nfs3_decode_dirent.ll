; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_decode_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_decode_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_entry = type { i32, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.user_namespace = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i64 0, align 8
@EBADCOOKIE = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_V3 = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTED_ON_FILEID = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"NFS: directory entry contains invalid file handle\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_decode_dirent(%struct.xdr_stream* %0, %struct.nfs_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_namespace*, align 8
  %9 = alloca %struct.nfs_entry, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %13, i32 0, i32 9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.user_namespace* @rpc_userns(i32 %17)
  store %struct.user_namespace* %18, %struct.user_namespace** %8, align 8
  %19 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %20 = bitcast %struct.nfs_entry* %9 to i8*
  %21 = bitcast %struct.nfs_entry* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 64, i1 false)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = call i64* @xdr_inline_decode(%struct.xdr_stream* %22, i32 4)
  store i64* %23, i64** %10, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = icmp ne i64* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %215

33:                                               ; preds = %3
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @xdr_zero, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %40 = call i64* @xdr_inline_decode(%struct.xdr_stream* %39, i32 4)
  store i64* %40, i64** %10, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = icmp ne i64* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %215

50:                                               ; preds = %38
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @xdr_zero, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %215

58:                                               ; preds = %50
  %59 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %60 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @EBADCOOKIE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %215

63:                                               ; preds = %33
  %64 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %65 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %66 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %65, i32 0, i32 1
  %67 = call i32 @decode_fileid3(%struct.xdr_stream* %64, i64* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %215

73:                                               ; preds = %63
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %75 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %75, i32 0, i32 8
  %77 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %78 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %77, i32 0, i32 7
  %79 = call i32 @decode_inline_filename3(%struct.xdr_stream* %74, i32* %76, i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %215

85:                                               ; preds = %73
  %86 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %87 = call i32 @decode_cookie3(%struct.xdr_stream* %86, i32* %12)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %215

93:                                               ; preds = %85
  %94 = load i32, i32* @DT_UNKNOWN, align 4
  %95 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %96 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %199

99:                                               ; preds = %93
  %100 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %101 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %100, i32 0, i32 5
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %105 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %106 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %105, i32 0, i32 5
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %109 = call i32 @decode_post_op_attr(%struct.xdr_stream* %104, %struct.TYPE_4__* %107, %struct.user_namespace* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %215

115:                                              ; preds = %99
  %116 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %117 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %116, i32 0, i32 5
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NFS_ATTR_FATTR_V3, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %126 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %125, i32 0, i32 5
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @nfs_umode_to_dtype(i32 %129)
  %131 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %132 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %115
  %134 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %135 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %134, i32 0, i32 5
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %140 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %133
  %144 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %145 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %148 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %147, i32 0, i32 5
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  store i64 %146, i64* %150, align 8
  %151 = load i32, i32* @NFS_ATTR_FATTR_MOUNTED_ON_FILEID, align 4
  %152 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %153 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %152, i32 0, i32 5
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %143, %133
  %159 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %160 = call i64* @xdr_inline_decode(%struct.xdr_stream* %159, i32 4)
  store i64* %160, i64** %10, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = icmp ne i64* %161, null
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i64 @unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %215

170:                                              ; preds = %158
  %171 = load i64*, i64** %10, align 8
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @xdr_zero, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %177 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %178 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @decode_nfs_fh3(%struct.xdr_stream* %176, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %175
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @E2BIG, align 4
  %187 = sub nsw i32 0, %186
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %208

190:                                              ; preds = %184
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %215

192:                                              ; preds = %175
  br label %198

193:                                              ; preds = %170
  %194 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %195 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @zero_nfs_fh3(i32 %196)
  br label %198

198:                                              ; preds = %193, %192
  br label %199

199:                                              ; preds = %198, %93
  %200 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %201 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %204 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %207 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  store i32 0, i32* %4, align 4
  br label %215

208:                                              ; preds = %189
  %209 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %210 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %211 = bitcast %struct.nfs_entry* %210 to i8*
  %212 = bitcast %struct.nfs_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 64, i1 false)
  %213 = load i32, i32* @EAGAIN, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %208, %199, %190, %167, %113, %91, %83, %71, %58, %55, %47, %30
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.user_namespace* @rpc_userns(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_fileid3(%struct.xdr_stream*, i64*) #1

declare dso_local i32 @decode_inline_filename3(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_cookie3(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, %struct.TYPE_4__*, %struct.user_namespace*) #1

declare dso_local i32 @nfs_umode_to_dtype(i32) #1

declare dso_local i32 @decode_nfs_fh3(%struct.xdr_stream*, i32) #1

declare dso_local i32 @zero_nfs_fh3(i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
