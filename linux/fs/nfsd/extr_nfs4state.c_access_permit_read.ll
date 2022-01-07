; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_access_permit_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_access_permit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i32 }

@NFS4_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_ol_stateid*)* @access_permit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_permit_read(%struct.nfs4_ol_stateid* %0) #0 {
  %2 = alloca %struct.nfs4_ol_stateid*, align 8
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %2, align 8
  %3 = load i32, i32* @NFS4_SHARE_ACCESS_READ, align 4
  %4 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %5 = call i64 @test_access(i32 %3, %struct.nfs4_ol_stateid* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @NFS4_SHARE_ACCESS_BOTH, align 4
  %9 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %10 = call i64 @test_access(i32 %8, %struct.nfs4_ol_stateid* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @NFS4_SHARE_ACCESS_WRITE, align 4
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %15 = call i64 @test_access(i32 %13, %struct.nfs4_ol_stateid* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @test_access(i32, %struct.nfs4_ol_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
