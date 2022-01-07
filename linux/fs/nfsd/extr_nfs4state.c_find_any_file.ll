; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_any_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_any_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_file = type { i32 }
%struct.nfs4_file = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfsd_file* @find_any_file(%struct.nfs4_file* %0) #0 {
  %2 = alloca %struct.nfs4_file*, align 8
  %3 = alloca %struct.nfsd_file*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %2, align 8
  %4 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call %struct.nfsd_file* @__nfs4_get_fd(%struct.nfs4_file* %7, i32 %8)
  store %struct.nfsd_file* %9, %struct.nfsd_file** %3, align 8
  %10 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  %11 = icmp ne %struct.nfsd_file* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = call %struct.nfsd_file* @__nfs4_get_fd(%struct.nfs4_file* %13, i32 %14)
  store %struct.nfsd_file* %15, %struct.nfsd_file** %3, align 8
  %16 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  %17 = icmp ne %struct.nfsd_file* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call %struct.nfsd_file* @__nfs4_get_fd(%struct.nfs4_file* %19, i32 %20)
  store %struct.nfsd_file* %21, %struct.nfsd_file** %3, align 8
  br label %22

22:                                               ; preds = %18, %12
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  ret %struct.nfsd_file* %27
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfsd_file* @__nfs4_get_fd(%struct.nfs4_file*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
