; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_recall_file_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_recall_file_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layout_stateid = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_layout_stateid*)* @nfsd4_recall_file_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_recall_file_layout(%struct.nfs4_layout_stateid* %0) #0 {
  %2 = alloca %struct.nfs4_layout_stateid*, align 8
  store %struct.nfs4_layout_stateid* %0, %struct.nfs4_layout_stateid** %2, align 8
  %3 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %7 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %13 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %21 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %20, i32 0, i32 4
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %37

25:                                               ; preds = %11
  %26 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %27 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @trace_nfsd_layout_recall(i32* %28)
  %30 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %31 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @refcount_inc(i32* %32)
  %34 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %35 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %34, i32 0, i32 2
  %36 = call i32 @nfsd4_run_cb(i32* %35)
  br label %37

37:                                               ; preds = %25, %24, %10
  %38 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %2, align 8
  %39 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @trace_nfsd_layout_recall(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @nfsd4_run_cb(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
