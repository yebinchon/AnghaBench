; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_decode_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_decode_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_entry = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i64 0, align 8
@EBADCOOKIE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTED_ON_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_decode_dirent(%struct.xdr_stream* %0, %struct.nfs_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %15 = call i64* @xdr_inline_decode(%struct.xdr_stream* %14, i32 4)
  store i64* %15, i64** %12, align 8
  %16 = load i64*, i64** %12, align 8
  %17 = icmp ne i64* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %198

25:                                               ; preds = %3
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @xdr_zero, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %32 = call i64* @xdr_inline_decode(%struct.xdr_stream* %31, i32 4)
  store i64* %32, i64** %12, align 8
  %33 = load i64*, i64** %12, align 8
  %34 = icmp ne i64* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %198

42:                                               ; preds = %30
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @xdr_zero, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %198

50:                                               ; preds = %42
  %51 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @EBADCOOKIE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %198

55:                                               ; preds = %25
  %56 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %57 = call i64* @xdr_inline_decode(%struct.xdr_stream* %56, i32 12)
  store i64* %57, i64** %12, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = icmp ne i64* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %198

67:                                               ; preds = %55
  %68 = load i64*, i64** %12, align 8
  %69 = call i64* @xdr_decode_hyper(i64* %68, i32* %11)
  store i64* %69, i64** %12, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = call i32 @be32_to_cpup(i64* %70)
  %72 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %73 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %75 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64* @xdr_inline_decode(%struct.xdr_stream* %74, i32 %77)
  store i64* %78, i64** %12, align 8
  %79 = load i64*, i64** %12, align 8
  %80 = icmp ne i64* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %198

88:                                               ; preds = %67
  %89 = load i64*, i64** %12, align 8
  %90 = bitcast i64* %89 to i8*
  %91 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %92 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %94 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %93, i32 0, i32 3
  store i32 1, i32* %94, align 8
  %95 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %96 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %95, i32 0, i32 6
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %101 = call i64 @decode_attr_bitmap(%struct.xdr_stream* %99, i32* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %198

106:                                              ; preds = %88
  %107 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %108 = call i64 @decode_attr_length(%struct.xdr_stream* %107, i32* %10, i32* %8)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EAGAIN, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %198

113:                                              ; preds = %106
  %114 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %116 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %117 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %116, i32 0, i32 6
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %120 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %123 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %126 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @decode_getfattr_attrs(%struct.xdr_stream* %114, i32* %115, %struct.TYPE_2__* %118, i32 %121, i32* null, i32 %124, i32 %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %113
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %198

133:                                              ; preds = %113
  %134 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %135 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %134, i32 0, i32 6
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NFS_ATTR_FATTR_MOUNTED_ON_FILEID, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %133
  %143 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %144 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %143, i32 0, i32 6
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %149 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  br label %168

150:                                              ; preds = %133
  %151 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %152 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %151, i32 0, i32 6
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %150
  %160 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %161 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %160, i32 0, i32 6
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %166 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %159, %150
  br label %168

168:                                              ; preds = %167, %142
  %169 = load i32, i32* @DT_UNKNOWN, align 4
  %170 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %171 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %173 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %172, i32 0, i32 6
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %168
  %181 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %182 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %181, i32 0, i32 6
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @nfs_umode_to_dtype(i32 %185)
  %187 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %188 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %180, %168
  %190 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %191 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %194 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %197 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 4
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %189, %130, %110, %103, %85, %64, %50, %47, %39, %22
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64* @xdr_inline_decode(%struct.xdr_stream*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64* @xdr_decode_hyper(i64*, i32*) #2

declare dso_local i32 @be32_to_cpup(i64*) #2

declare dso_local i64 @decode_attr_bitmap(%struct.xdr_stream*, i32*) #2

declare dso_local i64 @decode_attr_length(%struct.xdr_stream*, i32*, i32*) #2

declare dso_local i64 @decode_getfattr_attrs(%struct.xdr_stream*, i32*, %struct.TYPE_2__*, i32, i32*, i32, i32) #2

declare dso_local i32 @nfs_umode_to_dtype(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
