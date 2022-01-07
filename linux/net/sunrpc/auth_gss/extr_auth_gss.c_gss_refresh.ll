; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { i32 }

@EKEYEXPIRED = common dso_local global i32 0, align 4
@RPCAUTH_CRED_NEW = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*)* @gss_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_refresh(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  store %struct.rpc_cred* %10, %struct.rpc_cred** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %12 = call i64 @gss_cred_is_negative_entry(%struct.rpc_cred* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EKEYEXPIRED, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load i32, i32* @RPCAUTH_CRED_NEW, align 4
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %25 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %31 = call i32 @gss_renew_cred(%struct.rpc_task* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %51

35:                                               ; preds = %29
  %36 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.rpc_cred*, %struct.rpc_cred** %39, align 8
  store %struct.rpc_cred* %40, %struct.rpc_cred** %4, align 8
  br label %41

41:                                               ; preds = %35, %23, %17
  %42 = load i32, i32* @RPCAUTH_CRED_NEW, align 4
  %43 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %49 = call i32 @gss_refresh_upcall(%struct.rpc_task* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @gss_cred_is_negative_entry(%struct.rpc_cred*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gss_renew_cred(%struct.rpc_task*) #1

declare dso_local i32 @gss_refresh_upcall(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
