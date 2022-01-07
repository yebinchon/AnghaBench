; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.path = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dentry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@nfserr_jukebox = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"nfsd4_encode_components(\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"/%pd\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.path*, %struct.path*)* @nfsd4_encode_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_path(%struct.xdr_stream* %0, %struct.path* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dentry**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dentry**, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  %15 = load %struct.path*, %struct.path** %6, align 8
  %16 = bitcast %struct.path* %7 to i8*
  %17 = bitcast %struct.path* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  store %struct.dentry** null, %struct.dentry*** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %18, i64* %11, align 8
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @path_get(%struct.path* %7)
  br label %21

21:                                               ; preds = %57, %37, %3
  %22 = load %struct.path*, %struct.path** %5, align 8
  %23 = call i64 @path_equal(%struct.path* %7, %struct.path* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %72

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = call i64 @follow_up(%struct.path* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %21

38:                                               ; preds = %34
  br label %130

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 16
  %47 = zext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.dentry** @krealloc(%struct.dentry** %44, i32 %49, i32 %50)
  store %struct.dentry** %51, %struct.dentry*** %12, align 8
  %52 = load %struct.dentry**, %struct.dentry*** %12, align 8
  %53 = icmp ne %struct.dentry** %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %130

55:                                               ; preds = %43
  %56 = load %struct.dentry**, %struct.dentry*** %12, align 8
  store %struct.dentry** %56, %struct.dentry*** %9, align 8
  br label %57

57:                                               ; preds = %55, %39
  %58 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.dentry*
  %61 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.dentry*, %struct.dentry** %61, i64 %64
  store %struct.dentry* %60, %struct.dentry** %65, align 8
  %66 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.dentry*
  %69 = call %struct.dentry* @dget_parent(%struct.dentry* %68)
  %70 = ptrtoint %struct.dentry* %69 to i64
  %71 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  br label %21

72:                                               ; preds = %25
  %73 = load i64, i64* @nfserr_resource, align 8
  store i64 %73, i64* %11, align 8
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %75 = call i64* @xdr_reserve_space(%struct.xdr_stream* %74, i32 4)
  store i64* %75, i64** %8, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %130

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cpu_to_be32(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %8, align 8
  store i64 %82, i64* %83, align 8
  br label %85

85:                                               ; preds = %112, %79
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %85
  %89 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sub i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dentry*, %struct.dentry** %89, i64 %92
  %94 = load %struct.dentry*, %struct.dentry** %93, align 8
  store %struct.dentry* %94, %struct.dentry** %13, align 8
  %95 = load %struct.dentry*, %struct.dentry** %13, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.dentry*, %struct.dentry** %13, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  %102 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, 4
  %105 = call i64* @xdr_reserve_space(%struct.xdr_stream* %102, i32 %104)
  store i64* %105, i64** %8, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %88
  %109 = load %struct.dentry*, %struct.dentry** %13, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  br label %130

112:                                              ; preds = %88
  %113 = load i64*, i64** %8, align 8
  %114 = load %struct.dentry*, %struct.dentry** %13, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i64* @xdr_encode_opaque(i64* %113, i32 %117, i32 %118)
  store i64* %119, i64** %8, align 8
  %120 = load %struct.dentry*, %struct.dentry** %13, align 8
  %121 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %120)
  %122 = load %struct.dentry*, %struct.dentry** %13, align 8
  %123 = getelementptr inbounds %struct.dentry, %struct.dentry* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.dentry*, %struct.dentry** %13, align 8
  %126 = call i32 @dput(%struct.dentry* %125)
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, -1
  store i32 %128, i32* %10, align 4
  br label %85

129:                                              ; preds = %85
  store i64 0, i64* %11, align 8
  br label %130

130:                                              ; preds = %129, %108, %78, %54, %38
  %131 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %135, %130
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %10, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.dentry*, %struct.dentry** %136, i64 %139
  %141 = load %struct.dentry*, %struct.dentry** %140, align 8
  %142 = call i32 @dput(%struct.dentry* %141)
  br label %132

143:                                              ; preds = %132
  %144 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %145 = call i32 @kfree(%struct.dentry** %144)
  %146 = call i32 @path_put(%struct.path* %7)
  %147 = load i64, i64* %11, align 8
  ret i64 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, ...) #2

declare dso_local i32 @path_get(%struct.path*) #2

declare dso_local i64 @path_equal(%struct.path*, %struct.path*) #2

declare dso_local i64 @follow_up(%struct.path*) #2

declare dso_local %struct.dentry** @krealloc(%struct.dentry**, i32, i32) #2

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #2

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i64* @xdr_encode_opaque(i64*, i32, i32) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local i32 @kfree(%struct.dentry**) #2

declare dso_local i32 @path_put(%struct.path*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
