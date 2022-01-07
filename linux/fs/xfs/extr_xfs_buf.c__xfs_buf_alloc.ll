; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c__xfs_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c__xfs_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, %struct.xfs_buftarg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.xfs_buftarg = type { i32 }
%struct.xfs_buf_map = type { i64, i32 }

@xfs_buf_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XBF_UNMAPPED = common dso_local global i32 0, align 4
@XBF_TRYLOCK = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@XBF_READ_AHEAD = common dso_local global i32 0, align 4
@xb_create = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_buf* (%struct.xfs_buftarg*, %struct.xfs_buf_map*, i32, i32)* @_xfs_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_buf* @_xfs_buf_alloc(%struct.xfs_buftarg* %0, %struct.xfs_buf_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_buftarg*, align 8
  %7 = alloca %struct.xfs_buf_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %6, align 8
  store %struct.xfs_buf_map* %1, %struct.xfs_buf_map** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @xfs_buf_zone, align 4
  %14 = load i32, i32* @KM_NOFS, align 4
  %15 = call %struct.xfs_buf* @kmem_zone_zalloc(i32 %13, i32 %14)
  store %struct.xfs_buf* %15, %struct.xfs_buf** %10, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %17 = icmp ne %struct.xfs_buf* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.xfs_buf* null, %struct.xfs_buf** %5, align 8
  br label %147

23:                                               ; preds = %4
  %24 = load i32, i32* @XBF_UNMAPPED, align 4
  %25 = load i32, i32* @XBF_TRYLOCK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @XBF_ASYNC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @XBF_READ_AHEAD, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 15
  %36 = call i32 @atomic_set(i32* %35, i32 1)
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 14
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 13
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %44 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %43, i32 0, i32 12
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %47 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %46, i32 0, i32 11
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %50 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %49, i32 0, i32 10
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %53 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %52, i32 0, i32 9
  %54 = call i32 @sema_init(i32* %53, i32 0)
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %56 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %55, i32 0, i32 8
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %6, align 8
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %60 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %59, i32 0, i32 7
  store %struct.xfs_buftarg* %58, %struct.xfs_buftarg** %60, align 8
  %61 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %6, align 8
  %62 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %65 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %68 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @xfs_buf_get_maps(%struct.xfs_buf* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %23
  %75 = load i32, i32* @xfs_buf_zone, align 4
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %77 = call i32 @kmem_zone_free(i32 %75, %struct.xfs_buf* %76)
  store %struct.xfs_buf* null, %struct.xfs_buf** %5, align 8
  br label %147

78:                                               ; preds = %23
  %79 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %7, align 8
  %80 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %79, i64 0
  %81 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %84 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %86 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %128, %78
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %87
  %92 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %92, i64 %94
  %96 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %99 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 8
  %105 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %7, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %105, i64 %107
  %109 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %112 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %111, i32 0, i32 5
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i64 %110, i64* %117, align 8
  %118 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %118, i64 %120
  %122 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %125 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %91
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %87

131:                                              ; preds = %87
  %132 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %133 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %132, i32 0, i32 3
  %134 = call i32 @atomic_set(i32* %133, i32 0)
  %135 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %136 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %135, i32 0, i32 2
  %137 = call i32 @init_waitqueue_head(i32* %136)
  %138 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %139 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @xb_create, align 4
  %142 = call i32 @XFS_STATS_INC(i32 %140, i32 %141)
  %143 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %144 = load i32, i32* @_RET_IP_, align 4
  %145 = call i32 @trace_xfs_buf_init(%struct.xfs_buf* %143, i32 %144)
  %146 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  store %struct.xfs_buf* %146, %struct.xfs_buf** %5, align 8
  br label %147

147:                                              ; preds = %131, %74, %22
  %148 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  ret %struct.xfs_buf* %148
}

declare dso_local %struct.xfs_buf* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @xfs_buf_get_maps(%struct.xfs_buf*, i32) #1

declare dso_local i32 @kmem_zone_free(i32, %struct.xfs_buf*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @XFS_STATS_INC(i32, i32) #1

declare dso_local i32 @trace_xfs_buf_init(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
