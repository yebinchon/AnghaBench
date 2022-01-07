; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_or_add_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_or_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32 }
%struct.knfsd_fh = type { i32 }

@state_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_file* (%struct.nfs4_file*, %struct.knfsd_fh*)* @find_or_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_file* @find_or_add_file(%struct.nfs4_file* %0, %struct.knfsd_fh* %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca %struct.nfs4_file*, align 8
  %5 = alloca %struct.knfsd_fh*, align 8
  %6 = alloca %struct.nfs4_file*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %4, align 8
  store %struct.knfsd_fh* %1, %struct.knfsd_fh** %5, align 8
  %8 = load %struct.knfsd_fh*, %struct.knfsd_fh** %5, align 8
  %9 = call i32 @file_hashval(%struct.knfsd_fh* %8)
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.knfsd_fh*, %struct.knfsd_fh** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.nfs4_file* @find_file_locked(%struct.knfsd_fh* %11, i32 %12)
  store %struct.nfs4_file* %13, %struct.nfs4_file** %6, align 8
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %16 = icmp ne %struct.nfs4_file* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  store %struct.nfs4_file* %18, %struct.nfs4_file** %3, align 8
  br label %38

19:                                               ; preds = %2
  %20 = call i32 @spin_lock(i32* @state_lock)
  %21 = load %struct.knfsd_fh*, %struct.knfsd_fh** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.nfs4_file* @find_file_locked(%struct.knfsd_fh* %21, i32 %22)
  store %struct.nfs4_file* %23, %struct.nfs4_file** %6, align 8
  %24 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  %25 = icmp eq %struct.nfs4_file* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.knfsd_fh*, %struct.knfsd_fh** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %33 = call i32 @nfsd4_init_file(%struct.knfsd_fh* %30, i32 %31, %struct.nfs4_file* %32)
  %34 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  store %struct.nfs4_file* %34, %struct.nfs4_file** %6, align 8
  br label %35

35:                                               ; preds = %29, %19
  %36 = call i32 @spin_unlock(i32* @state_lock)
  %37 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  store %struct.nfs4_file* %37, %struct.nfs4_file** %3, align 8
  br label %38

38:                                               ; preds = %35, %17
  %39 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  ret %struct.nfs4_file* %39
}

declare dso_local i32 @file_hashval(%struct.knfsd_fh*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs4_file* @find_file_locked(%struct.knfsd_fh*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nfsd4_init_file(%struct.knfsd_fh*, i32, %struct.nfs4_file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
