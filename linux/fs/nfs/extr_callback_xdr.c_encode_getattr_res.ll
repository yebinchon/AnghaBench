; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_encode_getattr_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_encode_getattr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.xdr_stream = type { i64 }
%struct.cb_getattrres = type { i64, i32, i32, i32, i32, i32 }

@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)* @encode_getattr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encode_getattr_res(%struct.svc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cb_getattrres*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cb_getattrres*
  store %struct.cb_getattrres* %11, %struct.cb_getattrres** %7, align 8
  store i64* null, i64** %8, align 8
  %12 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %13 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %114

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %24 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %27 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i64 @encode_attr_bitmap(%struct.xdr_stream* %22, i32 %25, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %114

37:                                               ; preds = %21
  %38 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %39 = call i64 @cpu_to_be32(i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %41 = call i64* @xdr_reserve_space(%struct.xdr_stream* %40, i32 8)
  store i64* %41, i64** %8, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = icmp ne i64* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %114

49:                                               ; preds = %37
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %51 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %52 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %55 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @encode_attr_change(%struct.xdr_stream* %50, i32 %53, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %114

64:                                               ; preds = %49
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %66 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %67 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %70 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @encode_attr_size(%struct.xdr_stream* %65, i32 %68, i32 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %114

79:                                               ; preds = %64
  %80 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %81 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %82 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %85 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %84, i32 0, i32 3
  %86 = call i64 @encode_attr_ctime(%struct.xdr_stream* %80, i32 %83, i32* %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %114

93:                                               ; preds = %79
  %94 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %95 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %96 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cb_getattrres*, %struct.cb_getattrres** %7, align 8
  %99 = getelementptr inbounds %struct.cb_getattrres, %struct.cb_getattrres* %98, i32 0, i32 1
  %100 = call i64 @encode_attr_mtime(%struct.xdr_stream* %94, i32 %97, i32* %99)
  store i64 %100, i64* %9, align 8
  %101 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %102 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = bitcast i64* %106 to i8*
  %108 = ptrtoint i8* %104 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i64 @htonl(i32 %111)
  %113 = load i64*, i64** %8, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %93, %92, %78, %63, %48, %36, %20
  %115 = load i64, i64* %9, align 8
  ret i64 %115
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @encode_attr_bitmap(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @encode_attr_change(%struct.xdr_stream*, i32, i32) #1

declare dso_local i64 @encode_attr_size(%struct.xdr_stream*, i32, i32) #1

declare dso_local i64 @encode_attr_ctime(%struct.xdr_stream*, i32, i32*) #1

declare dso_local i64 @encode_attr_mtime(%struct.xdr_stream*, i32, i32*) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
