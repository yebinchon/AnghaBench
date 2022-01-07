; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_openmode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_openmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { %struct.nfs4_ol_stateid* }

@nfserr_openmode = common dso_local global i32 0, align 4
@WR_STATE = common dso_local global i32 0, align 4
@RD_STATE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_ol_stateid*, i32)* @nfs4_check_openmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_check_openmode(%struct.nfs4_ol_stateid* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @nfserr_openmode, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %7, i32 0, i32 0
  %9 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %8, align 8
  %10 = icmp ne %struct.nfs4_ol_stateid* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %12, i32 0, i32 0
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %13, align 8
  store %struct.nfs4_ol_stateid* %14, %struct.nfs4_ol_stateid** %3, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @WR_STATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %22 = call i32 @access_permit_write(%struct.nfs4_ol_stateid* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %37

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @RD_STATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %32 = call i32 @access_permit_read(%struct.nfs4_ol_stateid* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @nfs_ok, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %34, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @access_permit_write(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @access_permit_read(%struct.nfs4_ol_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
