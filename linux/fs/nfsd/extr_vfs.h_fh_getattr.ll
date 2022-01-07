; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.h_fh_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.h_fh_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kstat = type { i32 }
%struct.path = type { i32, i32 }

@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_fh*, %struct.kstat*)* @fh_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fh_getattr(%struct.svc_fh* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.svc_fh*, align 8
  %4 = alloca %struct.kstat*, align 8
  %5 = alloca %struct.path, align 4
  store %struct.svc_fh* %0, %struct.svc_fh** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %7 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %8 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 1
  %11 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %12 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.kstat*, %struct.kstat** %4, align 8
  %18 = load i32, i32* @STATX_BASIC_STATS, align 4
  %19 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %20 = call i32 @vfs_getattr(%struct.path* %5, %struct.kstat* %17, i32 %18, i32 %19)
  %21 = call i32 @nfserrno(i32 %20)
  ret i32 %21
}

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
