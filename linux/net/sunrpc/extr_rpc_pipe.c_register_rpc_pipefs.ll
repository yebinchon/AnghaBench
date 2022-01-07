; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_register_rpc_pipefs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_register_rpc_pipefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"rpc_inode_cache\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@SLAB_MEM_SPREAD = common dso_local global i32 0, align 4
@SLAB_ACCOUNT = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4
@rpc_inode_cachep = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rpc_pipe_fs_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_rpc_pipefs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %4 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SLAB_ACCOUNT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @init_once, align 4
  %11 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %9, i32 %10)
  store i32 %11, i32* @rpc_inode_cachep, align 4
  %12 = load i32, i32* @rpc_inode_cachep, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %34

17:                                               ; preds = %0
  %18 = call i32 (...) @rpc_clients_notifier_register()
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %30

22:                                               ; preds = %17
  %23 = call i32 @register_filesystem(i32* @rpc_pipe_fs_type)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %34

28:                                               ; preds = %26
  %29 = call i32 (...) @rpc_clients_notifier_unregister()
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* @rpc_inode_cachep, align 4
  %32 = call i32 @kmem_cache_destroy(i32 %31)
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %30, %27, %14
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rpc_clients_notifier_register(...) #1

declare dso_local i32 @register_filesystem(i32*) #1

declare dso_local i32 @rpc_clients_notifier_unregister(...) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
