; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_switch_client_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_switch_client_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.rpc_clnt*, i32, %struct.rpc_timeout*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xprt_create = type { i32 }
%struct.rpc_timeout = type { i32 }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"RPC:       failed to create new xprt for clnt %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RPC:       replaced xprt for clnt %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"RPC:       failed to switch xprt for clnt %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_switch_client_transport(%struct.rpc_clnt* %0, %struct.xprt_create* %1, %struct.rpc_timeout* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.xprt_create*, align 8
  %7 = alloca %struct.rpc_timeout*, align 8
  %8 = alloca %struct.rpc_timeout*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_xprt_switch*, align 8
  %11 = alloca %struct.rpc_xprt_switch*, align 8
  %12 = alloca %struct.rpc_xprt*, align 8
  %13 = alloca %struct.rpc_xprt*, align 8
  %14 = alloca %struct.rpc_clnt*, align 8
  %15 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.xprt_create* %1, %struct.xprt_create** %6, align 8
  store %struct.rpc_timeout* %2, %struct.rpc_timeout** %7, align 8
  %16 = load %struct.xprt_create*, %struct.xprt_create** %6, align 8
  %17 = call %struct.rpc_xprt* @xprt_create_transport(%struct.xprt_create* %16)
  store %struct.rpc_xprt* %17, %struct.rpc_xprt** %12, align 8
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  %19 = call i64 @IS_ERR(%struct.rpc_xprt* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.rpc_clnt* %22)
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  %25 = call i32 @PTR_ERR(%struct.rpc_xprt* %24)
  store i32 %25, i32* %4, align 4
  br label %109

26:                                               ; preds = %3
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.rpc_xprt_switch* @xprt_switch_alloc(%struct.rpc_xprt* %27, i32 %28)
  store %struct.rpc_xprt_switch* %29, %struct.rpc_xprt_switch** %10, align 8
  %30 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %10, align 8
  %31 = icmp eq %struct.rpc_xprt_switch* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  %34 = call i32 @xprt_put(%struct.rpc_xprt* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %109

37:                                               ; preds = %26
  %38 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %44 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %43, i32 0, i32 2
  %45 = load %struct.rpc_timeout*, %struct.rpc_timeout** %44, align 8
  store %struct.rpc_timeout* %45, %struct.rpc_timeout** %8, align 8
  %46 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  %48 = load %struct.rpc_timeout*, %struct.rpc_timeout** %7, align 8
  %49 = call %struct.rpc_xprt* @rpc_clnt_set_transport(%struct.rpc_clnt* %46, %struct.rpc_xprt* %47, %struct.rpc_timeout* %48)
  store %struct.rpc_xprt* %49, %struct.rpc_xprt** %13, align 8
  %50 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %51 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %50, i32 0, i32 1
  %52 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %10, align 8
  %53 = call %struct.rpc_xprt_switch* @xprt_iter_xchg_switch(i32* %51, %struct.rpc_xprt_switch* %52)
  store %struct.rpc_xprt_switch* %53, %struct.rpc_xprt_switch** %11, align 8
  %54 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %55 = call i32 @rpc_unregister_client(%struct.rpc_clnt* %54)
  %56 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %57 = call i32 @__rpc_clnt_remove_pipedir(%struct.rpc_clnt* %56)
  %58 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %59 = call i32 @rpc_clnt_debugfs_unregister(%struct.rpc_clnt* %58)
  %60 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %61 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %60, i32 0, i32 0
  %62 = load %struct.rpc_clnt*, %struct.rpc_clnt** %61, align 8
  store %struct.rpc_clnt* %62, %struct.rpc_clnt** %14, align 8
  %63 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %64 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %65 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %64, i32 0, i32 0
  store %struct.rpc_clnt* %63, %struct.rpc_clnt** %65, align 8
  %66 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rpc_client_register(%struct.rpc_clnt* %66, i32 %67, i32* null)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %37
  br label %87

72:                                               ; preds = %37
  %73 = call i32 (...) @synchronize_rcu()
  %74 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %75 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %76 = icmp ne %struct.rpc_clnt* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %79 = call i32 @rpc_release_client(%struct.rpc_clnt* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %11, align 8
  %82 = call i32 @xprt_switch_put(%struct.rpc_xprt_switch* %81)
  %83 = load %struct.rpc_xprt*, %struct.rpc_xprt** %13, align 8
  %84 = call i32 @xprt_put(%struct.rpc_xprt* %83)
  %85 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %86 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.rpc_clnt* %85)
  store i32 0, i32* %4, align 4
  br label %109

87:                                               ; preds = %71
  %88 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %89 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %88, i32 0, i32 1
  %90 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %11, align 8
  %91 = call %struct.rpc_xprt_switch* @xprt_iter_xchg_switch(i32* %89, %struct.rpc_xprt_switch* %90)
  store %struct.rpc_xprt_switch* %91, %struct.rpc_xprt_switch** %10, align 8
  %92 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %93 = load %struct.rpc_xprt*, %struct.rpc_xprt** %13, align 8
  %94 = load %struct.rpc_timeout*, %struct.rpc_timeout** %8, align 8
  %95 = call %struct.rpc_xprt* @rpc_clnt_set_transport(%struct.rpc_clnt* %92, %struct.rpc_xprt* %93, %struct.rpc_timeout* %94)
  %96 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %97 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %98 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %97, i32 0, i32 0
  store %struct.rpc_clnt* %96, %struct.rpc_clnt** %98, align 8
  %99 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @rpc_client_register(%struct.rpc_clnt* %99, i32 %100, i32* null)
  %102 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %10, align 8
  %103 = call i32 @xprt_switch_put(%struct.rpc_xprt_switch* %102)
  %104 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  %105 = call i32 @xprt_put(%struct.rpc_xprt* %104)
  %106 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %107 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.rpc_clnt* %106)
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %87, %80, %32, %21
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.rpc_xprt* @xprt_create_transport(%struct.xprt_create*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_xprt*) #1

declare dso_local i32 @dprintk(i8*, %struct.rpc_clnt*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_xprt*) #1

declare dso_local %struct.rpc_xprt_switch* @xprt_switch_alloc(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

declare dso_local %struct.rpc_xprt* @rpc_clnt_set_transport(%struct.rpc_clnt*, %struct.rpc_xprt*, %struct.rpc_timeout*) #1

declare dso_local %struct.rpc_xprt_switch* @xprt_iter_xchg_switch(i32*, %struct.rpc_xprt_switch*) #1

declare dso_local i32 @rpc_unregister_client(%struct.rpc_clnt*) #1

declare dso_local i32 @__rpc_clnt_remove_pipedir(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_clnt_debugfs_unregister(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_client_register(%struct.rpc_clnt*, i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rpc_release_client(%struct.rpc_clnt*) #1

declare dso_local i32 @xprt_switch_put(%struct.rpc_xprt_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
