; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_lookup_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_lookup_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nfs4_stid = type { i8 }
%struct.nfsd_net = type { i32 }

@NFS4_REVOKED_DELEG_STID = common dso_local global i8 0, align 1
@NFS4_DELEG_STID = common dso_local global i8 0, align 1
@nfserr_bad_stateid = common dso_local global i64 0, align 8
@nfserr_stale_clientid = common dso_local global i64 0, align 8
@nfserr_stale_stateid = common dso_local global i64 0, align 8
@nfserr_deleg_revoked = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_lookup_stateid(%struct.nfsd4_compound_state* %0, %struct.TYPE_9__* %1, i8 zeroext %2, %struct.nfs4_stid** %3, %struct.nfsd_net* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.nfs4_stid**, align 8
  %11 = alloca %struct.nfsd_net*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8 %2, i8* %9, align 1
  store %struct.nfs4_stid** %3, %struct.nfs4_stid*** %10, align 8
  store %struct.nfsd_net* %4, %struct.nfsd_net** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8, i8* %9, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @NFS4_REVOKED_DELEG_STID, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %36

21:                                               ; preds = %5
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @NFS4_DELEG_STID, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i8, i8* @NFS4_REVOKED_DELEG_STID, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %9, align 1
  br label %35

35:                                               ; preds = %28, %21
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = call i64 @ZERO_STATEID(%struct.TYPE_9__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = call i64 @ONE_STATEID(%struct.TYPE_9__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = call i64 @CLOSE_STATEID(%struct.TYPE_9__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40, %36
  %49 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %49, i64* %6, align 8
  br label %113

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %55 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %56 = call i64 @lookup_clientid(i32* %53, %struct.nfsd4_compound_state* %54, %struct.nfsd_net* %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @nfserr_stale_clientid, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %62 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %66, i64* %6, align 8
  br label %113

67:                                               ; preds = %60
  %68 = load i64, i64* @nfserr_stale_stateid, align 8
  store i64 %68, i64* %6, align 8
  br label %113

69:                                               ; preds = %50
  %70 = load i64, i64* %12, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %6, align 8
  br label %113

74:                                               ; preds = %69
  %75 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = load i8, i8* %9, align 1
  %80 = call %struct.nfs4_stid* @find_stateid_by_type(i32 %77, %struct.TYPE_9__* %78, i8 zeroext %79)
  %81 = load %struct.nfs4_stid**, %struct.nfs4_stid*** %10, align 8
  store %struct.nfs4_stid* %80, %struct.nfs4_stid** %81, align 8
  %82 = load %struct.nfs4_stid**, %struct.nfs4_stid*** %10, align 8
  %83 = load %struct.nfs4_stid*, %struct.nfs4_stid** %82, align 8
  %84 = icmp ne %struct.nfs4_stid* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  %86 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %86, i64* %6, align 8
  br label %113

87:                                               ; preds = %74
  %88 = load %struct.nfs4_stid**, %struct.nfs4_stid*** %10, align 8
  %89 = load %struct.nfs4_stid*, %struct.nfs4_stid** %88, align 8
  %90 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @NFS4_REVOKED_DELEG_STID, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %87
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = load %struct.nfs4_stid**, %struct.nfs4_stid*** %10, align 8
  %101 = load %struct.nfs4_stid*, %struct.nfs4_stid** %100, align 8
  %102 = call i32 @nfs4_put_stid(%struct.nfs4_stid* %101)
  %103 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %104 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i64, i64* @nfserr_deleg_revoked, align 8
  store i64 %108, i64* %6, align 8
  br label %113

109:                                              ; preds = %99
  %110 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %110, i64* %6, align 8
  br label %113

111:                                              ; preds = %96, %87
  %112 = load i64, i64* @nfs_ok, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %111, %109, %107, %85, %72, %67, %65, %48
  %114 = load i64, i64* %6, align 8
  ret i64 %114
}

declare dso_local i64 @ZERO_STATEID(%struct.TYPE_9__*) #1

declare dso_local i64 @ONE_STATEID(%struct.TYPE_9__*) #1

declare dso_local i64 @CLOSE_STATEID(%struct.TYPE_9__*) #1

declare dso_local i64 @lookup_clientid(i32*, %struct.nfsd4_compound_state*, %struct.nfsd_net*) #1

declare dso_local %struct.nfs4_stid* @find_stateid_by_type(i32, %struct.TYPE_9__*, i8 zeroext) #1

declare dso_local i32 @nfs4_put_stid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
