; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_idmap_id_to_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_idmap_id_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.ent = type { i32, i32, i32, i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@idtoname_lookup = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.svc_rqst*, i32, i32)* @idmap_id_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_id_to_name(%struct.xdr_stream* %0, %struct.svc_rqst* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ent*, align 8
  %11 = alloca %struct.ent, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsd_net*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %6, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %23 = call i32 @SVC_NET(%struct.svc_rqst* %22)
  %24 = load i32, i32* @nfsd_net_id, align 4
  %25 = call %struct.nfsd_net* @net_generic(i32 %23, i32 %24)
  store %struct.nfsd_net* %25, %struct.nfsd_net** %14, align 8
  %26 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %29 = call i32 @rqst_authname(%struct.svc_rqst* %28)
  %30 = call i32 @strlcpy(i32 %27, i32 %29, i32 4)
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %32 = load i32, i32* @idtoname_lookup, align 4
  %33 = load %struct.nfsd_net*, %struct.nfsd_net** %14, align 8
  %34 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @idmap_lookup(%struct.svc_rqst* %31, i32 %32, %struct.ent* %11, i32 %35, %struct.ent** %10)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %4
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @encode_ascii_id(%struct.xdr_stream* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %82

45:                                               ; preds = %4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @nfserrno(i32 %49)
  store i32 %50, i32* %5, align 4
  br label %82

51:                                               ; preds = %45
  %52 = load %struct.ent*, %struct.ent** %10, align 8
  %53 = getelementptr inbounds %struct.ent, %struct.ent* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strlen(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @IDMAP_NAMESZ, align 4
  %58 = icmp sgt i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON_ONCE(i32 %59)
  %61 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 4
  %64 = call i32* @xdr_reserve_space(%struct.xdr_stream* %61, i32 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %51
  %68 = load i32, i32* @nfserr_resource, align 4
  store i32 %68, i32* %5, align 4
  br label %82

69:                                               ; preds = %51
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.ent*, %struct.ent** %10, align 8
  %72 = getelementptr inbounds %struct.ent, %struct.ent* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32* @xdr_encode_opaque(i32* %70, i32 %73, i32 %74)
  store i32* %75, i32** %12, align 8
  %76 = load %struct.ent*, %struct.ent** %10, align 8
  %77 = getelementptr inbounds %struct.ent, %struct.ent* %76, i32 0, i32 1
  %78 = load %struct.nfsd_net*, %struct.nfsd_net** %14, align 8
  %79 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cache_put(i32* %77, i32 %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %69, %67, %48, %41
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @rqst_authname(%struct.svc_rqst*) #1

declare dso_local i32 @idmap_lookup(%struct.svc_rqst*, i32, %struct.ent*, i32, %struct.ent**) #1

declare dso_local i32 @encode_ascii_id(%struct.xdr_stream*, i32) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32, i32) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
