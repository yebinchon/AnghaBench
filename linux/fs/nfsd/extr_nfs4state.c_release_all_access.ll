; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_release_all_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_release_all_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs4_file* }
%struct.nfs4_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ol_stateid*)* @release_all_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_all_access(%struct.nfs4_ol_stateid* %0) #0 {
  %2 = alloca %struct.nfs4_ol_stateid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %2, align 8
  %5 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  store %struct.nfs4_file* %8, %struct.nfs4_file** %4, align 8
  %9 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %10 = icmp ne %struct.nfs4_file* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %13 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %18 = call i32 @recalculate_deny_mode(%struct.nfs4_file* %17)
  br label %19

19:                                               ; preds = %16, %11, %1
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %26 = call i64 @test_access(i32 %24, %struct.nfs4_ol_stateid* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %30 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.nfs4_file*, %struct.nfs4_file** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @nfs4_file_put_access(%struct.nfs4_file* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %38 = call i32 @clear_access(i32 %36, %struct.nfs4_ol_stateid* %37)
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %20

42:                                               ; preds = %20
  ret void
}

declare dso_local i32 @recalculate_deny_mode(%struct.nfs4_file*) #1

declare dso_local i64 @test_access(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i32 @nfs4_file_put_access(%struct.nfs4_file*, i32) #1

declare dso_local i32 @clear_access(i32, %struct.nfs4_ol_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
