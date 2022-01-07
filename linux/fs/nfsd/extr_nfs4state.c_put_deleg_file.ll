; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_deleg_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_deleg_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i64, i32, i32 }
%struct.nfsd_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_file*)* @put_deleg_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_deleg_file(%struct.nfs4_file* %0) #0 {
  %2 = alloca %struct.nfs4_file*, align 8
  %3 = alloca %struct.nfsd_file*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %2, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %3, align 8
  %4 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %8 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  %14 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @swap(%struct.nfsd_file* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %20 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  %23 = icmp ne %struct.nfsd_file* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  %26 = call i32 @nfsd_file_put(%struct.nfsd_file* %25)
  br label %27

27:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @swap(%struct.nfsd_file*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
