; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_dup_cred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_dup_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_auth = type { i32, i32 }
%struct.gss_cred = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.auth_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@gss_nullops = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_cred* (%struct.gss_auth*, %struct.gss_cred*)* @gss_dup_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_cred* @gss_dup_cred(%struct.gss_auth* %0, %struct.gss_cred* %1) #0 {
  %3 = alloca %struct.gss_auth*, align 8
  %4 = alloca %struct.gss_cred*, align 8
  %5 = alloca %struct.gss_cred*, align 8
  %6 = alloca %struct.auth_cred, align 4
  %7 = alloca %struct.gss_cl_ctx*, align 8
  store %struct.gss_auth* %0, %struct.gss_auth** %3, align 8
  store %struct.gss_cred* %1, %struct.gss_cred** %4, align 8
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.gss_cred* @kzalloc(i32 32, i32 %8)
  store %struct.gss_cred* %9, %struct.gss_cred** %5, align 8
  %10 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  %11 = icmp ne %struct.gss_cred* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %6, i32 0, i32 0
  %14 = load %struct.gss_cred*, %struct.gss_cred** %4, align 8
  %15 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.gss_cred*, %struct.gss_cred** %4, align 8
  %19 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.gss_cl_ctx* @rcu_dereference_protected(i32 %20, i32 1)
  store %struct.gss_cl_ctx* %21, %struct.gss_cl_ctx** %7, align 8
  %22 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  %23 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %22, i32 0, i32 3
  %24 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  %25 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %24, i32 0, i32 1
  %26 = call i32 @rpcauth_init_cred(%struct.TYPE_2__* %23, %struct.auth_cred* %6, i32* %25, i32* @gss_nullops)
  %27 = load i64, i64* @RPCAUTH_CRED_UPTODATE, align 8
  %28 = shl i64 1, %27
  %29 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  %30 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.gss_cred*, %struct.gss_cred** %4, align 8
  %33 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  %36 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.gss_cred*, %struct.gss_cred** %4, align 8
  %38 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  %41 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  %43 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %42, i32 0, i32 0
  %44 = call i32 @kref_get(i32* %43)
  %45 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  %46 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %49 = call i32 @rcu_assign_pointer(i32 %47, %struct.gss_cl_ctx* %48)
  %50 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %51 = call i32 @gss_get_ctx(%struct.gss_cl_ctx* %50)
  br label %52

52:                                               ; preds = %12, %2
  %53 = load %struct.gss_cred*, %struct.gss_cred** %5, align 8
  ret %struct.gss_cred* %53
}

declare dso_local %struct.gss_cred* @kzalloc(i32, i32) #1

declare dso_local %struct.gss_cl_ctx* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rpcauth_init_cred(%struct.TYPE_2__*, %struct.auth_cred*, i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.gss_cl_ctx*) #1

declare dso_local i32 @gss_get_ctx(%struct.gss_cl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
