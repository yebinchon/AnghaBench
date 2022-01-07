; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_share_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_share_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i32 }
%struct.nfs4_file = type { i32, i32 }

@nfs_ok = common dso_local global i32 0, align 4
@nfserr_locked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_fh*, i32)* @nfs4_share_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_share_conflict(%struct.svc_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_fh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_file*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_fh* %0, %struct.svc_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @nfs_ok, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %10 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %9, i32 0, i32 0
  %11 = call %struct.nfs4_file* @find_file(i32* %10)
  store %struct.nfs4_file* %11, %struct.nfs4_file** %6, align 8
  %12 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %13 = icmp ne %struct.nfs4_file* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %18 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %21 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @nfserr_locked, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %16
  %29 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %30 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %33 = call i32 @put_nfs4_file(%struct.nfs4_file* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nfs4_file* @find_file(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_nfs4_file(%struct.nfs4_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
