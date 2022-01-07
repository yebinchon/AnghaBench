; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_register_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_register_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cache_detail = type { i32 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_cache_register_net(%struct.net* %0, %struct.cache_detail* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.cache_detail* %1, %struct.cache_detail** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %8 = call i32 @sunrpc_init_cache_detail(%struct.cache_detail* %7)
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = call %struct.super_block* @rpc_get_sb_net(%struct.net* %9)
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = icmp ne %struct.super_block* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %16 = call i32 @nfs_cache_register_sb(%struct.super_block* %14, %struct.cache_detail* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = call i32 @rpc_put_sb_net(%struct.net* %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %23 = call i32 @sunrpc_destroy_cache_detail(%struct.cache_detail* %22)
  br label %24

24:                                               ; preds = %21, %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @sunrpc_init_cache_detail(%struct.cache_detail*) #1

declare dso_local %struct.super_block* @rpc_get_sb_net(%struct.net*) #1

declare dso_local i32 @nfs_cache_register_sb(%struct.super_block*, %struct.cache_detail*) #1

declare dso_local i32 @rpc_put_sb_net(%struct.net*) #1

declare dso_local i32 @sunrpc_destroy_cache_detail(%struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
