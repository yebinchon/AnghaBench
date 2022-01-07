; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_xmit_need_reencode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_xmit_need_reencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, %struct.rpc_cred* }
%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*)* @gss_xmit_need_reencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_xmit_need_reencode(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca %struct.gss_cl_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %10 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 0
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  store %struct.rpc_rqst* %12, %struct.rpc_rqst** %3, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %13, i32 0, i32 1
  %15 = load %struct.rpc_cred*, %struct.rpc_cred** %14, align 8
  store %struct.rpc_cred* %15, %struct.rpc_cred** %4, align 8
  %16 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %17 = call %struct.gss_cl_ctx* @gss_cred_get_ctx(%struct.rpc_cred* %16)
  store %struct.gss_cl_ctx* %17, %struct.gss_cl_ctx** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %18 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %5, align 8
  %19 = icmp ne %struct.gss_cl_ctx* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @READ_ONCE(i32 %27)
  %29 = call i64 @gss_seq_is_newer(i32 %24, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %76

32:                                               ; preds = %21
  %33 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @READ_ONCE(i32 %35)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %57, %32
  %38 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @gss_seq_is_newer(i32 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %9, align 8
  %46 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %50 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @cmpxchg(i32* %47, i64 %48, i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %76

57:                                               ; preds = %44
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %66 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i64 @gss_seq_is_newer(i32 %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %64, %58
  br label %76

76:                                               ; preds = %75, %56, %31
  %77 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %5, align 8
  %78 = call i32 @gss_put_ctx(%struct.gss_cl_ctx* %77)
  br label %79

79:                                               ; preds = %76, %20
  %80 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @trace_rpcgss_need_reencode(%struct.rpc_task* %80, i64 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.gss_cl_ctx* @gss_cred_get_ctx(%struct.rpc_cred*) #1

declare dso_local i64 @gss_seq_is_newer(i32, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @cmpxchg(i32*, i64, i32) #1

declare dso_local i32 @gss_put_ctx(%struct.gss_cl_ctx*) #1

declare dso_local i32 @trace_rpcgss_need_reencode(%struct.rpc_task*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
