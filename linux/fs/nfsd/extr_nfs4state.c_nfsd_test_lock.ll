; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd_test_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd_test_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfsd_file = type { i32 }

@NFSD_MAY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_fh*, %struct.file_lock*)* @nfsd_test_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_test_lock(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_fh*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfsd_file*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %5, align 8
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %11 = load i32, i32* @NFSD_MAY_READ, align 4
  %12 = call i32 @nfsd_file_acquire(%struct.svc_rqst* %9, %struct.svc_fh* %10, i32 %11, %struct.nfsd_file** %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.nfsd_file*, %struct.nfsd_file** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %20 = call i32 @vfs_test_lock(i32 %18, %struct.file_lock* %19)
  %21 = call i32 @nfserrno(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nfsd_file*, %struct.nfsd_file** %7, align 8
  %23 = call i32 @nfsd_file_put(%struct.nfsd_file* %22)
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @nfsd_file_acquire(%struct.svc_rqst*, %struct.svc_fh*, i32, %struct.nfsd_file**) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @vfs_test_lock(i32, %struct.file_lock*) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
