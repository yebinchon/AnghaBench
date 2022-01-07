; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_create_pid_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_create_pid_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.pid_namespace = type { i32, i32, i32, i32, %struct.ucounts*, i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.ucounts = type { i32 }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAX_PID_NS_LEVEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pid_ns_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pidns_operations = common dso_local global i32 0, align 4
@PIDNS_ADDING = common dso_local global i32 0, align 4
@proc_cleanup_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pid_namespace* (%struct.user_namespace*, %struct.pid_namespace*)* @create_pid_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pid_namespace* @create_pid_namespace(%struct.user_namespace* %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca %struct.pid_namespace*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucounts*, align 8
  %9 = alloca i32, align 4
  store %struct.user_namespace* %0, %struct.user_namespace** %4, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %5, align 8
  %10 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %11 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %17 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %20 = call i32 @in_userns(i32 %18, %struct.user_namespace* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %104

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAX_PID_NS_LEVEL, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %104

30:                                               ; preds = %23
  %31 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %32 = call %struct.ucounts* @inc_pid_namespaces(%struct.user_namespace* %31)
  store %struct.ucounts* %32, %struct.ucounts** %8, align 8
  %33 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %34 = icmp ne %struct.ucounts* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %104

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @pid_ns_cachep, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.pid_namespace* @kmem_cache_zalloc(i32 %39, i32 %40)
  store %struct.pid_namespace* %41, %struct.pid_namespace** %6, align 8
  %42 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %43 = icmp eq %struct.pid_namespace* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %101

45:                                               ; preds = %36
  %46 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %47 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %46, i32 0, i32 1
  %48 = call i32 @idr_init(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32* @create_pid_cachep(i32 %49)
  %51 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %52 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %51, i32 0, i32 9
  store i32* %50, i32** %52, align 8
  %53 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %54 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %53, i32 0, i32 9
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %94

58:                                               ; preds = %45
  %59 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %60 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %59, i32 0, i32 8
  %61 = call i32 @ns_alloc_inum(%struct.TYPE_2__* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %94

65:                                               ; preds = %58
  %66 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %67 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32* @pidns_operations, i32** %68, align 8
  %69 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %70 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %69, i32 0, i32 7
  %71 = call i32 @kref_init(i32* %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %74 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %76 = call i32 @get_pid_ns(%struct.pid_namespace* %75)
  %77 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %78 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %80 = call i32 @get_user_ns(%struct.user_namespace* %79)
  %81 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %82 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %84 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %85 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %84, i32 0, i32 4
  store %struct.ucounts* %83, %struct.ucounts** %85, align 8
  %86 = load i32, i32* @PIDNS_ADDING, align 4
  %87 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %88 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %90 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %89, i32 0, i32 2
  %91 = load i32, i32* @proc_cleanup_work, align 4
  %92 = call i32 @INIT_WORK(i32* %90, i32 %91)
  %93 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  store %struct.pid_namespace* %93, %struct.pid_namespace** %3, align 8
  br label %107

94:                                               ; preds = %64, %57
  %95 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %96 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %95, i32 0, i32 1
  %97 = call i32 @idr_destroy(i32* %96)
  %98 = load i32, i32* @pid_ns_cachep, align 4
  %99 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %100 = call i32 @kmem_cache_free(i32 %98, %struct.pid_namespace* %99)
  br label %101

101:                                              ; preds = %94, %44
  %102 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %103 = call i32 @dec_pid_namespaces(%struct.ucounts* %102)
  br label %104

104:                                              ; preds = %101, %35, %29, %22
  %105 = load i32, i32* %9, align 4
  %106 = call %struct.pid_namespace* @ERR_PTR(i32 %105)
  store %struct.pid_namespace* %106, %struct.pid_namespace** %3, align 8
  br label %107

107:                                              ; preds = %104, %65
  %108 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  ret %struct.pid_namespace* %108
}

declare dso_local i32 @in_userns(i32, %struct.user_namespace*) #1

declare dso_local %struct.ucounts* @inc_pid_namespaces(%struct.user_namespace*) #1

declare dso_local %struct.pid_namespace* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32* @create_pid_cachep(i32) #1

declare dso_local i32 @ns_alloc_inum(%struct.TYPE_2__*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.pid_namespace*) #1

declare dso_local i32 @dec_pid_namespaces(%struct.ucounts*) #1

declare dso_local %struct.pid_namespace* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
