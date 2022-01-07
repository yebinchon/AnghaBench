; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_put_stid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_put_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stid = type { i32 (%struct.nfs4_stid*)*, %struct.TYPE_4__, i32, %struct.nfs4_client*, %struct.nfs4_file* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_client = type { i32, i32 }
%struct.nfs4_file = type { i32 }

@close_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_put_stid(%struct.nfs4_stid* %0) #0 {
  %2 = alloca %struct.nfs4_stid*, align 8
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca %struct.nfs4_client*, align 8
  store %struct.nfs4_stid* %0, %struct.nfs4_stid** %2, align 8
  %5 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %5, i32 0, i32 4
  %7 = load %struct.nfs4_file*, %struct.nfs4_file** %6, align 8
  store %struct.nfs4_file* %7, %struct.nfs4_file** %3, align 8
  %8 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %8, i32 0, i32 3
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  store %struct.nfs4_client* %10, %struct.nfs4_client** %4, align 8
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %11, i32 0, i32 0
  %13 = call i32 @might_lock(i32* %12)
  %14 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %14, i32 0, i32 2
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %16, i32 0, i32 0
  %18 = call i32 @refcount_dec_and_lock(i32* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 @wake_up_all(i32* @close_wq)
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %23, i32 0, i32 1
  %25 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %26 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @idr_remove(i32* %24, i32 %29)
  %31 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %32 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %35 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %34, i32 0, i32 0
  %36 = load i32 (%struct.nfs4_stid*)*, i32 (%struct.nfs4_stid*)** %35, align 8
  %37 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %38 = call i32 %36(%struct.nfs4_stid* %37)
  %39 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %40 = icmp ne %struct.nfs4_file* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %43 = call i32 @put_nfs4_file(%struct.nfs4_file* %42)
  br label %44

44:                                               ; preds = %20, %41, %22
  ret void
}

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i32 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_nfs4_file(%struct.nfs4_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
