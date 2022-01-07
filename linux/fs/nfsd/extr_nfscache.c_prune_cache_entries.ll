; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_prune_cache_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_prune_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32, %struct.nfsd_drc_bucket* }
%struct.nfsd_drc_bucket = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd_net*)* @prune_cache_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prune_cache_entries(%struct.nfsd_net* %0) #0 {
  %2 = alloca %struct.nfsd_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd_drc_bucket*, align 8
  store %struct.nfsd_net* %0, %struct.nfsd_net** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %9 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %14 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %13, i32 0, i32 1
  %15 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %15, i64 %17
  store %struct.nfsd_drc_bucket* %18, %struct.nfsd_drc_bucket** %5, align 8
  %19 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %19, i32 0, i32 1
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %36

24:                                               ; preds = %12
  %25 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %5, align 8
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %30 = call i64 @prune_bucket(%struct.nfsd_drc_bucket* %28, %struct.nfsd_net* %29)
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %4, align 8
  %33 = load %struct.nfsd_drc_bucket*, %struct.nfsd_drc_bucket** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd_drc_bucket, %struct.nfsd_drc_bucket* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %24, %23
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %6

39:                                               ; preds = %6
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @prune_bucket(%struct.nfsd_drc_bucket*, %struct.nfsd_net*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
