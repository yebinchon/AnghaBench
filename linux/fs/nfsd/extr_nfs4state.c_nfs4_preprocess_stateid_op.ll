; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_preprocess_stateid_op.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_preprocess_stateid_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd_file = type { i32 }
%struct.inode = type { i32 }
%struct.net = type { i32 }
%struct.nfsd_net = type { i32 }
%struct.nfs4_stid = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_grace = common dso_local global i64 0, align 8
@nfserr_bad_stateid = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.svc_fh* %2, i32* %3, i32 %4, %struct.nfsd_file** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.nfsd4_compound_state*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsd_file**, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.nfsd_net*, align 8
  %17 = alloca %struct.nfs4_stid*, align 8
  %18 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %9, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nfsd_file** %5, %struct.nfsd_file*** %13, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.inode* @d_inode(i32 %21)
  store %struct.inode* %22, %struct.inode** %14, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %24 = call %struct.net* @SVC_NET(%struct.svc_rqst* %23)
  store %struct.net* %24, %struct.net** %15, align 8
  %25 = load %struct.net*, %struct.net** %15, align 8
  %26 = load i32, i32* @nfsd_net_id, align 4
  %27 = call %struct.nfsd_net* @net_generic(%struct.net* %25, i32 %26)
  store %struct.nfsd_net* %27, %struct.nfsd_net** %16, align 8
  store %struct.nfs4_stid* null, %struct.nfs4_stid** %17, align 8
  %28 = load %struct.nfsd_file**, %struct.nfsd_file*** %13, align 8
  %29 = icmp ne %struct.nfsd_file** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load %struct.nfsd_file**, %struct.nfsd_file*** %13, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %31, align 8
  br label %32

32:                                               ; preds = %30, %6
  %33 = load %struct.net*, %struct.net** %15, align 8
  %34 = load %struct.inode*, %struct.inode** %14, align 8
  %35 = call i64 @grace_disallows_io(%struct.net* %33, %struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @nfserr_grace, align 8
  store i64 %38, i64* %7, align 8
  br label %118

39:                                               ; preds = %32
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @ZERO_STATEID(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @ONE_STATEID(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %39
  %48 = load %struct.net*, %struct.net** %15, align 8
  %49 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @check_special_stateids(%struct.net* %48, %struct.svc_fh* %49, i32* %50, i32 %51)
  store i64 %52, i64* %18, align 8
  br label %95

53:                                               ; preds = %43
  %54 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %9, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.nfsd_net*, %struct.nfsd_net** %16, align 8
  %57 = call i64 @nfsd4_lookup_stateid(%struct.nfsd4_compound_state* %54, i32* %55, i32 131, %struct.nfs4_stid** %17, %struct.nfsd_net* %56)
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %18, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* %18, align 8
  store i64 %61, i64* %7, align 8
  br label %118

62:                                               ; preds = %53
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %65 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %9, align 8
  %66 = call i32 @nfsd4_has_session(%struct.nfsd4_compound_state* %65)
  %67 = call i64 @nfsd4_stid_check_stateid_generation(i32* %63, %struct.nfs4_stid* %64, i32 %66)
  store i64 %67, i64* %18, align 8
  %68 = load i64, i64* %18, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %110

71:                                               ; preds = %62
  %72 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %73 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %85 [
    i32 130, label %75
    i32 128, label %80
    i32 129, label %80
  ]

75:                                               ; preds = %71
  %76 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %77 = call i32 @delegstateid(%struct.nfs4_stid* %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @nfs4_check_delegmode(i32 %77, i32 %78)
  store i64 %79, i64* %18, align 8
  br label %87

80:                                               ; preds = %71, %71
  %81 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %82 = call i32 @openlockstateid(%struct.nfs4_stid* %81)
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @nfs4_check_olstateid(i32 %82, i32 %83)
  store i64 %84, i64* %18, align 8
  br label %87

85:                                               ; preds = %71
  %86 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %86, i64* %18, align 8
  br label %87

87:                                               ; preds = %85, %80, %75
  %88 = load i64, i64* %18, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %110

91:                                               ; preds = %87
  %92 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %93 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %94 = call i64 @nfs4_check_fh(%struct.svc_fh* %92, %struct.nfs4_stid* %93)
  store i64 %94, i64* %18, align 8
  br label %95

95:                                               ; preds = %91, %47
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* @nfs_ok, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.nfsd_file**, %struct.nfsd_file*** %13, align 8
  %101 = icmp ne %struct.nfsd_file** %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %104 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %105 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %106 = load %struct.nfsd_file**, %struct.nfsd_file*** %13, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @nfs4_check_file(%struct.svc_rqst* %103, %struct.svc_fh* %104, %struct.nfs4_stid* %105, %struct.nfsd_file** %106, i32 %107)
  store i64 %108, i64* %18, align 8
  br label %109

109:                                              ; preds = %102, %99, %95
  br label %110

110:                                              ; preds = %109, %90, %70
  %111 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %112 = icmp ne %struct.nfs4_stid* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.nfs4_stid*, %struct.nfs4_stid** %17, align 8
  %115 = call i32 @nfs4_put_stid(%struct.nfs4_stid* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %18, align 8
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %116, %60, %37
  %119 = load i64, i64* %7, align 8
  ret i64 %119
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @grace_disallows_io(%struct.net*, %struct.inode*) #1

declare dso_local i64 @ZERO_STATEID(i32*) #1

declare dso_local i64 @ONE_STATEID(i32*) #1

declare dso_local i64 @check_special_stateids(%struct.net*, %struct.svc_fh*, i32*, i32) #1

declare dso_local i64 @nfsd4_lookup_stateid(%struct.nfsd4_compound_state*, i32*, i32, %struct.nfs4_stid**, %struct.nfsd_net*) #1

declare dso_local i64 @nfsd4_stid_check_stateid_generation(i32*, %struct.nfs4_stid*, i32) #1

declare dso_local i32 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i64 @nfs4_check_delegmode(i32, i32) #1

declare dso_local i32 @delegstateid(%struct.nfs4_stid*) #1

declare dso_local i64 @nfs4_check_olstateid(i32, i32) #1

declare dso_local i32 @openlockstateid(%struct.nfs4_stid*) #1

declare dso_local i64 @nfs4_check_fh(%struct.svc_fh*, %struct.nfs4_stid*) #1

declare dso_local i64 @nfs4_check_file(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfs4_stid*, %struct.nfsd_file**, i32) #1

declare dso_local i32 @nfs4_put_stid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
