; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c_alloc_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c_alloc_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_operations = type { i32 }
%struct.super_block = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.super_operations*, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.file_system_type = type { i32, i32*, i32 }
%struct.user_namespace = type { i32 }

@GFP_USER = common dso_local global i32 0, align 4
@alloc_super.default_op = internal constant %struct.super_operations zeroinitializer, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@SB_FREEZE_LEVELS = common dso_local global i32 0, align 4
@sb_writers_name = common dso_local global i32* null, align 8
@noop_backing_dev_info = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@SB_I_NODEV = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i32 0, align 4
@TIME64_MIN = common dso_local global i32 0, align 4
@TIME64_MAX = common dso_local global i32 0, align 4
@CLEANCACHE_NO_POOL = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4
@super_cache_scan = common dso_local global i32 0, align 4
@super_cache_count = common dso_local global i32 0, align 4
@SHRINKER_NUMA_AWARE = common dso_local global i32 0, align 4
@SHRINKER_MEMCG_AWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.super_block* (%struct.file_system_type*, i32, %struct.user_namespace*)* @alloc_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.super_block* @alloc_super(%struct.file_system_type* %0, i32 %1, %struct.user_namespace* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.file_system_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.user_namespace* %2, %struct.user_namespace** %7, align 8
  %10 = load i32, i32* @GFP_USER, align 4
  %11 = call %struct.super_block* @kzalloc(i32 152, i32 %10)
  store %struct.super_block* %11, %struct.super_block** %8, align 8
  %12 = load %struct.super_block*, %struct.super_block** %8, align 8
  %13 = icmp ne %struct.super_block* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.super_block* null, %struct.super_block** %4, align 8
  br label %192

15:                                               ; preds = %3
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 26
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %20 = call i32* @get_user_ns(%struct.user_namespace* %19)
  %21 = load %struct.super_block*, %struct.super_block** %8, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 22
  store i32* %20, i32** %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 25
  %25 = call i32 @init_rwsem(i32* %24)
  %26 = load %struct.super_block*, %struct.super_block** %8, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 25
  %28 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %29 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %28, i32 0, i32 2
  %30 = call i32 @lockdep_set_class(i32* %27, i32* %29)
  %31 = load %struct.super_block*, %struct.super_block** %8, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 25
  %33 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %34 = call i32 @down_write_nested(i32* %32, i32 %33)
  %35 = load %struct.super_block*, %struct.super_block** %8, align 8
  %36 = call i64 @security_sb_alloc(%struct.super_block* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  br label %189

39:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SB_FREEZE_LEVELS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.super_block*, %struct.super_block** %8, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 24
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32*, i32** @sb_writers_name, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %58 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i64 @__percpu_init_rwsem(i32* %51, i32 %56, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  br label %189

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %40

70:                                               ; preds = %40
  %71 = load %struct.super_block*, %struct.super_block** %8, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 24
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @init_waitqueue_head(i32* %73)
  %75 = load %struct.super_block*, %struct.super_block** %8, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 23
  store i32* @noop_backing_dev_info, i32** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.super_block*, %struct.super_block** %8, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.super_block*, %struct.super_block** %8, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 22
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, @init_user_ns
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load i32, i32* @SB_I_NODEV, align 4
  %86 = load %struct.super_block*, %struct.super_block** %8, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 21
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %70
  %91 = load %struct.super_block*, %struct.super_block** %8, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 20
  %93 = call i32 @INIT_HLIST_NODE(i32* %92)
  %94 = load %struct.super_block*, %struct.super_block** %8, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 19
  %96 = call i32 @INIT_HLIST_BL_HEAD(i32* %95)
  %97 = load %struct.super_block*, %struct.super_block** %8, align 8
  %98 = getelementptr inbounds %struct.super_block, %struct.super_block* %97, i32 0, i32 18
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load %struct.super_block*, %struct.super_block** %8, align 8
  %101 = getelementptr inbounds %struct.super_block, %struct.super_block* %100, i32 0, i32 17
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.super_block*, %struct.super_block** %8, align 8
  %104 = getelementptr inbounds %struct.super_block, %struct.super_block* %103, i32 0, i32 16
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.super_block*, %struct.super_block** %8, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 15
  %108 = call i32 @INIT_LIST_HEAD(i32* %107)
  %109 = load %struct.super_block*, %struct.super_block** %8, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 14
  %111 = call i32 @spin_lock_init(i32* %110)
  %112 = load %struct.super_block*, %struct.super_block** %8, align 8
  %113 = getelementptr inbounds %struct.super_block, %struct.super_block* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load %struct.super_block*, %struct.super_block** %8, align 8
  %115 = getelementptr inbounds %struct.super_block, %struct.super_block* %114, i32 0, i32 13
  %116 = call i32 @atomic_set(i32* %115, i32 1)
  %117 = load %struct.super_block*, %struct.super_block** %8, align 8
  %118 = getelementptr inbounds %struct.super_block, %struct.super_block* %117, i32 0, i32 12
  %119 = call i32 @mutex_init(i32* %118)
  %120 = load %struct.super_block*, %struct.super_block** %8, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 12
  %122 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %123 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %122, i32 0, i32 0
  %124 = call i32 @lockdep_set_class(i32* %121, i32* %123)
  %125 = load %struct.super_block*, %struct.super_block** %8, align 8
  %126 = getelementptr inbounds %struct.super_block, %struct.super_block* %125, i32 0, i32 11
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 @init_rwsem(i32* %127)
  %129 = load i32, i32* @MAX_NON_LFS, align 4
  %130 = load %struct.super_block*, %struct.super_block** %8, align 8
  %131 = getelementptr inbounds %struct.super_block, %struct.super_block* %130, i32 0, i32 10
  store i32 %129, i32* %131, align 8
  %132 = load %struct.super_block*, %struct.super_block** %8, align 8
  %133 = getelementptr inbounds %struct.super_block, %struct.super_block* %132, i32 0, i32 9
  store %struct.super_operations* @alloc_super.default_op, %struct.super_operations** %133, align 8
  %134 = load %struct.super_block*, %struct.super_block** %8, align 8
  %135 = getelementptr inbounds %struct.super_block, %struct.super_block* %134, i32 0, i32 2
  store i32 1000000000, i32* %135, align 8
  %136 = load i32, i32* @TIME64_MIN, align 4
  %137 = load %struct.super_block*, %struct.super_block** %8, align 8
  %138 = getelementptr inbounds %struct.super_block, %struct.super_block* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @TIME64_MAX, align 4
  %140 = load %struct.super_block*, %struct.super_block** %8, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @CLEANCACHE_NO_POOL, align 4
  %143 = load %struct.super_block*, %struct.super_block** %8, align 8
  %144 = getelementptr inbounds %struct.super_block, %struct.super_block* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @DEFAULT_SEEKS, align 4
  %146 = load %struct.super_block*, %struct.super_block** %8, align 8
  %147 = getelementptr inbounds %struct.super_block, %struct.super_block* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @super_cache_scan, align 4
  %150 = load %struct.super_block*, %struct.super_block** %8, align 8
  %151 = getelementptr inbounds %struct.super_block, %struct.super_block* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @super_cache_count, align 4
  %154 = load %struct.super_block*, %struct.super_block** %8, align 8
  %155 = getelementptr inbounds %struct.super_block, %struct.super_block* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 4
  %157 = load %struct.super_block*, %struct.super_block** %8, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i32 1024, i32* %159, align 4
  %160 = load i32, i32* @SHRINKER_NUMA_AWARE, align 4
  %161 = load i32, i32* @SHRINKER_MEMCG_AWARE, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.super_block*, %struct.super_block** %8, align 8
  %164 = getelementptr inbounds %struct.super_block, %struct.super_block* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load %struct.super_block*, %struct.super_block** %8, align 8
  %167 = getelementptr inbounds %struct.super_block, %struct.super_block* %166, i32 0, i32 3
  %168 = call i64 @prealloc_shrinker(%struct.TYPE_7__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %90
  br label %189

171:                                              ; preds = %90
  %172 = load %struct.super_block*, %struct.super_block** %8, align 8
  %173 = getelementptr inbounds %struct.super_block, %struct.super_block* %172, i32 0, i32 5
  %174 = load %struct.super_block*, %struct.super_block** %8, align 8
  %175 = getelementptr inbounds %struct.super_block, %struct.super_block* %174, i32 0, i32 3
  %176 = call i64 @list_lru_init_memcg(i32* %173, %struct.TYPE_7__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %189

179:                                              ; preds = %171
  %180 = load %struct.super_block*, %struct.super_block** %8, align 8
  %181 = getelementptr inbounds %struct.super_block, %struct.super_block* %180, i32 0, i32 4
  %182 = load %struct.super_block*, %struct.super_block** %8, align 8
  %183 = getelementptr inbounds %struct.super_block, %struct.super_block* %182, i32 0, i32 3
  %184 = call i64 @list_lru_init_memcg(i32* %181, %struct.TYPE_7__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %189

187:                                              ; preds = %179
  %188 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %188, %struct.super_block** %4, align 8
  br label %192

189:                                              ; preds = %186, %178, %170, %65, %38
  %190 = load %struct.super_block*, %struct.super_block** %8, align 8
  %191 = call i32 @destroy_unused_super(%struct.super_block* %190)
  store %struct.super_block* null, %struct.super_block** %4, align 8
  br label %192

192:                                              ; preds = %189, %187, %14
  %193 = load %struct.super_block*, %struct.super_block** %4, align 8
  ret %struct.super_block* %193
}

declare dso_local %struct.super_block* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i64 @security_sb_alloc(%struct.super_block*) #1

declare dso_local i64 @__percpu_init_rwsem(i32*, i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_HLIST_BL_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @prealloc_shrinker(%struct.TYPE_7__*) #1

declare dso_local i64 @list_lru_init_memcg(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @destroy_unused_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
