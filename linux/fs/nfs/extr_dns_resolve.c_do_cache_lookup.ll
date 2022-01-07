; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_do_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_do_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.nfs_dns_ent = type { i32 }
%struct.nfs_cache_defer_req = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent**, %struct.nfs_cache_defer_req*)* @do_cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cache_lookup(%struct.cache_detail* %0, %struct.nfs_dns_ent* %1, %struct.nfs_dns_ent** %2, %struct.nfs_cache_defer_req* %3) #0 {
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca %struct.nfs_dns_ent*, align 8
  %7 = alloca %struct.nfs_dns_ent**, align 8
  %8 = alloca %struct.nfs_cache_defer_req*, align 8
  %9 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store %struct.nfs_dns_ent* %1, %struct.nfs_dns_ent** %6, align 8
  store %struct.nfs_dns_ent** %2, %struct.nfs_dns_ent*** %7, align 8
  store %struct.nfs_cache_defer_req* %3, %struct.nfs_cache_defer_req** %8, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %13 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %6, align 8
  %14 = call %struct.nfs_dns_ent* @nfs_dns_lookup(%struct.cache_detail* %12, %struct.nfs_dns_ent* %13)
  %15 = load %struct.nfs_dns_ent**, %struct.nfs_dns_ent*** %7, align 8
  store %struct.nfs_dns_ent* %14, %struct.nfs_dns_ent** %15, align 8
  %16 = load %struct.nfs_dns_ent**, %struct.nfs_dns_ent*** %7, align 8
  %17 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %16, align 8
  %18 = icmp ne %struct.nfs_dns_ent* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %21 = load %struct.nfs_dns_ent**, %struct.nfs_dns_ent*** %7, align 8
  %22 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %21, align 8
  %23 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %22, i32 0, i32 0
  %24 = load %struct.nfs_cache_defer_req*, %struct.nfs_cache_defer_req** %8, align 8
  %25 = getelementptr inbounds %struct.nfs_cache_defer_req, %struct.nfs_cache_defer_req* %24, i32 0, i32 0
  %26 = call i32 @cache_check(%struct.cache_detail* %20, i32* %23, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load %struct.nfs_dns_ent**, %struct.nfs_dns_ent*** %7, align 8
  store %struct.nfs_dns_ent* null, %struct.nfs_dns_ent** %30, align 8
  br label %31

31:                                               ; preds = %29, %19
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.nfs_dns_ent* @nfs_dns_lookup(%struct.cache_detail*, %struct.nfs_dns_ent*) #1

declare dso_local i32 @cache_check(%struct.cache_detail*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
