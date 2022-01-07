; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_alloc_mnt_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_alloc_mnt_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_namespace = type { %struct.ucounts*, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.ucounts = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.user_namespace = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mntns_operations = common dso_local global i32 0, align 4
@mnt_ns_seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mnt_namespace* (%struct.user_namespace*, i32)* @alloc_mnt_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* %0, i32 %1) #0 {
  %3 = alloca %struct.mnt_namespace*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mnt_namespace*, align 8
  %7 = alloca %struct.ucounts*, align 8
  %8 = alloca i32, align 4
  store %struct.user_namespace* %0, %struct.user_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %10 = call %struct.ucounts* @inc_mnt_namespaces(%struct.user_namespace* %9)
  store %struct.ucounts* %10, %struct.ucounts** %7, align 8
  %11 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %12 = icmp ne %struct.ucounts* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSPC, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mnt_namespace* @ERR_PTR(i32 %15)
  store %struct.mnt_namespace* %16, %struct.mnt_namespace** %3, align 8
  br label %73

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mnt_namespace* @kzalloc(i32 40, i32 %18)
  store %struct.mnt_namespace* %19, %struct.mnt_namespace** %6, align 8
  %20 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %21 = icmp ne %struct.mnt_namespace* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %24 = call i32 @dec_mnt_namespaces(%struct.ucounts* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.mnt_namespace* @ERR_PTR(i32 %26)
  store %struct.mnt_namespace* %27, %struct.mnt_namespace** %3, align 8
  br label %73

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %33 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %32, i32 0, i32 6
  %34 = call i32 @ns_alloc_inum(%struct.TYPE_2__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %39 = call i32 @kfree(%struct.mnt_namespace* %38)
  %40 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %41 = call i32 @dec_mnt_namespaces(%struct.ucounts* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.mnt_namespace* @ERR_PTR(i32 %42)
  store %struct.mnt_namespace* %43, %struct.mnt_namespace** %3, align 8
  br label %73

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %47 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* @mntns_operations, i32** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = call i32 @atomic64_add_return(i32 1, i32* @mnt_ns_seq)
  %53 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %54 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %57 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %56, i32 0, i32 4
  %58 = call i32 @atomic_set(i32* %57, i32 1)
  %59 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %60 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %59, i32 0, i32 3
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %63 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %62, i32 0, i32 2
  %64 = call i32 @init_waitqueue_head(i32* %63)
  %65 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %66 = call i32 @get_user_ns(%struct.user_namespace* %65)
  %67 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %68 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %70 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %71 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %70, i32 0, i32 0
  store %struct.ucounts* %69, %struct.ucounts** %71, align 8
  %72 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  store %struct.mnt_namespace* %72, %struct.mnt_namespace** %3, align 8
  br label %73

73:                                               ; preds = %55, %37, %22, %13
  %74 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  ret %struct.mnt_namespace* %74
}

declare dso_local %struct.ucounts* @inc_mnt_namespaces(%struct.user_namespace*) #1

declare dso_local %struct.mnt_namespace* @ERR_PTR(i32) #1

declare dso_local %struct.mnt_namespace* @kzalloc(i32, i32) #1

declare dso_local i32 @dec_mnt_namespaces(%struct.ucounts*) #1

declare dso_local i32 @ns_alloc_inum(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mnt_namespace*) #1

declare dso_local i32 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
