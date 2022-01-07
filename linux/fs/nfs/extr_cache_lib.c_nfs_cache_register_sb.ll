; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_register_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_register_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cache_detail = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_cache_register_sb(%struct.super_block* %0, %struct.cache_detail* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.cache_detail* %1, %struct.cache_detail** %4, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.dentry* @rpc_d_lookup_sb(%struct.super_block* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %8, %struct.dentry** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %11 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %14 = call i32 @sunrpc_cache_register_pipefs(%struct.dentry* %9, i32 %12, i32 384, %struct.cache_detail* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = call i32 @dput(%struct.dentry* %15)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local %struct.dentry* @rpc_d_lookup_sb(%struct.super_block*, i8*) #1

declare dso_local i32 @sunrpc_cache_register_pipefs(%struct.dentry*, i32, i32, %struct.cache_detail*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
