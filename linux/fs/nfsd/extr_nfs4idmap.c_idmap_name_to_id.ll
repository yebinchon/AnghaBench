; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_idmap_name_to_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_idmap_name_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.ent = type { i32, i8*, i32, i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_badowner = common dso_local global i32 0, align 4
@nametoid_lookup = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i8*, i32, i32*)* @idmap_name_to_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_name_to_id(%struct.svc_rqst* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ent*, align 8
  %13 = alloca %struct.ent, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = bitcast %struct.ent* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %20 = call i32 @SVC_NET(%struct.svc_rqst* %19)
  %21 = load i32, i32* @nfsd_net_id, align 4
  %22 = call %struct.nfsd_net* @net_generic(i32 %20, i32 %21)
  store %struct.nfsd_net* %22, %struct.nfsd_net** %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @nfserr_badowner, align 4
  store i32 %28, i32* %6, align 4
  br label %74

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @memcpy(i8* %31, i8* %32, i32 %33)
  %35 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %43 = call i32 @rqst_authname(%struct.svc_rqst* %42)
  %44 = call i32 @strlcpy(i32 %41, i32 %43, i32 4)
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %46 = load i32, i32* @nametoid_lookup, align 4
  %47 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %48 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @idmap_lookup(%struct.svc_rqst* %45, i32 %46, %struct.ent* %13, i32 %49, %struct.ent** %12)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %29
  %56 = load i32, i32* @nfserr_badowner, align 4
  store i32 %56, i32* %6, align 4
  br label %74

57:                                               ; preds = %29
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @nfserrno(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %74

63:                                               ; preds = %57
  %64 = load %struct.ent*, %struct.ent** %12, align 8
  %65 = getelementptr inbounds %struct.ent, %struct.ent* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ent*, %struct.ent** %12, align 8
  %69 = getelementptr inbounds %struct.ent, %struct.ent* %68, i32 0, i32 3
  %70 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %71 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cache_put(i32* %69, i32 %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %63, %60, %55, %27
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #2

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @rqst_authname(%struct.svc_rqst*) #2

declare dso_local i32 @idmap_lookup(%struct.svc_rqst*, i32, %struct.ent*, i32, %struct.ent**) #2

declare dso_local i32 @nfserrno(i32) #2

declare dso_local i32 @cache_put(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
