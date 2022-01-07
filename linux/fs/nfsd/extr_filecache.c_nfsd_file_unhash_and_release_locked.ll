; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_unhash_and_release_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_unhash_and_release_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsd_file = type { i64, i32, i32 }
%struct.list_head = type { i32 }

@nfsd_file_hashtbl = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd_file*, %struct.list_head*)* @nfsd_file_unhash_and_release_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_file_unhash_and_release_locked(%struct.nfsd_file* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd_file*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.nfsd_file* %0, %struct.nfsd_file** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %7 = load %struct.nfsd_file*, %struct.nfsd_file** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.nfsd_file*, %struct.nfsd_file** %4, align 8
  %14 = call i32 @trace_nfsd_file_unhash_and_release_locked(%struct.nfsd_file* %13)
  %15 = load %struct.nfsd_file*, %struct.nfsd_file** %4, align 8
  %16 = call i32 @nfsd_file_unhash(%struct.nfsd_file* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.nfsd_file*, %struct.nfsd_file** %4, align 8
  %21 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %20, i32 0, i32 2
  %22 = call i64 @atomic_add_unless(i32* %21, i32 -1, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %30

25:                                               ; preds = %19
  %26 = load %struct.nfsd_file*, %struct.nfsd_file** %4, align 8
  %27 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %26, i32 0, i32 1
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = call i32 @list_add(i32* %27, %struct.list_head* %28)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %24, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_nfsd_file_unhash_and_release_locked(%struct.nfsd_file*) #1

declare dso_local i32 @nfsd_file_unhash(%struct.nfsd_file*) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
