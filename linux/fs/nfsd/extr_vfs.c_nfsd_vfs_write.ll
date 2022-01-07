; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_vfs_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_vfs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.svc_rqst = type { i32, i32 }
%struct.svc_fh = type { %struct.svc_export* }
%struct.svc_export = type { i32 }
%struct.file = type { i32 }
%struct.kvec = type { i32 }
%struct.iov_iter = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@RQ_LOCAL = common dso_local global i32 0, align 4
@PF_LESS_THROTTLE = common dso_local global i32 0, align 4
@NFS_UNSTABLE = common dso_local global i32 0, align 4
@RWF_SYNC = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@nfsdstats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@nfsd_net_id = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_vfs_write(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.file* %2, i32 %3, %struct.kvec* %4, i32 %5, i64* %6, i32 %7) #0 {
  %9 = alloca %struct.svc_rqst*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.svc_export*, align 8
  %18 = alloca %struct.iov_iter, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %9, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %10, align 8
  store %struct.file* %2, %struct.file** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.kvec* %4, %struct.kvec** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %22, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %30 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i64*, i64** %15, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @trace_nfsd_write_opened(%struct.svc_rqst* %29, %struct.svc_fh* %30, i32 %31, i64 %33)
  %35 = load i32, i32* @RQ_LOCAL, align 4
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %8
  %41 = load i32, i32* @PF_LESS_THROTTLE, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %8
  %47 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %48 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %47, i32 0, i32 0
  %49 = load %struct.svc_export*, %struct.svc_export** %48, align 8
  store %struct.svc_export* %49, %struct.svc_export** %17, align 8
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %51 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.svc_export*, %struct.svc_export** %17, align 8
  %56 = call i64 @EX_WGATHER(%struct.svc_export* %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi i1 [ false, %46 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %21, align 4
  %61 = load %struct.svc_export*, %struct.svc_export** %17, align 8
  %62 = call i32 @EX_ISSYNC(%struct.svc_export* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @NFS_UNSTABLE, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %64, %58
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %21, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @RWF_SYNC, align 4
  %74 = load i32, i32* %24, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %24, align 4
  br label %76

76:                                               ; preds = %72, %69, %66
  %77 = load i32, i32* @WRITE, align 4
  %78 = load %struct.kvec*, %struct.kvec** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i64*, i64** %15, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @iov_iter_kvec(%struct.iov_iter* %18, i32 %77, %struct.kvec* %78, i32 %79, i64 %81)
  %83 = load %struct.file*, %struct.file** %11, align 8
  %84 = load i32, i32* %24, align 4
  %85 = call i32 @vfs_iter_write(%struct.file* %83, %struct.iov_iter* %18, i32* %22, i32 %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %114

89:                                               ; preds = %76
  %90 = load i64*, i64** %15, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsdstats, i32 0, i32 0), align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsdstats, i32 0, i32 0), align 8
  %94 = load %struct.file*, %struct.file** %11, align 8
  %95 = call i32 @fsnotify_modify(%struct.file* %94)
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %89
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load %struct.file*, %struct.file** %11, align 8
  %103 = call i32 @wait_for_concurrent_writes(%struct.file* %102)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %108 = call i32 @SVC_NET(%struct.svc_rqst* %107)
  %109 = load i32, i32* @nfsd_net_id, align 4
  %110 = call i32 @net_generic(i32 %108, i32 %109)
  %111 = call i32 @nfsd_reset_boot_verifier(i32 %110)
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %98, %89
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %20, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %119 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i64*, i64** %15, align 8
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @trace_nfsd_write_io_done(%struct.svc_rqst* %118, %struct.svc_fh* %119, i32 %120, i64 %122)
  %124 = load i32, i32* @nfs_ok, align 4
  store i32 %124, i32* %19, align 4
  br label %133

125:                                              ; preds = %114
  %126 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %127 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @trace_nfsd_write_err(%struct.svc_rqst* %126, %struct.svc_fh* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @nfserrno(i32 %131)
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %125, %117
  %134 = load i32, i32* @RQ_LOCAL, align 4
  %135 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %136 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %135, i32 0, i32 1
  %137 = call i64 @test_bit(i32 %134, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* @PF_LESS_THROTTLE, align 4
  %142 = call i32 @current_restore_flags(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* %19, align 4
  ret i32 %144
}

declare dso_local i32 @trace_nfsd_write_opened(%struct.svc_rqst*, %struct.svc_fh*, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @EX_WGATHER(%struct.svc_export*) #1

declare dso_local i32 @EX_ISSYNC(%struct.svc_export*) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @vfs_iter_write(%struct.file*, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @fsnotify_modify(%struct.file*) #1

declare dso_local i32 @wait_for_concurrent_writes(%struct.file*) #1

declare dso_local i32 @nfsd_reset_boot_verifier(i32) #1

declare dso_local i32 @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @trace_nfsd_write_io_done(%struct.svc_rqst*, %struct.svc_fh*, i32, i64) #1

declare dso_local i32 @trace_nfsd_write_err(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @current_restore_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
