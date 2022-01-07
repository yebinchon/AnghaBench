; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_lookup_clientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_lookup_clientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.nfs4_client*, i32 }
%struct.nfs4_client = type { i32, i32 }
%struct.nfsd_net = type { i32 }

@nfserr_stale_clientid = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@nfserr_expired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nfsd4_compound_state*, %struct.nfsd_net*)* @lookup_clientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_clientid(i32* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd_net*, align 8
  %8 = alloca %struct.nfs4_client*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd_net* %2, %struct.nfsd_net** %7, align 8
  %9 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %9, i32 0, i32 0
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %12 = icmp ne %struct.nfs4_client* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %14, i32 0, i32 0
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  store %struct.nfs4_client* %16, %struct.nfs4_client** %8, align 8
  %17 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %18 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %17, i32 0, i32 1
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @same_clid(i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %13
  %25 = load i32, i32* @nfs_ok, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %29 = call i64 @STALE_CLIENTID(i32* %27, %struct.nfsd_net* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %26
  %34 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %39 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %43 = call %struct.nfs4_client* @find_confirmed_client(i32* %41, i32 0, %struct.nfsd_net* %42)
  store %struct.nfs4_client* %43, %struct.nfs4_client** %8, align 8
  %44 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %45 = icmp ne %struct.nfs4_client* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %33
  %47 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* @nfserr_expired, align 4
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %33
  %52 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %53 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %52, i32 0, i32 0
  %54 = call i32 @atomic_inc(i32* %53)
  %55 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %56 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %59 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %59, i32 0, i32 0
  store %struct.nfs4_client* %58, %struct.nfs4_client** %60, align 8
  %61 = load i32, i32* @nfs_ok, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %46, %31, %24, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @same_clid(i32*, i32*) #1

declare dso_local i64 @STALE_CLIENTID(i32*, %struct.nfsd_net*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
