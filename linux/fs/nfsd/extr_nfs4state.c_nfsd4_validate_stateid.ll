; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_validate_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_validate_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nfs4_stid = type { i32 }
%struct.sockaddr = type { i32 }

@nfserr_bad_stateid = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"NFSD: client %s testing state ID with incorrect client ID\0A\00", align 1
@nfs_ok = common dso_local global i64 0, align 8
@nfserr_deleg_revoked = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown stateid type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs4_client*, %struct.TYPE_10__*)* @nfsd4_validate_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_validate_stateid(%struct.nfs4_client* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.nfs4_stid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = call i64 @ZERO_STATEID(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i64 @ONE_STATEID(%struct.TYPE_10__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = call i64 @CLOSE_STATEID(%struct.TYPE_10__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %2
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %3, align 8
  br label %87

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %28, i32 0, i32 2
  %30 = call i32 @same_clid(i32* %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %8, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  %37 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %38 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.sockaddr*
  %40 = trunc i64 %34 to i32
  %41 = call i32 @rpc_ntop(%struct.sockaddr* %39, i8* %36, i32 %40)
  %42 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %36)
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %3, align 8
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  br label %87

45:                                               ; preds = %24
  %46 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %47 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = call %struct.nfs4_stid* @find_stateid_locked(%struct.nfs4_client* %49, %struct.TYPE_10__* %50)
  store %struct.nfs4_stid* %51, %struct.nfs4_stid** %6, align 8
  %52 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %53 = icmp ne %struct.nfs4_stid* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %82

55:                                               ; preds = %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %58 = call i64 @nfsd4_stid_check_stateid_generation(%struct.TYPE_10__* %56, %struct.nfs4_stid* %57, i32 1)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %82

62:                                               ; preds = %55
  %63 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %64 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %74 [
    i32 131, label %66
    i32 128, label %68
    i32 129, label %70
    i32 130, label %70
    i32 132, label %79
    i32 133, label %79
  ]

66:                                               ; preds = %62
  %67 = load i64, i64* @nfs_ok, align 8
  store i64 %67, i64* %7, align 8
  br label %81

68:                                               ; preds = %62
  %69 = load i64, i64* @nfserr_deleg_revoked, align 8
  store i64 %69, i64* %7, align 8
  br label %81

70:                                               ; preds = %62, %62
  %71 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %72 = call i32 @openlockstateid(%struct.nfs4_stid* %71)
  %73 = call i64 @nfsd4_check_openowner_confirmed(i32 %72)
  store i64 %73, i64* %7, align 8
  br label %81

74:                                               ; preds = %62
  %75 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %76 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %62, %62, %74
  %80 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %79, %70, %68, %66
  br label %82

82:                                               ; preds = %81, %61, %54
  %83 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %84 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %82, %32, %22
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i64 @ZERO_STATEID(%struct.TYPE_10__*) #1

declare dso_local i64 @ONE_STATEID(%struct.TYPE_10__*) #1

declare dso_local i64 @CLOSE_STATEID(%struct.TYPE_10__*) #1

declare dso_local i32 @same_clid(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rpc_ntop(%struct.sockaddr*, i8*, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_stid* @find_stateid_locked(%struct.nfs4_client*, %struct.TYPE_10__*) #1

declare dso_local i64 @nfsd4_stid_check_stateid_generation(%struct.TYPE_10__*, %struct.nfs4_stid*, i32) #1

declare dso_local i64 @nfsd4_check_openowner_confirmed(i32) #1

declare dso_local i32 @openlockstateid(%struct.nfs4_stid*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
