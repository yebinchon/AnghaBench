; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_commit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_commit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.nfs_direct_req* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_direct_req = type { i64 }
%struct.nfs_commit_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_page = type { i64 }

@NFS_ODIRECT_RESCHED_WRITES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_data*)* @nfs_direct_commit_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_commit_complete(%struct.nfs_commit_data* %0) #0 {
  %2 = alloca %struct.nfs_commit_data*, align 8
  %3 = alloca %struct.nfs_direct_req*, align 8
  %4 = alloca %struct.nfs_commit_info, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %2, align 8
  %7 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %7, i32 0, i32 2
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  store %struct.nfs_direct_req* %9, %struct.nfs_direct_req** %3, align 8
  %10 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %15 = call i32 @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info* %4, %struct.nfs_direct_req* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %20 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %21 = call i64 @nfs_direct_cmp_commit_data_verf(%struct.nfs_direct_req* %19, %struct.nfs_commit_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %1
  %24 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %25 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %55, %27
  %29 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %30 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %29, i32 0, i32 0
  %31 = call i32 @list_empty(%struct.TYPE_6__* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.nfs_page* @nfs_list_entry(i32 %38)
  store %struct.nfs_page* %39, %struct.nfs_page** %5, align 8
  %40 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %41 = call i32 @nfs_list_remove_request(%struct.nfs_page* %40)
  %42 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %43 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %51 = call i32 @nfs_mark_request_commit(%struct.nfs_page* %50, i32* null, %struct.nfs_commit_info* %4, i32 0)
  br label %55

52:                                               ; preds = %34
  %53 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %54 = call i32 @nfs_release_request(%struct.nfs_page* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %57 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %56)
  br label %28

58:                                               ; preds = %28
  %59 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %4, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i64 @atomic_dec_and_test(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %66 = call i32 @nfs_direct_write_complete(%struct.nfs_direct_req* %65)
  br label %67

67:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info*, %struct.nfs_direct_req*) #1

declare dso_local i64 @nfs_direct_cmp_commit_data_verf(%struct.nfs_direct_req*, %struct.nfs_commit_data*) #1

declare dso_local i32 @list_empty(%struct.TYPE_6__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_mark_request_commit(%struct.nfs_page*, i32*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @nfs_direct_write_complete(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
