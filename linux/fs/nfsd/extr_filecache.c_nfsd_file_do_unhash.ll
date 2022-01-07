; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_do_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_do_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nfsd_file = type { i64, i32, i32, i32 }

@nfsd_file_hashtbl = common dso_local global %struct.TYPE_2__* null, align 8
@nfsd_net_id = common dso_local global i32 0, align 4
@nfsd_file_lru = common dso_local global i32 0, align 4
@nfsd_filecache_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd_file*)* @nfsd_file_do_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_file_do_unhash(%struct.nfsd_file* %0) #0 {
  %2 = alloca %struct.nfsd_file*, align 8
  store %struct.nfsd_file* %0, %struct.nfsd_file** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %4 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %11 = call i32 @trace_nfsd_file_unhash(%struct.nfsd_file* %10)
  %12 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %13 = call i64 @nfsd_file_check_write_error(%struct.nfsd_file* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %17 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @nfsd_net_id, align 4
  %20 = call i32 @net_generic(i32 %18, i32 %19)
  %21 = call i32 @nfsd_reset_boot_verifier(i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %24 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %25 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %32 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %31, i32 0, i32 2
  %33 = call i32 @hlist_del_rcu(i32* %32)
  %34 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %35 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %34, i32 0, i32 1
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %22
  %39 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %40 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %39, i32 0, i32 1
  %41 = call i32 @list_lru_del(i32* @nfsd_file_lru, i32* %40)
  br label %42

42:                                               ; preds = %38, %22
  %43 = call i32 @atomic_long_dec(i32* @nfsd_filecache_count)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_nfsd_file_unhash(%struct.nfsd_file*) #1

declare dso_local i64 @nfsd_file_check_write_error(%struct.nfsd_file*) #1

declare dso_local i32 @nfsd_reset_boot_verifier(i32) #1

declare dso_local i32 @net_generic(i32, i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_lru_del(i32*, i32*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
