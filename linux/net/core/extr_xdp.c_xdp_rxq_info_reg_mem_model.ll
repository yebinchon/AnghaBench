; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_rxq_info_reg_mem_model.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_rxq_info_reg_mem_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_rxq_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xdp_mem_allocator = type { i32, i32, i8*, %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@REG_STATE_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Missing register, driver bug\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_POOL = common dso_local global i32 0, align 4
@MEM_TYPE_ZERO_COPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mem_id_init = common dso_local global i32 0, align 4
@mem_id_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mem_id_ht = common dso_local global i32 0, align 4
@mem_id_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_rxq_info_reg_mem_model(%struct.xdp_rxq_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_rxq_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xdp_mem_allocator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.xdp_rxq_info* %0, %struct.xdp_rxq_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %16 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_STATE_REGISTERED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %130

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @__is_supported_mem_type(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %130

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %34 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MEM_TYPE_PAGE_POOL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MEM_TYPE_ZERO_COPY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %130

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %130

50:                                               ; preds = %31
  %51 = load i32, i32* @mem_id_init, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = call i32 @mutex_lock(i32* @mem_id_lock)
  %55 = call i32 (...) @__mem_id_init_hash_table()
  store i32 %55, i32* %12, align 4
  %56 = call i32 @mutex_unlock(i32* @mem_id_lock)
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = call i32 @WARN_ON(i32 1)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %130

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.xdp_mem_allocator* @kzalloc(i32 24, i32 %64)
  store %struct.xdp_mem_allocator* %65, %struct.xdp_mem_allocator** %8, align 8
  %66 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %67 = icmp ne %struct.xdp_mem_allocator* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %130

71:                                               ; preds = %63
  %72 = call i32 @mutex_lock(i32* @mem_id_lock)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @__mem_id_cyclic_get(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %11, align 4
  br label %125

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %82 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %85 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %84, i32 0, i32 3
  %86 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %87 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %86, i32 0, i32 1
  %88 = bitcast %struct.TYPE_2__* %85 to i8*
  %89 = bitcast %struct.TYPE_2__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %92 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @mem_id_ht, align 4
  %94 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %95 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %94, i32 0, i32 1
  %96 = call i8* @rhashtable_insert_slow(i32 %93, i32* %10, i32* %95)
  store i8* %96, i8** %13, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %79
  %101 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %102 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ida_simple_remove(i32* @mem_id_pool, i32 %104)
  %106 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %107 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %11, align 4
  br label %125

111:                                              ; preds = %79
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @MEM_TYPE_PAGE_POOL, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %117 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @page_pool_get(i32 %118)
  br label %120

120:                                              ; preds = %115, %111
  %121 = call i32 @mutex_unlock(i32* @mem_id_lock)
  %122 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %123 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %5, align 8
  %124 = call i32 @trace_mem_connect(%struct.xdp_mem_allocator* %122, %struct.xdp_rxq_info* %123)
  store i32 0, i32* %4, align 4
  br label %130

125:                                              ; preds = %100, %77
  %126 = call i32 @mutex_unlock(i32* @mem_id_lock)
  %127 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %8, align 8
  %128 = call i32 @kfree(%struct.xdp_mem_allocator* %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %120, %68, %59, %49, %46, %28, %20
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @__is_supported_mem_type(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mem_id_init_hash_table(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.xdp_mem_allocator* @kzalloc(i32, i32) #1

declare dso_local i32 @__mem_id_cyclic_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @rhashtable_insert_slow(i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @page_pool_get(i32) #1

declare dso_local i32 @trace_mem_connect(%struct.xdp_mem_allocator*, %struct.xdp_rxq_info*) #1

declare dso_local i32 @kfree(%struct.xdp_mem_allocator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
