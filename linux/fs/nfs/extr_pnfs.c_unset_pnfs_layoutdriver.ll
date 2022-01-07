; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_unset_pnfs_layoutdriver.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_unset_pnfs_layoutdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.nfs_server*)* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unset_pnfs_layoutdriver(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %3 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32 (%struct.nfs_server*)*, i32 (%struct.nfs_server*)** %11, align 8
  %13 = icmp ne i32 (%struct.nfs_server*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32 (%struct.nfs_server*)*, i32 (%struct.nfs_server*)** %18, align 8
  %20 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %21 = call i32 %19(%struct.nfs_server* %20)
  br label %22

22:                                               ; preds = %14, %7
  %23 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i64 @atomic_dec_and_test(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %31 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @nfs4_deviceid_purge_client(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @module_put(i32 %39)
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %43 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %42, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %43, align 8
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @nfs4_deviceid_purge_client(%struct.TYPE_4__*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
