; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_read_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_read_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32, i32 (%struct.nfs_pgio_header*)*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_page = type { i64, i64, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_IOHDR_EOF = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_read_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_read_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 3
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %128

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %121, %15
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 4
  %19 = call i32 @list_empty(%struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %127

22:                                               ; preds = %16
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.nfs_page* @nfs_list_entry(i32 %26)
  store %struct.nfs_page* %27, %struct.nfs_page** %5, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %28, i32 0, i32 2
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %6, align 8
  %31 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* @NFS_IOHDR_EOF, align 4
  %42 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %42, i32 0, i32 3
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %22
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %49 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @zero_user_segment(%struct.page* %53, i64 %54, i64 %55)
  br label %87

57:                                               ; preds = %46
  %58 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %59 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = sub i64 %60, %61
  %63 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %57
  %68 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %69 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %3, align 8
  %72 = sub i64 %70, %71
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %77 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @zero_user_segment(%struct.page* %82, i64 %83, i64 %84)
  br label %86

86:                                               ; preds = %67, %57
  br label %87

87:                                               ; preds = %86, %52
  br label %88

88:                                               ; preds = %87, %22
  store i32 0, i32* %4, align 4
  %89 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %90 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %95 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %96 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %95, i32 0, i32 3
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %88
  %100 = load i64, i64* %3, align 8
  %101 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %102 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ule i64 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %107 = call i32 @nfs_page_group_set_uptodate(%struct.nfs_page* %106)
  br label %117

108:                                              ; preds = %99
  %109 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %110 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %4, align 4
  %112 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %113 = call %struct.TYPE_3__* @nfs_req_openctx(%struct.nfs_page* %112)
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @xchg(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %108, %105
  br label %121

118:                                              ; preds = %88
  %119 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %120 = call i32 @nfs_page_group_set_uptodate(%struct.nfs_page* %119)
  br label %121

121:                                              ; preds = %118, %117
  %122 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %123 = call i32 @nfs_list_remove_request(%struct.nfs_page* %122)
  %124 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @nfs_readpage_release(%struct.nfs_page* %124, i32 %125)
  br label %16

127:                                              ; preds = %16
  br label %128

128:                                              ; preds = %127, %14
  %129 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %130 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %129, i32 0, i32 2
  %131 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %130, align 8
  %132 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %133 = call i32 %131(%struct.nfs_pgio_header* %132)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nfs_page_group_set_uptodate(%struct.nfs_page*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_readpage_release(%struct.nfs_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
