; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_nfs4_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_nfs4_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32, i32, i32, i32, i32 }

@state_lock = common dso_local global i32 0, align 4
@nfsd4_free_file_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_nfs4_file(%struct.nfs4_file* %0) #0 {
  %2 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %2, align 8
  %3 = call i32 @might_lock(i32* @state_lock)
  %4 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %4, i32 0, i32 4
  %6 = call i64 @refcount_dec_and_lock(i32* %5, i32* @state_lock)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %10 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %9, i32 0, i32 3
  %11 = call i32 @hlist_del_rcu(i32* %10)
  %12 = call i32 @spin_unlock(i32* @state_lock)
  %13 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %13, i32 0, i32 2
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %21 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %20, i32 0, i32 1
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %28 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %27, i32 0, i32 0
  %29 = load i32, i32* @nfsd4_free_file_rcu, align 4
  %30 = call i32 @call_rcu(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i64 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
