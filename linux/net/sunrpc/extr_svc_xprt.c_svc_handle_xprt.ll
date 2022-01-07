; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_handle_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_handle_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32, i32, %struct.TYPE_5__*, %struct.svc_serv* }
%struct.TYPE_5__ = type { i32 }
%struct.svc_serv = type { i32 }
%struct.svc_xprt = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.svc_rqst*)*, %struct.svc_xprt* (%struct.svc_xprt*)*, i32 (%struct.svc_xprt*)* }
%struct.TYPE_4__ = type { i32 }

@XPT_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"svc_recv: found XPT_CLOSE\0A\00", align 1
@XPT_KILL_TEMP = common dso_local global i32 0, align 4
@XPT_LISTENER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"svc: server %p, pool %u, transport %p, inuse=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_xprt*)* @svc_handle_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_handle_xprt(%struct.svc_rqst* %0, %struct.svc_xprt* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_xprt*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.svc_xprt* %1, %struct.svc_xprt** %4, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 4
  %10 = load %struct.svc_serv*, %struct.svc_serv** %9, align 8
  store %struct.svc_serv* %10, %struct.svc_serv** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @XPT_CLOSE, align 4
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %13 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %12, i32 0, i32 6
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @XPT_KILL_TEMP, align 4
  %19 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %20 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %19, i32 0, i32 6
  %21 = call i64 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %25 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32 (%struct.svc_xprt*)*, i32 (%struct.svc_xprt*)** %27, align 8
  %29 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %30 = call i32 %28(%struct.svc_xprt* %29)
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %33 = call i32 @svc_delete_xprt(%struct.svc_xprt* %32)
  br label %133

34:                                               ; preds = %2
  %35 = load i32, i32* @XPT_LISTENER, align 4
  %36 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %37 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %36, i32 0, i32 6
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %42 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__module_get(i32 %45)
  %47 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %48 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @svc_check_conn_limits(i32 %49)
  %51 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %52 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.svc_xprt* (%struct.svc_xprt*)*, %struct.svc_xprt* (%struct.svc_xprt*)** %54, align 8
  %56 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %57 = call %struct.svc_xprt* %55(%struct.svc_xprt* %56)
  store %struct.svc_xprt* %57, %struct.svc_xprt** %7, align 8
  %58 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %59 = icmp ne %struct.svc_xprt* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %40
  %61 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %62 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_cred(i32 %63)
  %65 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %66 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %68 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %69 = call i32 @svc_add_new_temp_xprt(%struct.svc_serv* %67, %struct.svc_xprt* %68)
  br label %77

70:                                               ; preds = %40
  %71 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %72 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @module_put(i32 %75)
  br label %77

77:                                               ; preds = %70, %60
  br label %130

78:                                               ; preds = %34
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %80 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %81 = call i64 @svc_xprt_reserve_slot(%struct.svc_rqst* %79, %struct.svc_xprt* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %78
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %86 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %91 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %92 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %91, i32 0, i32 2
  %93 = call i32 @kref_read(i32* %92)
  %94 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.svc_rqst* %84, i32 %89, %struct.svc_xprt* %90, i32 %93)
  %95 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %96 = call i32 @svc_deferred_dequeue(%struct.svc_xprt* %95)
  %97 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %98 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %100 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %83
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %105 = call i32 @svc_deferred_recv(%struct.svc_rqst* %104)
  store i32 %105, i32* %6, align 4
  br label %114

106:                                              ; preds = %83
  %107 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %108 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %110, align 8
  %112 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %113 = call i32 %111(%struct.svc_rqst* %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %106, %103
  %115 = call i32 (...) @ktime_get()
  %116 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %117 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %119 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %122 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %124 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %127 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %126, i32 0, i32 0
  %128 = call i32 @atomic_add(i32 %125, i32* %127)
  br label %129

129:                                              ; preds = %114, %78
  br label %130

130:                                              ; preds = %129, %77
  %131 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %132 = call i32 @svc_xprt_received(%struct.svc_xprt* %131)
  br label %133

133:                                              ; preds = %130, %31
  %134 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @trace_svc_handle_xprt(%struct.svc_xprt* %134, i32 %135)
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @svc_delete_xprt(%struct.svc_xprt*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @svc_check_conn_limits(i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @svc_add_new_temp_xprt(%struct.svc_serv*, %struct.svc_xprt*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i64 @svc_xprt_reserve_slot(%struct.svc_rqst*, %struct.svc_xprt*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @svc_deferred_dequeue(%struct.svc_xprt*) #1

declare dso_local i32 @svc_deferred_recv(%struct.svc_rqst*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @svc_xprt_received(%struct.svc_xprt*) #1

declare dso_local i32 @trace_svc_handle_xprt(%struct.svc_xprt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
