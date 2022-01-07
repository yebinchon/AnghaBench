; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_read_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_read_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32 (%struct.nfs_pgio_header*)*, %struct.TYPE_2__, i32, %struct.nfs_direct_req* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_direct_req = type { i64, i32 }
%struct.nfs_page = type { i64, %struct.page* }
%struct.page = type { i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_ODIRECT_SHOULD_DIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_direct_read_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_read_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfs_direct_req*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 4
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  store %struct.nfs_direct_req* %9, %struct.nfs_direct_req** %4, align 8
  %10 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %25 = call i32 @nfs_direct_count_bytes(%struct.nfs_direct_req* %23, %struct.nfs_pgio_header* %24)
  %26 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  br label %29

29:                                               ; preds = %62, %22
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %30, i32 0, i32 2
  %32 = call i32 @list_empty(%struct.TYPE_2__* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.nfs_page* @nfs_list_entry(i32 %39)
  store %struct.nfs_page* %40, %struct.nfs_page** %5, align 8
  %41 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %41, i32 0, i32 1
  %43 = load %struct.page*, %struct.page** %42, align 8
  store %struct.page* %43, %struct.page** %6, align 8
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @PageCompound(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %50 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %55 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NFS_ODIRECT_SHOULD_DIRTY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i32 @set_page_dirty(%struct.page* %60)
  br label %62

62:                                               ; preds = %59, %53, %47, %35
  %63 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %3, align 8
  %68 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %69 = call i32 @nfs_list_remove_request(%struct.nfs_page* %68)
  %70 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %71 = call i32 @nfs_release_request(%struct.nfs_page* %70)
  br label %29

72:                                               ; preds = %29
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %75 = call i64 @put_dreq(%struct.nfs_direct_req* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %79 = call i32 @nfs_direct_complete(%struct.nfs_direct_req* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %82 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %81, i32 0, i32 1
  %83 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %82, align 8
  %84 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %85 = call i32 %83(%struct.nfs_pgio_header* %84)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_direct_count_bytes(%struct.nfs_direct_req*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i64 @put_dreq(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_complete(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
