; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_rootfh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_rootfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.auth_domain = type { i32 }
%struct.knfsd_fh = type { i32 }
%struct.svc_export = type { i32 }
%struct.path = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd_net = type { %struct.cache_detail* }
%struct.cache_detail = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"nfsd: exp_rootfh path not found %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"nfsd: exp_rootfh(%s [%p] %s:%s/%ld)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exp_rootfh(%struct.net* %0, %struct.auth_domain* %1, i8* %2, %struct.knfsd_fh* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.auth_domain*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.knfsd_fh*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.path, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.svc_fh, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfsd_net*, align 8
  %18 = alloca %struct.cache_detail*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.auth_domain* %1, %struct.auth_domain** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.knfsd_fh* %3, %struct.knfsd_fh** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load i32, i32* @nfsd_net_id, align 4
  %21 = call %struct.nfsd_net* @net_generic(%struct.net* %19, i32 %20)
  store %struct.nfsd_net* %21, %struct.nfsd_net** %17, align 8
  %22 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %23 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %22, i32 0, i32 0
  %24 = load %struct.cache_detail*, %struct.cache_detail** %23, align 8
  store %struct.cache_detail* %24, %struct.cache_detail** %18, align 8
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @kern_path(i8* %27, i32 0, %struct.path* %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %6, align 4
  br label %84

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.inode* @d_inode(i32 %36)
  store %struct.inode* %37, %struct.inode** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.auth_domain*, %struct.auth_domain** %8, align 8
  %42 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inode*, %struct.inode** %14, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %14, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40, i32 %43, i32 %48, i32 %51)
  %53 = load %struct.cache_detail*, %struct.cache_detail** %18, align 8
  %54 = load %struct.auth_domain*, %struct.auth_domain** %8, align 8
  %55 = call %struct.svc_export* @exp_parent(%struct.cache_detail* %53, %struct.auth_domain* %54, %struct.path* %13)
  store %struct.svc_export* %55, %struct.svc_export** %12, align 8
  %56 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %57 = call i64 @IS_ERR(%struct.svc_export* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %34
  %60 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %61 = call i32 @PTR_ERR(%struct.svc_export* %60)
  store i32 %61, i32* %16, align 4
  br label %81

62:                                               ; preds = %34
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @fh_init(%struct.svc_fh* %15, i32 %63)
  %65 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %66 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @fh_compose(%struct.svc_fh* %15, %struct.svc_export* %65, i32 %67, i32* null)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %74

73:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load %struct.knfsd_fh*, %struct.knfsd_fh** %10, align 8
  %76 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %15, i32 0, i32 0
  %77 = call i32 @memcpy(%struct.knfsd_fh* %75, i32* %76, i32 4)
  %78 = call i32 @fh_put(%struct.svc_fh* %15)
  %79 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %80 = call i32 @exp_put(%struct.svc_export* %79)
  br label %81

81:                                               ; preds = %74, %59
  %82 = call i32 @path_put(%struct.path* %13)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %30
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.svc_export* @exp_parent(%struct.cache_detail*, %struct.auth_domain*, %struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, %struct.svc_export*, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.knfsd_fh*, i32*, i32) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
