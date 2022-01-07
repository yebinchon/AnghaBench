; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_utsname.c_clone_uts_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_utsname.c_clone_uts_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.uts_namespace = type { i32, i32, %struct.TYPE_2__, %struct.ucounts* }
%struct.TYPE_2__ = type { i32* }
%struct.ucounts = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@utsns_operations = common dso_local global i32 0, align 4
@uts_sem = common dso_local global i32 0, align 4
@uts_ns_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uts_namespace* (%struct.user_namespace*, %struct.uts_namespace*)* @clone_uts_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uts_namespace* @clone_uts_ns(%struct.user_namespace* %0, %struct.uts_namespace* %1) #0 {
  %3 = alloca %struct.uts_namespace*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca %struct.uts_namespace*, align 8
  %6 = alloca %struct.uts_namespace*, align 8
  %7 = alloca %struct.ucounts*, align 8
  %8 = alloca i32, align 4
  store %struct.user_namespace* %0, %struct.user_namespace** %4, align 8
  store %struct.uts_namespace* %1, %struct.uts_namespace** %5, align 8
  %9 = load i32, i32* @ENOSPC, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %12 = call %struct.ucounts* @inc_uts_namespaces(%struct.user_namespace* %11)
  store %struct.ucounts* %12, %struct.ucounts** %7, align 8
  %13 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %14 = icmp ne %struct.ucounts* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %56

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = call %struct.uts_namespace* (...) @create_uts_ns()
  store %struct.uts_namespace* %19, %struct.uts_namespace** %6, align 8
  %20 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %21 = icmp ne %struct.uts_namespace* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %25 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %24, i32 0, i32 2
  %26 = call i32 @ns_alloc_inum(%struct.TYPE_2__* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %49

30:                                               ; preds = %23
  %31 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %32 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %33 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %32, i32 0, i32 3
  store %struct.ucounts* %31, %struct.ucounts** %33, align 8
  %34 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %35 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* @utsns_operations, i32** %36, align 8
  %37 = call i32 @down_read(i32* @uts_sem)
  %38 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %39 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %38, i32 0, i32 1
  %40 = load %struct.uts_namespace*, %struct.uts_namespace** %5, align 8
  %41 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %40, i32 0, i32 1
  %42 = call i32 @memcpy(i32* %39, i32* %41, i32 4)
  %43 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %44 = call i32 @get_user_ns(%struct.user_namespace* %43)
  %45 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %46 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = call i32 @up_read(i32* @uts_sem)
  %48 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  store %struct.uts_namespace* %48, %struct.uts_namespace** %3, align 8
  br label %59

49:                                               ; preds = %29
  %50 = load i32, i32* @uts_ns_cache, align 4
  %51 = load %struct.uts_namespace*, %struct.uts_namespace** %6, align 8
  %52 = call i32 @kmem_cache_free(i32 %50, %struct.uts_namespace* %51)
  br label %53

53:                                               ; preds = %49, %22
  %54 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %55 = call i32 @dec_uts_namespaces(%struct.ucounts* %54)
  br label %56

56:                                               ; preds = %53, %15
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.uts_namespace* @ERR_PTR(i32 %57)
  store %struct.uts_namespace* %58, %struct.uts_namespace** %3, align 8
  br label %59

59:                                               ; preds = %56, %30
  %60 = load %struct.uts_namespace*, %struct.uts_namespace** %3, align 8
  ret %struct.uts_namespace* %60
}

declare dso_local %struct.ucounts* @inc_uts_namespaces(%struct.user_namespace*) #1

declare dso_local %struct.uts_namespace* @create_uts_ns(...) #1

declare dso_local i32 @ns_alloc_inum(%struct.TYPE_2__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.uts_namespace*) #1

declare dso_local i32 @dec_uts_namespaces(%struct.ucounts*) #1

declare dso_local %struct.uts_namespace* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
