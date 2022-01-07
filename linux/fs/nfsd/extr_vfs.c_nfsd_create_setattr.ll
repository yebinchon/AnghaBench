; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_create_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_create_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.iattr = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_fh*, %struct.iattr*)* @nfsd_create_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_create_setattr(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.iattr*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %8 = load i32, i32* @ATTR_MODE, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.iattr*, %struct.iattr** %7, align 8
  %11 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @current_fsuid()
  %15 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %16 = call i32 @uid_eq(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ATTR_UID, align 4
  %20 = load i32, i32* @ATTR_GID, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.iattr*, %struct.iattr** %7, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %18, %3
  %28 = load %struct.iattr*, %struct.iattr** %7, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %34 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %35 = load %struct.iattr*, %struct.iattr** %7, align 8
  %36 = call i32 @nfsd_setattr(%struct.svc_rqst* %33, %struct.svc_fh* %34, %struct.iattr* %35, i32 0, i32 0)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %39 = call i32 @commit_metadata(%struct.svc_fh* %38)
  %40 = call i32 @nfserrno(i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @nfsd_setattr(%struct.svc_rqst*, %struct.svc_fh*, %struct.iattr*, i32, i32) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
