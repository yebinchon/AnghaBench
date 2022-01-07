; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_get_lock_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_get_lock_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs4_file* }
%struct.nfs4_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ol_stateid*, i32)* @get_lock_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_lock_access(%struct.nfs4_ol_stateid* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  store %struct.nfs4_file* %9, %struct.nfs4_file** %5, align 8
  %10 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %11 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %15 = call i64 @test_access(i32 %13, %struct.nfs4_ol_stateid* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @__nfs4_file_get_access(%struct.nfs4_file* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %24 = call i32 @set_access(i32 %22, %struct.nfs4_ol_stateid* %23)
  br label %25

25:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_access(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i32 @__nfs4_file_get_access(%struct.nfs4_file*, i32) #1

declare dso_local i32 @set_access(i32, %struct.nfs4_ol_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
