; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_write_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_write_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32 (%struct.nfs_pgio_header*)*, i32, i32, %struct.TYPE_2__, i32, %struct.nfs_direct_req* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_direct_req = type { i64, i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs_page = type { i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_ODIRECT_RESCHED_WRITES = common dso_local global i64 0, align 8
@NFS_ODIRECT_DO_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_direct_write_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_write_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca %struct.nfs_direct_req*, align 8
  %4 = alloca %struct.nfs_commit_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 6
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  store %struct.nfs_direct_req* %9, %struct.nfs_direct_req** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nfs_page* @nfs_list_entry(i32 %13)
  store %struct.nfs_page* %14, %struct.nfs_page** %6, align 8
  %15 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %16 = call i32 @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info* %4, %struct.nfs_direct_req* %15)
  %17 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %21 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %21, i32 0, i32 5
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  br label %116

29:                                               ; preds = %1
  %30 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %31 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %32 = call i32 @nfs_direct_count_bytes(%struct.nfs_direct_req* %30, %struct.nfs_pgio_header* %31)
  %33 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %34 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %29
  %38 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %39 = call i64 @nfs_write_need_commit(%struct.nfs_pgio_header* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %43 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %78

48:                                               ; preds = %41
  %49 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %50 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %55 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %56 = call i32 @nfs_direct_set_hdr_verf(%struct.nfs_direct_req* %54, %struct.nfs_pgio_header* %55)
  store i32 1, i32* %5, align 4
  %57 = load i64, i64* @NFS_ODIRECT_DO_COMMIT, align 8
  %58 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %77

60:                                               ; preds = %48
  %61 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %62 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NFS_ODIRECT_DO_COMMIT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  %67 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %68 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %69 = call i64 @nfs_direct_set_or_cmp_hdr_verf(%struct.nfs_direct_req* %67, %struct.nfs_pgio_header* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %73 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %74 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %47
  br label %79

79:                                               ; preds = %78, %37
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %82 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  br label %84

84:                                               ; preds = %112, %80
  %85 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %86 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %85, i32 0, i32 4
  %87 = call i32 @list_empty(%struct.TYPE_2__* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %92 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.nfs_page* @nfs_list_entry(i32 %94)
  store %struct.nfs_page* %95, %struct.nfs_page** %6, align 8
  %96 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %97 = call i32 @nfs_list_remove_request(%struct.nfs_page* %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %102 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %101, i32 0, i32 0
  %103 = call i32 @kref_get(i32* %102)
  %104 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %105 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %106 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %109 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @nfs_mark_request_commit(%struct.nfs_page* %104, i32 %107, %struct.nfs_commit_info* %4, i32 %110)
  br label %112

112:                                              ; preds = %100, %90
  %113 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %114 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %113)
  br label %84

115:                                              ; preds = %84
  br label %116

116:                                              ; preds = %115, %25
  %117 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %118 = call i64 @put_dreq(%struct.nfs_direct_req* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %122 = call i32 @nfs_direct_write_complete(%struct.nfs_direct_req* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %125 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %124, i32 0, i32 1
  %126 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %125, align 8
  %127 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %128 = call i32 %126(%struct.nfs_pgio_header* %127)
  ret void
}

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info*, %struct.nfs_direct_req*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_direct_count_bytes(%struct.nfs_direct_req*, %struct.nfs_pgio_header*) #1

declare dso_local i64 @nfs_write_need_commit(%struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_direct_set_hdr_verf(%struct.nfs_direct_req*, %struct.nfs_pgio_header*) #1

declare dso_local i64 @nfs_direct_set_or_cmp_hdr_verf(%struct.nfs_direct_req*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nfs_mark_request_commit(%struct.nfs_page*, i32, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i64 @put_dreq(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_write_complete(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
