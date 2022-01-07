; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_sattr3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_sattr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.user_namespace = type { i32 }
%struct.timespec = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i8* null, align 8
@S_IALLUGO = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@xdr_two = common dso_local global i8* null, align 8
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.iattr*, %struct.user_namespace*)* @encode_sattr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_sattr3(%struct.xdr_stream* %0, %struct.iattr* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timespec, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %6, align 8
  store i32 24, i32* %8, align 4
  %13 = load %struct.iattr*, %struct.iattr** %5, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ATTR_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.iattr*, %struct.iattr** %5, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATTR_UID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.iattr*, %struct.iattr** %5, align 8
  %34 = getelementptr inbounds %struct.iattr, %struct.iattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATTR_GID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATTR_SIZE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 8
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.iattr*, %struct.iattr** %5, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ATTR_ATIME_SET, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 8
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.iattr*, %struct.iattr** %5, align 8
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ATTR_MTIME_SET, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 8
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i8** @xdr_reserve_space(%struct.xdr_stream* %73, i32 %74)
  store i8** %75, i8*** %9, align 8
  %76 = load %struct.iattr*, %struct.iattr** %5, align 8
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ATTR_MODE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %72
  %83 = load i8*, i8** @xdr_one, align 8
  %84 = load i8**, i8*** %9, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  %86 = load %struct.iattr*, %struct.iattr** %5, align 8
  %87 = getelementptr inbounds %struct.iattr, %struct.iattr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @S_IALLUGO, align 4
  %90 = and i32 %88, %89
  %91 = call i8* @cpu_to_be32(i32 %90)
  %92 = load i8**, i8*** %9, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  br label %98

94:                                               ; preds = %72
  %95 = load i8*, i8** @xdr_zero, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  br label %98

98:                                               ; preds = %94, %82
  %99 = load %struct.iattr*, %struct.iattr** %5, align 8
  %100 = getelementptr inbounds %struct.iattr, %struct.iattr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ATTR_UID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  %106 = load i8*, i8** @xdr_one, align 8
  %107 = load i8**, i8*** %9, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %9, align 8
  store i8* %106, i8** %107, align 8
  %109 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %110 = load %struct.iattr*, %struct.iattr** %5, align 8
  %111 = getelementptr inbounds %struct.iattr, %struct.iattr* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @from_kuid_munged(%struct.user_namespace* %109, i32 %112)
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load i8**, i8*** %9, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i32 1
  store i8** %116, i8*** %9, align 8
  store i8* %114, i8** %115, align 8
  br label %121

117:                                              ; preds = %98
  %118 = load i8*, i8** @xdr_zero, align 8
  %119 = load i8**, i8*** %9, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %9, align 8
  store i8* %118, i8** %119, align 8
  br label %121

121:                                              ; preds = %117, %105
  %122 = load %struct.iattr*, %struct.iattr** %5, align 8
  %123 = getelementptr inbounds %struct.iattr, %struct.iattr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ATTR_GID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load i8*, i8** @xdr_one, align 8
  %130 = load i8**, i8*** %9, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %9, align 8
  store i8* %129, i8** %130, align 8
  %132 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %133 = load %struct.iattr*, %struct.iattr** %5, align 8
  %134 = getelementptr inbounds %struct.iattr, %struct.iattr* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @from_kgid_munged(%struct.user_namespace* %132, i32 %135)
  %137 = call i8* @cpu_to_be32(i32 %136)
  %138 = load i8**, i8*** %9, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %9, align 8
  store i8* %137, i8** %138, align 8
  br label %144

140:                                              ; preds = %121
  %141 = load i8*, i8** @xdr_zero, align 8
  %142 = load i8**, i8*** %9, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %9, align 8
  store i8* %141, i8** %142, align 8
  br label %144

144:                                              ; preds = %140, %128
  %145 = load %struct.iattr*, %struct.iattr** %5, align 8
  %146 = getelementptr inbounds %struct.iattr, %struct.iattr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ATTR_SIZE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %144
  %152 = load i8*, i8** @xdr_one, align 8
  %153 = load i8**, i8*** %9, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %9, align 8
  store i8* %152, i8** %153, align 8
  %155 = load i8**, i8*** %9, align 8
  %156 = load %struct.iattr*, %struct.iattr** %5, align 8
  %157 = getelementptr inbounds %struct.iattr, %struct.iattr* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i8** @xdr_encode_hyper(i8** %155, i32 %159)
  store i8** %160, i8*** %9, align 8
  br label %165

161:                                              ; preds = %144
  %162 = load i8*, i8** @xdr_zero, align 8
  %163 = load i8**, i8*** %9, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %9, align 8
  store i8* %162, i8** %163, align 8
  br label %165

165:                                              ; preds = %161, %151
  %166 = load %struct.iattr*, %struct.iattr** %5, align 8
  %167 = getelementptr inbounds %struct.iattr, %struct.iattr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ATTR_ATIME_SET, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %165
  %173 = load i8*, i8** @xdr_two, align 8
  %174 = load i8**, i8*** %9, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %9, align 8
  store i8* %173, i8** %174, align 8
  %176 = load %struct.iattr*, %struct.iattr** %5, align 8
  %177 = getelementptr inbounds %struct.iattr, %struct.iattr* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @timespec64_to_timespec(i32 %178)
  %180 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %179, i32* %180, align 4
  %181 = bitcast %struct.timespec* %10 to i8*
  %182 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 %182, i64 4, i1 false)
  %183 = load i8**, i8*** %9, align 8
  %184 = call i8** @xdr_encode_nfstime3(i8** %183, %struct.timespec* %10)
  store i8** %184, i8*** %9, align 8
  br label %201

185:                                              ; preds = %165
  %186 = load %struct.iattr*, %struct.iattr** %5, align 8
  %187 = getelementptr inbounds %struct.iattr, %struct.iattr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @ATTR_ATIME, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i8*, i8** @xdr_one, align 8
  %194 = load i8**, i8*** %9, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i32 1
  store i8** %195, i8*** %9, align 8
  store i8* %193, i8** %194, align 8
  br label %200

196:                                              ; preds = %185
  %197 = load i8*, i8** @xdr_zero, align 8
  %198 = load i8**, i8*** %9, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %9, align 8
  store i8* %197, i8** %198, align 8
  br label %200

200:                                              ; preds = %196, %192
  br label %201

201:                                              ; preds = %200, %172
  %202 = load %struct.iattr*, %struct.iattr** %5, align 8
  %203 = getelementptr inbounds %struct.iattr, %struct.iattr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ATTR_MTIME_SET, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %201
  %209 = load i8*, i8** @xdr_two, align 8
  %210 = load i8**, i8*** %9, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i32 1
  store i8** %211, i8*** %9, align 8
  store i8* %209, i8** %210, align 8
  %212 = load %struct.iattr*, %struct.iattr** %5, align 8
  %213 = getelementptr inbounds %struct.iattr, %struct.iattr* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @timespec64_to_timespec(i32 %214)
  %216 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %215, i32* %216, align 4
  %217 = bitcast %struct.timespec* %7 to i8*
  %218 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 4 %218, i64 4, i1 false)
  %219 = load i8**, i8*** %9, align 8
  %220 = call i8** @xdr_encode_nfstime3(i8** %219, %struct.timespec* %7)
  br label %235

221:                                              ; preds = %201
  %222 = load %struct.iattr*, %struct.iattr** %5, align 8
  %223 = getelementptr inbounds %struct.iattr, %struct.iattr* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ATTR_MTIME, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load i8*, i8** @xdr_one, align 8
  %230 = load i8**, i8*** %9, align 8
  store i8* %229, i8** %230, align 8
  br label %234

231:                                              ; preds = %221
  %232 = load i8*, i8** @xdr_zero, align 8
  %233 = load i8**, i8*** %9, align 8
  store i8* %232, i8** %233, align 8
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %208
  ret void
}

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i8** @xdr_encode_hyper(i8**, i32) #1

declare dso_local i32 @timespec64_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8** @xdr_encode_nfstime3(i8**, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
