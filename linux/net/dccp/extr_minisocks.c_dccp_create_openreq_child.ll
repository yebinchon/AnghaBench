; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_minisocks.c_dccp_create_openreq_child.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_minisocks.c_dccp_create_openreq_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_request_sock = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { i32 }
%struct.dccp_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_ROLE_SERVER = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_MIB_PASSIVEOPENS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @dccp_create_openreq_child(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.dccp_request_sock*, align 8
  %10 = alloca %struct.inet_connection_sock*, align 8
  %11 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.request_sock* %1, %struct.request_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sock* @inet_csk_clone_lock(%struct.sock* %12, %struct.request_sock* %13, i32 %14)
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %91

18:                                               ; preds = %3
  %19 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %20 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %19)
  store %struct.dccp_request_sock* %20, %struct.dccp_request_sock** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %21)
  store %struct.inet_connection_sock* %22, %struct.inet_connection_sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %23)
  store %struct.dccp_sock* %24, %struct.dccp_sock** %11, align 8
  %25 = load i32, i32* @DCCP_ROLE_SERVER, align 4
  %26 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %27 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %29 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %28, i32 0, i32 10
  store i32* null, i32** %29, align 8
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 9
  store i32* null, i32** %31, align 8
  %32 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %33 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %36 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %38 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %41 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %43 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %46 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %51 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %54 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %57 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %59 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %62 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %64 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %67 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %69 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %72 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %74 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %77 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sock*, %struct.sock** %8, align 8
  %79 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %80 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %79, i32 0, i32 0
  %81 = call i64 @dccp_feat_activate_values(%struct.sock* %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %18
  %84 = load %struct.sock*, %struct.sock** %8, align 8
  %85 = call i32 @sk_free_unlock_clone(%struct.sock* %84)
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %93

86:                                               ; preds = %18
  %87 = load %struct.sock*, %struct.sock** %8, align 8
  %88 = call i32 @dccp_init_xmit_timers(%struct.sock* %87)
  %89 = load i32, i32* @DCCP_MIB_PASSIVEOPENS, align 4
  %90 = call i32 @__DCCP_INC_STATS(i32 %89)
  br label %91

91:                                               ; preds = %86, %3
  %92 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %92, %struct.sock** %4, align 8
  br label %93

93:                                               ; preds = %91, %83
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %94
}

declare dso_local %struct.sock* @inet_csk_clone_lock(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @dccp_feat_activate_values(%struct.sock*, i32*) #1

declare dso_local i32 @sk_free_unlock_clone(%struct.sock*) #1

declare dso_local i32 @dccp_init_xmit_timers(%struct.sock*) #1

declare dso_local i32 @__DCCP_INC_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
