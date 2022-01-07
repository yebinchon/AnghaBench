; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_ol_stateid_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_ol_stateid_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i32, %struct.nfs4_stid }
%struct.nfs4_stid = type { %struct.TYPE_4__, i32, %struct.nfs4_client* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_client = type { i32, i32 }
%struct.list_head = type { i32 }

@close_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ol_stateid*, %struct.list_head*)* @put_ol_stateid_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_ol_stateid_locked(%struct.nfs4_ol_stateid* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.nfs4_stid*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %7, i32 0, i32 1
  store %struct.nfs4_stid* %8, %struct.nfs4_stid** %5, align 8
  %9 = load %struct.nfs4_stid*, %struct.nfs4_stid** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %9, i32 0, i32 2
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  store %struct.nfs4_client* %11, %struct.nfs4_client** %6, align 8
  %12 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.nfs4_stid*, %struct.nfs4_stid** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %22, i32 0, i32 1
  %24 = call i32 @refcount_dec_and_test(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = call i32 @wake_up_all(i32* @close_wq)
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %30 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %29, i32 0, i32 0
  %31 = load %struct.nfs4_stid*, %struct.nfs4_stid** %5, align 8
  %32 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @idr_remove(i32* %30, i32 %35)
  %37 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %38 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %37, i32 0, i32 0
  %39 = load %struct.list_head*, %struct.list_head** %4, align 8
  %40 = call i32 @list_add(i32* %38, %struct.list_head* %39)
  br label %41

41:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
