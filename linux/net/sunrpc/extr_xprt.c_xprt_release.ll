; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst*, %struct.rpc_xprt*, i64 }
%struct.rpc_rqst = type { i32 (%struct.rpc_rqst*)*, i32*, i32, i32, i64, %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, %struct.rpc_rqst*)*, i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)* }

@.str = private unnamed_addr constant [29 x i8] c"RPC: %5u release request %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_release(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 1
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %7, %struct.rpc_rqst** %4, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %9 = icmp eq %struct.rpc_rqst* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 2
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %17, align 8
  store %struct.rpc_xprt* %18, %struct.rpc_xprt** %3, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %21 = call i32 @xprt_release_write(%struct.rpc_xprt* %19, %struct.rpc_task* %20)
  br label %22

22:                                               ; preds = %15, %10
  br label %128

23:                                               ; preds = %1
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %24, i32 0, i32 5
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %25, align 8
  store %struct.rpc_xprt* %26, %struct.rpc_xprt** %3, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %28 = call i32 @xprt_request_dequeue_xprt(%struct.rpc_task* %27)
  %29 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32 (%struct.rpc_xprt*, %struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)** %35, align 8
  %37 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %38 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %39 = call i32 %36(%struct.rpc_xprt* %37, %struct.rpc_task* %38)
  %40 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %43, align 8
  %45 = icmp ne i32 (%struct.rpc_task*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %23
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %50, align 8
  %52 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %53 = call i32 %51(%struct.rpc_task* %52)
  br label %54

54:                                               ; preds = %46, %23
  %55 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %56 = call i32 @xprt_schedule_autodisconnect(%struct.rpc_xprt* %55)
  %57 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %58 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %61 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %66 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %68, align 8
  %70 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %71 = call i32 %69(%struct.rpc_task* %70)
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %74 = call i32 @xprt_inject_disconnect(%struct.rpc_xprt* %73)
  %75 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %76 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %75, i32 0, i32 3
  %77 = call i32 @xdr_free_bvec(i32* %76)
  %78 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %79 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %78, i32 0, i32 2
  %80 = call i32 @xdr_free_bvec(i32* %79)
  %81 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %82 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %87 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @put_rpccred(i32* %88)
  br label %90

90:                                               ; preds = %85, %72
  %91 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %92 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %91, i32 0, i32 1
  store %struct.rpc_rqst* null, %struct.rpc_rqst** %92, align 8
  %93 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %94 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %93, i32 0, i32 0
  %95 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %94, align 8
  %96 = icmp ne i32 (%struct.rpc_rqst*)* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %99 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %98, i32 0, i32 0
  %100 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %99, align 8
  %101 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %102 = call i32 %100(%struct.rpc_rqst* %101)
  br label %103

103:                                              ; preds = %97, %90
  %104 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %105 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %108 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %106, %struct.rpc_rqst* %107)
  %109 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %110 = call i32 @bc_prealloc(%struct.rpc_rqst* %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i64 @likely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %103
  %117 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %118 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.rpc_xprt*, %struct.rpc_rqst*)*, i32 (%struct.rpc_xprt*, %struct.rpc_rqst*)** %120, align 8
  %122 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %123 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %124 = call i32 %121(%struct.rpc_xprt* %122, %struct.rpc_rqst* %123)
  br label %128

125:                                              ; preds = %103
  %126 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %127 = call i32 @xprt_free_bc_request(%struct.rpc_rqst* %126)
  br label %128

128:                                              ; preds = %22, %125, %116
  ret void
}

declare dso_local i32 @xprt_release_write(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i32 @xprt_request_dequeue_xprt(%struct.rpc_task*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xprt_schedule_autodisconnect(%struct.rpc_xprt*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xprt_inject_disconnect(%struct.rpc_xprt*) #1

declare dso_local i32 @xdr_free_bvec(i32*) #1

declare dso_local i32 @put_rpccred(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_rqst*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bc_prealloc(%struct.rpc_rqst*) #1

declare dso_local i32 @xprt_free_bc_request(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
