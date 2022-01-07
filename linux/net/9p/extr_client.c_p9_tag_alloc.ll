; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_tag_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_tag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_req_t = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.p9_client = type { i32, i32, i32 }

@p9_req_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_STATUS_ALLOC = common dso_local global i32 0, align 4
@P9_TVERSION = common dso_local global i64 0, align 8
@P9_NOTAG = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_req_t* (%struct.p9_client*, i64, i32)* @p9_tag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_req_t* @p9_tag_alloc(%struct.p9_client* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.p9_req_t*, align 8
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.p9_req_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @p9_req_cache, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.p9_req_t* @kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.p9_req_t* %13, %struct.p9_req_t** %8, align 8
  %14 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %15 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @min(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %20 = icmp ne %struct.p9_req_t* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.p9_req_t* @ERR_PTR(i32 %23)
  store %struct.p9_req_t* %24, %struct.p9_req_t** %4, align 8
  br label %115

25:                                               ; preds = %3
  %26 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %27 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %28 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %27, i32 0, i32 1
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @p9_fcall_init(%struct.p9_client* %26, %struct.TYPE_6__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %108

33:                                               ; preds = %25
  %34 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %35 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %36 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @p9_fcall_init(%struct.p9_client* %34, %struct.TYPE_6__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %101

41:                                               ; preds = %33
  %42 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %43 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %42, i32 0, i32 1
  %44 = call i32 @p9pdu_reset(%struct.TYPE_6__* %43)
  %45 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %46 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %45, i32 0, i32 0
  %47 = call i32 @p9pdu_reset(%struct.TYPE_6__* %46)
  %48 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %49 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @REQ_STATUS_ALLOC, align 4
  %51 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %52 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %54 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %53, i32 0, i32 4
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %57 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %56, i32 0, i32 3
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load i32, i32* @GFP_NOFS, align 4
  %60 = call i32 @idr_preload(i32 %59)
  %61 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %62 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @P9_TVERSION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %41
  %68 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %69 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %68, i32 0, i32 1
  %70 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %71 = load i64, i64* @P9_NOTAG, align 8
  %72 = load i64, i64* @P9_NOTAG, align 8
  %73 = add nsw i64 %72, 1
  %74 = load i32, i32* @GFP_NOWAIT, align 4
  %75 = call i32 @idr_alloc(i32* %69, %struct.p9_req_t* %70, i64 %71, i64 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %83

76:                                               ; preds = %41
  %77 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %78 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %77, i32 0, i32 1
  %79 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %80 = load i64, i64* @P9_NOTAG, align 8
  %81 = load i32, i32* @GFP_NOWAIT, align 4
  %82 = call i32 @idr_alloc(i32* %78, %struct.p9_req_t* %79, i64 0, i64 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %76, %67
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %86 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %89 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock_irq(i32* %89)
  %91 = call i32 (...) @idr_preload_end()
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %101

95:                                               ; preds = %83
  %96 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %97 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @refcount_set(i32* %98, i32 2)
  %100 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  store %struct.p9_req_t* %100, %struct.p9_req_t** %4, align 8
  br label %115

101:                                              ; preds = %94, %40
  %102 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %103 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %102, i32 0, i32 1
  %104 = call i32 @p9_fcall_fini(%struct.TYPE_6__* %103)
  %105 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %106 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %105, i32 0, i32 0
  %107 = call i32 @p9_fcall_fini(%struct.TYPE_6__* %106)
  br label %108

108:                                              ; preds = %101, %32
  %109 = load i32, i32* @p9_req_cache, align 4
  %110 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %111 = call i32 @kmem_cache_free(i32 %109, %struct.p9_req_t* %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  %114 = call %struct.p9_req_t* @ERR_PTR(i32 %113)
  store %struct.p9_req_t* %114, %struct.p9_req_t** %4, align 8
  br label %115

115:                                              ; preds = %108, %95, %21
  %116 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  ret %struct.p9_req_t* %116
}

declare dso_local %struct.p9_req_t* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.p9_req_t* @ERR_PTR(i32) #1

declare dso_local i64 @p9_fcall_init(%struct.p9_client*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @p9pdu_reset(%struct.TYPE_6__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.p9_req_t*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @p9_fcall_fini(%struct.TYPE_6__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
