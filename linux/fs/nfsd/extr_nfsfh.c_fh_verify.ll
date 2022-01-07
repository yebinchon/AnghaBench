; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_fh_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_fh_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.svc_export*, %struct.dentry* }
%struct.svc_export = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"nfsd: fh_verify(%s)\0A\00", align 1
@NFSD_MAY_LOCK = common dso_local global i32 0, align 4
@NFSD_MAY_BYPASS_GSS = common dso_local global i32 0, align 4
@NFSD_MAY_BYPASS_GSS_ON_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"fh_verify: %pd2 permission failure, acc=%x, error=%d\0A\00", align 1
@nfserr_stale = common dso_local global i64 0, align 8
@nfsdstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fh_verify(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.svc_export*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %13 = call i32 @SVCFH_fmt(%struct.svc_fh* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.dentry*
  %16 = call i32 (i8*, %struct.dentry*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15)
  %17 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %18 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %17, i32 0, i32 1
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %24 = call i64 @nfsd_set_fh_dentry(%struct.svc_rqst* %22, %struct.svc_fh* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %105

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %31 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %30, i32 0, i32 1
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  store %struct.dentry* %32, %struct.dentry** %10, align 8
  %33 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %34 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %33, i32 0, i32 0
  %35 = load %struct.svc_export*, %struct.svc_export** %34, align 8
  store %struct.svc_export* %35, %struct.svc_export** %9, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %10, align 8
  %38 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %39 = call i64 @check_pseudo_root(%struct.svc_rqst* %36, %struct.dentry* %37, %struct.svc_export* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %105

43:                                               ; preds = %29
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %45 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %46 = call i64 @nfsd_setuser_and_check_port(%struct.svc_rqst* %44, %struct.svc_export* %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %105

50:                                               ; preds = %43
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %52 = load %struct.dentry*, %struct.dentry** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @nfsd_mode_check(%struct.svc_rqst* %51, %struct.dentry* %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %105

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NFSD_MAY_LOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @NFSD_MAY_BYPASS_GSS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  br label %90

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @NFSD_MAY_BYPASS_GSS_ON_ROOT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %76 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.dentry*, %struct.dentry** %77, align 8
  %79 = load %struct.dentry*, %struct.dentry** %10, align 8
  %80 = icmp eq %struct.dentry* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %74, %69
  %83 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %85 = call i64 @check_nfsd_access(%struct.svc_export* %83, %struct.svc_rqst* %84)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %105

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81, %68
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %92 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %93 = load %struct.dentry*, %struct.dentry** %10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @nfsd_permission(%struct.svc_rqst* %91, %struct.svc_export* %92, %struct.dentry* %93, i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.dentry*, %struct.dentry** %10, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @ntohl(i64 %101)
  %103 = call i32 (i8*, %struct.dentry*, ...) @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %99, i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104, %88, %57, %49, %42, %27
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @nfserr_stale, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsdstats, i32 0, i32 0), align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsdstats, i32 0, i32 0), align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i64, i64* %11, align 8
  ret i64 %113
}

declare dso_local i32 @dprintk(i8*, %struct.dentry*, ...) #1

declare dso_local i32 @SVCFH_fmt(%struct.svc_fh*) #1

declare dso_local i64 @nfsd_set_fh_dentry(%struct.svc_rqst*, %struct.svc_fh*) #1

declare dso_local i64 @check_pseudo_root(%struct.svc_rqst*, %struct.dentry*, %struct.svc_export*) #1

declare dso_local i64 @nfsd_setuser_and_check_port(%struct.svc_rqst*, %struct.svc_export*) #1

declare dso_local i64 @nfsd_mode_check(%struct.svc_rqst*, %struct.dentry*, i32) #1

declare dso_local i64 @check_nfsd_access(%struct.svc_export*, %struct.svc_rqst*) #1

declare dso_local i64 @nfsd_permission(%struct.svc_rqst*, %struct.svc_export*, %struct.dentry*, i32) #1

declare dso_local i32 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
