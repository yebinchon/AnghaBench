; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_sequence_check_conn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_sequence_check_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_conn = type { i32, i32 }
%struct.nfsd4_session = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32, i64 }

@nfs_ok = common dso_local global i32 0, align 4
@nfserr_conn_not_bound_to_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_conn*, %struct.nfsd4_session*)* @nfsd4_sequence_check_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_sequence_check_conn(%struct.nfsd4_conn* %0, %struct.nfsd4_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_conn*, align 8
  %5 = alloca %struct.nfsd4_session*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.nfsd4_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfsd4_conn* %0, %struct.nfsd4_conn** %4, align 8
  store %struct.nfsd4_session* %1, %struct.nfsd4_session** %5, align 8
  %10 = load %struct.nfsd4_session*, %struct.nfsd4_session** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %10, i32 0, i32 0
  %12 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  store %struct.nfs4_client* %12, %struct.nfs4_client** %6, align 8
  %13 = load i32, i32* @nfs_ok, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_session*, %struct.nfsd4_session** %5, align 8
  %21 = call %struct.nfsd4_conn* @__nfsd4_find_conn(i32 %19, %struct.nfsd4_session* %20)
  store %struct.nfsd4_conn* %21, %struct.nfsd4_conn** %7, align 8
  %22 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %7, align 8
  %23 = icmp ne %struct.nfsd4_conn* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* @nfserr_conn_not_bound_to_session, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %28 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %49

32:                                               ; preds = %25
  %33 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %4, align 8
  %34 = load %struct.nfsd4_session*, %struct.nfsd4_session** %5, align 8
  %35 = call i32 @__nfsd4_hash_conn(%struct.nfsd4_conn* %33, %struct.nfsd4_session* %34)
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %37 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %4, align 8
  %40 = call i32 @nfsd4_register_conn(%struct.nfsd4_conn* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %44, i32 0, i32 0
  %46 = call i32 @nfsd4_conn_lost(i32* %45)
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i32, i32* @nfs_ok, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %31, %24
  %50 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %51 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %4, align 8
  %54 = call i32 @free_conn(%struct.nfsd4_conn* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfsd4_conn* @__nfsd4_find_conn(i32, %struct.nfsd4_session*) #1

declare dso_local i32 @__nfsd4_hash_conn(%struct.nfsd4_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_register_conn(%struct.nfsd4_conn*) #1

declare dso_local i32 @nfsd4_conn_lost(i32*) #1

declare dso_local i32 @free_conn(%struct.nfsd4_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
