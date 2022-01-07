; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_unhash_ol_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_unhash_ol_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.nfs4_file* }
%struct.nfs4_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_ol_stateid*)* @unhash_ol_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unhash_ol_stateid(%struct.nfs4_ol_stateid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %3, align 8
  %5 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  store %struct.nfs4_file* %8, %struct.nfs4_file** %4, align 8
  %9 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %16, i32 0, i32 1
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %25, i32 0, i32 1
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %32 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %31, i32 0, i32 0
  %33 = call i32 @list_del(i32* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
