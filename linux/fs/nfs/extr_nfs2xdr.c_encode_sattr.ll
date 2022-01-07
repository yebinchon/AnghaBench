; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_encode_sattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_encode_sattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.iattr = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.user_namespace = type { i32 }
%struct.timespec = type { i32 }

@NFS_sattr_sz = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@NFS2_SATTR_NOT_SET = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.iattr*, %struct.user_namespace*)* @encode_sattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_sattr(%struct.xdr_stream* %0, %struct.iattr* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timespec, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %6, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load i32, i32* @NFS_sattr_sz, align 4
  %15 = shl i32 %14, 2
  %16 = call i32* @xdr_reserve_space(%struct.xdr_stream* %13, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load %struct.iattr*, %struct.iattr** %5, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATTR_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @NFS2_SATTR_NOT_SET, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.iattr*, %struct.iattr** %5, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATTR_UID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %46 = load %struct.iattr*, %struct.iattr** %5, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @from_kuid_munged(%struct.user_namespace* %45, i32 %48)
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %60

54:                                               ; preds = %37
  %55 = load i32, i32* @NFS2_SATTR_NOT_SET, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  br label %60

60:                                               ; preds = %54, %44
  %61 = load %struct.iattr*, %struct.iattr** %5, align 8
  %62 = getelementptr inbounds %struct.iattr, %struct.iattr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATTR_GID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %69 = load %struct.iattr*, %struct.iattr** %5, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @from_kgid_munged(%struct.user_namespace* %68, i32 %71)
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %83

77:                                               ; preds = %60
  %78 = load i32, i32* @NFS2_SATTR_NOT_SET, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  br label %83

83:                                               ; preds = %77, %67
  %84 = load %struct.iattr*, %struct.iattr** %5, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ATTR_SIZE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.iattr*, %struct.iattr** %5, align 8
  %92 = getelementptr inbounds %struct.iattr, %struct.iattr* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %105

99:                                               ; preds = %83
  %100 = load i32, i32* @NFS2_SATTR_NOT_SET, align 4
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  br label %105

105:                                              ; preds = %99, %90
  %106 = load %struct.iattr*, %struct.iattr** %5, align 8
  %107 = getelementptr inbounds %struct.iattr, %struct.iattr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ATTR_ATIME_SET, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load %struct.iattr*, %struct.iattr** %5, align 8
  %114 = getelementptr inbounds %struct.iattr, %struct.iattr* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @timespec64_to_timespec(i32 %115)
  %117 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = bitcast %struct.timespec* %7 to i8*
  %119 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 4, i1 false)
  %120 = load i32*, i32** %8, align 8
  %121 = call i32* @xdr_encode_time(i32* %120, %struct.timespec* %7)
  store i32* %121, i32** %8, align 8
  br label %143

122:                                              ; preds = %105
  %123 = load %struct.iattr*, %struct.iattr** %5, align 8
  %124 = getelementptr inbounds %struct.iattr, %struct.iattr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ATTR_ATIME, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.iattr*, %struct.iattr** %5, align 8
  %131 = getelementptr inbounds %struct.iattr, %struct.iattr* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @timespec64_to_timespec(i32 %132)
  %134 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = bitcast %struct.timespec* %7 to i8*
  %136 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 4 %136, i64 4, i1 false)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32* @xdr_encode_current_server_time(i32* %137, %struct.timespec* %7)
  store i32* %138, i32** %8, align 8
  br label %142

139:                                              ; preds = %122
  %140 = load i32*, i32** %8, align 8
  %141 = call i32* @xdr_time_not_set(i32* %140)
  store i32* %141, i32** %8, align 8
  br label %142

142:                                              ; preds = %139, %129
  br label %143

143:                                              ; preds = %142, %112
  %144 = load %struct.iattr*, %struct.iattr** %5, align 8
  %145 = getelementptr inbounds %struct.iattr, %struct.iattr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ATTR_MTIME_SET, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %143
  %151 = load %struct.iattr*, %struct.iattr** %5, align 8
  %152 = getelementptr inbounds %struct.iattr, %struct.iattr* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @timespec64_to_timespec(i32 %153)
  %155 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = bitcast %struct.timespec* %7 to i8*
  %157 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 4 %157, i64 4, i1 false)
  %158 = load i32*, i32** %8, align 8
  %159 = call i32* @xdr_encode_time(i32* %158, %struct.timespec* %7)
  br label %181

160:                                              ; preds = %143
  %161 = load %struct.iattr*, %struct.iattr** %5, align 8
  %162 = getelementptr inbounds %struct.iattr, %struct.iattr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ATTR_MTIME, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %160
  %168 = load %struct.iattr*, %struct.iattr** %5, align 8
  %169 = getelementptr inbounds %struct.iattr, %struct.iattr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @timespec64_to_timespec(i32 %170)
  %172 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = bitcast %struct.timespec* %7 to i8*
  %174 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 4, i1 false)
  %175 = load i32*, i32** %8, align 8
  %176 = call i32* @xdr_encode_current_server_time(i32* %175, %struct.timespec* %7)
  br label %180

177:                                              ; preds = %160
  %178 = load i32*, i32** %8, align 8
  %179 = call i32* @xdr_time_not_set(i32* %178)
  br label %180

180:                                              ; preds = %177, %167
  br label %181

181:                                              ; preds = %180, %150
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @timespec64_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @xdr_encode_time(i32*, %struct.timespec*) #1

declare dso_local i32* @xdr_encode_current_server_time(i32*, %struct.timespec*) #1

declare dso_local i32* @xdr_time_not_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
