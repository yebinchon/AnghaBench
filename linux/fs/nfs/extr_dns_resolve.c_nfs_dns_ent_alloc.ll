; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_ent_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_ent_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_head = type { i32 }
%struct.nfs_dns_ent = type { %struct.cache_head, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_head* ()* @nfs_dns_ent_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_head* @nfs_dns_ent_alloc() #0 {
  %1 = alloca %struct.cache_head*, align 8
  %2 = alloca %struct.nfs_dns_ent*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.nfs_dns_ent* @kmalloc(i32 32, i32 %3)
  store %struct.nfs_dns_ent* %4, %struct.nfs_dns_ent** %2, align 8
  %5 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %2, align 8
  %6 = icmp ne %struct.nfs_dns_ent* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %14, i32 0, i32 0
  store %struct.cache_head* %15, %struct.cache_head** %1, align 8
  br label %17

16:                                               ; preds = %0
  store %struct.cache_head* null, %struct.cache_head** %1, align 8
  br label %17

17:                                               ; preds = %16, %7
  %18 = load %struct.cache_head*, %struct.cache_head** %1, align 8
  ret %struct.cache_head* %18
}

declare dso_local %struct.nfs_dns_ent* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
