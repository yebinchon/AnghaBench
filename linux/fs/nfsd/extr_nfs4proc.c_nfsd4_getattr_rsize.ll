; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_getattr_rsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_getattr_rsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_op = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@FATTR4_WORD0_FS_LOCATIONS = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i64 0, align 8
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILEHANDLE = common dso_local global i32 0, align 4
@NFS4_FHSIZE = common dso_local global i64 0, align 8
@FATTR4_WORD2_SECURITY_LABEL = common dso_local global i32 0, align 4
@NFS4_MAXLABELLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_op*)* @nfsd4_getattr_rsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_getattr_rsize(%struct.svc_rqst* %0, %struct.nfsd4_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_op*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_op* %1, %struct.nfsd4_op** %5, align 8
  %11 = load %struct.nfsd4_op*, %struct.nfsd4_op** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %31 = call i32 @svc_max_payload(%struct.svc_rqst* %30)
  store i32 %31, i32* %3, align 4
  br label %119

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FATTR4_WORD0_FS_LOCATIONS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %39 = call i32 @svc_max_payload(%struct.svc_rqst* %38)
  store i32 %39, i32* %3, align 4
  br label %119

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i64, i64* @IDMAP_NAMESZ, align 8
  %47 = add nsw i64 %46, 4
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %45, %40
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i64, i64* @IDMAP_NAMESZ, align 8
  %63 = add nsw i64 %62, 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %61, %56
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i64, i64* @NFS4_FHSIZE, align 8
  %79 = add nsw i64 %78, 4
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %77, %72
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @FATTR4_WORD2_SECURITY_LABEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i64, i64* @NFS4_MAXLABELLEN, align 8
  %95 = add nsw i64 %94, 12
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* @FATTR4_WORD2_SECURITY_LABEL, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %93, %88
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @hweight32(i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @hweight32(i32 %107)
  %109 = add nsw i32 %106, %108
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @hweight32(i32 %110)
  %112 = add nsw i32 %109, %111
  %113 = mul nsw i32 16, %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 20
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %104, %37, %29
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
