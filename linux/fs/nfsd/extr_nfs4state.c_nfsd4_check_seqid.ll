; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_check_seqid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_check_seqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32 }
%struct.nfs4_stateowner = type { i32 }

@nfs_ok = common dso_local global i32 0, align 4
@nfserr_replay_me = common dso_local global i32 0, align 4
@nfserr_bad_seqid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compound_state*, %struct.nfs4_stateowner*, i32)* @nfsd4_check_seqid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_check_seqid(%struct.nfsd4_compound_state* %0, %struct.nfs4_stateowner* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfs4_stateowner*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfs4_stateowner* %1, %struct.nfs4_stateowner** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %9 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @nfs_ok, align 4
  store i32 %12, i32* %4, align 4
  br label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %6, align 8
  %16 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @nfserr_replay_me, align 4
  store i32 %21, i32* %4, align 4
  br label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %6, align 8
  %25 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @nfs_ok, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @nfserr_bad_seqid, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %28, %20, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
