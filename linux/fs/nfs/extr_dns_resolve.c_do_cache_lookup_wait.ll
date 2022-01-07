; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_do_cache_lookup_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_do_cache_lookup_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.nfs_dns_ent = type { i32 }
%struct.nfs_cache_defer_req = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent**)* @do_cache_lookup_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cache_lookup_wait(%struct.cache_detail* %0, %struct.nfs_dns_ent* %1, %struct.nfs_dns_ent** %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.nfs_dns_ent*, align 8
  %6 = alloca %struct.nfs_dns_ent**, align 8
  %7 = alloca %struct.nfs_cache_defer_req*, align 8
  %8 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.nfs_dns_ent* %1, %struct.nfs_dns_ent** %5, align 8
  store %struct.nfs_dns_ent** %2, %struct.nfs_dns_ent*** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call %struct.nfs_cache_defer_req* (...) @nfs_cache_defer_req_alloc()
  store %struct.nfs_cache_defer_req* %11, %struct.nfs_cache_defer_req** %7, align 8
  %12 = load %struct.nfs_cache_defer_req*, %struct.nfs_cache_defer_req** %7, align 8
  %13 = icmp ne %struct.nfs_cache_defer_req* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %17 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %5, align 8
  %18 = load %struct.nfs_dns_ent**, %struct.nfs_dns_ent*** %6, align 8
  %19 = load %struct.nfs_cache_defer_req*, %struct.nfs_cache_defer_req** %7, align 8
  %20 = call i32 @do_cache_lookup(%struct.cache_detail* %16, %struct.nfs_dns_ent* %17, %struct.nfs_dns_ent** %18, %struct.nfs_cache_defer_req* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load %struct.nfs_cache_defer_req*, %struct.nfs_cache_defer_req** %7, align 8
  %27 = call i32 @nfs_cache_wait_for_upcall(%struct.nfs_cache_defer_req* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %32 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %5, align 8
  %33 = load %struct.nfs_dns_ent**, %struct.nfs_dns_ent*** %6, align 8
  %34 = call i32 @do_cache_lookup_nowait(%struct.cache_detail* %31, %struct.nfs_dns_ent* %32, %struct.nfs_dns_ent** %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.nfs_cache_defer_req*, %struct.nfs_cache_defer_req** %7, align 8
  %38 = call i32 @nfs_cache_defer_req_put(%struct.nfs_cache_defer_req* %37)
  br label %39

39:                                               ; preds = %36, %14
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.nfs_cache_defer_req* @nfs_cache_defer_req_alloc(...) #1

declare dso_local i32 @do_cache_lookup(%struct.cache_detail*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent**, %struct.nfs_cache_defer_req*) #1

declare dso_local i32 @nfs_cache_wait_for_upcall(%struct.nfs_cache_defer_req*) #1

declare dso_local i32 @do_cache_lookup_nowait(%struct.cache_detail*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent**) #1

declare dso_local i32 @nfs_cache_defer_req_put(%struct.nfs_cache_defer_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
