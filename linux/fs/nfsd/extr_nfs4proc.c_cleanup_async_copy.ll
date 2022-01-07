; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_cleanup_async_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_cleanup_async_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_copy = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_copy*)* @cleanup_async_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_async_copy(%struct.nfsd4_copy* %0) #0 {
  %2 = alloca %struct.nfsd4_copy*, align 8
  store %struct.nfsd4_copy* %0, %struct.nfsd4_copy** %2, align 8
  %3 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %4 = call i32 @nfs4_free_cp_state(%struct.nfsd4_copy* %3)
  %5 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %6 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @nfsd_file_put(i32 %7)
  %9 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %10 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nfsd_file_put(i32 %11)
  %13 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %14 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %19 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %22 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %27 = call i32 @nfs4_put_copy(%struct.nfsd4_copy* %26)
  ret void
}

declare dso_local i32 @nfs4_free_cp_state(%struct.nfsd4_copy*) #1

declare dso_local i32 @nfsd_file_put(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs4_put_copy(%struct.nfsd4_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
