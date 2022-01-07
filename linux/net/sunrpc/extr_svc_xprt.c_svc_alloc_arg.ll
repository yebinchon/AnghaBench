; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_alloc_arg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_alloc_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.page**, %struct.xdr_buf, %struct.page**, %struct.svc_serv* }
%struct.xdr_buf = type { i32, i32, %struct.TYPE_4__*, i64, %struct.page**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.svc_serv = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RPCSVC_MAXPAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"svc: warning: pages=%u > RPCSVC_MAXPAGES=%lu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svc_alloc_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_alloc_arg(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 3
  %11 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  store %struct.svc_serv* %11, %struct.svc_serv** %4, align 8
  %12 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %13 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %26 = call i32 @pr_warn_once(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %73, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %64, %33
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %36 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %35, i32 0, i32 0
  %37 = load %struct.page**, %struct.page*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  %42 = icmp eq %struct.page* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %34
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.page* @alloc_page(i32 %44)
  store %struct.page* %45, %struct.page** %8, align 8
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %50 = call i32 @set_current_state(i32 %49)
  %51 = call i64 (...) @signalled()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = call i64 (...) @kthread_should_stop()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53, %48
  %57 = load i32, i32* @TASK_RUNNING, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load i32, i32* @EINTR, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %136

61:                                               ; preds = %53
  %62 = call i32 @msecs_to_jiffies(i32 500)
  %63 = call i32 @schedule_timeout(i32 %62)
  br label %64

64:                                               ; preds = %61, %43
  %65 = load %struct.page*, %struct.page** %8, align 8
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %67 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %66, i32 0, i32 0
  %68 = load %struct.page**, %struct.page*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.page*, %struct.page** %68, i64 %70
  store %struct.page* %65, %struct.page** %71, align 8
  br label %34

72:                                               ; preds = %34
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 0
  %79 = load %struct.page**, %struct.page*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.page*, %struct.page** %79, i64 %81
  %83 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %84 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %83, i32 0, i32 2
  store %struct.page** %82, %struct.page*** %84, align 8
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %86 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %85, i32 0, i32 0
  %87 = load %struct.page**, %struct.page*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %90
  store %struct.page* null, %struct.page** %91, align 8
  %92 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %93 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %92, i32 0, i32 1
  store %struct.xdr_buf* %93, %struct.xdr_buf** %5, align 8
  %94 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %95 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %94, i32 0, i32 0
  %96 = load %struct.page**, %struct.page*** %95, align 8
  %97 = getelementptr inbounds %struct.page*, %struct.page** %96, i64 0
  %98 = load %struct.page*, %struct.page** %97, align 8
  %99 = call i32 @page_address(%struct.page* %98)
  %100 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %101 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %100, i32 0, i32 5
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %99, i32* %104, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %107 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %106, i32 0, i32 5
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %112 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %111, i32 0, i32 0
  %113 = load %struct.page**, %struct.page*** %112, align 8
  %114 = getelementptr inbounds %struct.page*, %struct.page** %113, i64 1
  %115 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %116 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %115, i32 0, i32 4
  store %struct.page** %114, %struct.page*** %116, align 8
  %117 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %118 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 2
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %124 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* @PAGE_SIZE, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %130 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %132 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %76, %56
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signalled(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
