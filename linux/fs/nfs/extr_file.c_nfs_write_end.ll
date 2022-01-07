; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"NFS: write_end(%pD2(%lu), %u@%lld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @nfs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfs_open_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  store i32 %24, i32* %16, align 4
  %25 = load %struct.file*, %struct.file** %9, align 8
  %26 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %25)
  store %struct.nfs_open_context* %26, %struct.nfs_open_context** %17, align 8
  %27 = load i32, i32* @PAGECACHE, align 4
  %28 = load %struct.file*, %struct.file** %9, align 8
  %29 = load %struct.address_space*, %struct.address_space** %10, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 @dfprintk(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.file* %28, i32 %33, i32 %34, i64 %36)
  %38 = load %struct.page*, %struct.page** %14, align 8
  %39 = call i32 @PageUptodate(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %7
  %42 = load %struct.page*, %struct.page** %14, align 8
  %43 = call i32 @nfs_page_length(%struct.page* %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.page*, %struct.page** %14, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = call i32 @zero_user_segments(%struct.page* %50, i32 0, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.page*, %struct.page** %14, align 8
  %56 = call i32 @SetPageUptodate(%struct.page* %55)
  br label %78

57:                                               ; preds = %41
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @zero_user_segment(%struct.page* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.page*, %struct.page** %14, align 8
  %70 = call i32 @SetPageUptodate(%struct.page* %69)
  br label %71

71:                                               ; preds = %68, %61
  br label %77

72:                                               ; preds = %57
  %73 = load %struct.page*, %struct.page** %14, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i32 @zero_user_segment(%struct.page* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %71
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %7
  %80 = load %struct.file*, %struct.file** %9, align 8
  %81 = load %struct.page*, %struct.page** %14, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @nfs_updatepage(%struct.file* %80, %struct.page* %81, i32 %82, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load %struct.page*, %struct.page** %14, align 8
  %86 = call i32 @unlock_page(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %14, align 8
  %88 = call i32 @put_page(%struct.page* %87)
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %8, align 4
  br label %120

93:                                               ; preds = %79
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.address_space*, %struct.address_space** %10, align 8
  %96 = getelementptr inbounds %struct.address_space, %struct.address_space* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call %struct.TYPE_6__* @NFS_I(%struct.TYPE_5__* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, %94
  store i32 %101, i32* %99, align 4
  %102 = load %struct.nfs_open_context*, %struct.nfs_open_context** %17, align 8
  %103 = load %struct.address_space*, %struct.address_space** %10, align 8
  %104 = getelementptr inbounds %struct.address_space, %struct.address_space* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = call i64 @nfs_ctx_key_to_expire(%struct.nfs_open_context* %102, %struct.TYPE_5__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %93
  %109 = load %struct.address_space*, %struct.address_space** %10, align 8
  %110 = getelementptr inbounds %struct.address_space, %struct.address_space* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = call i32 @nfs_wb_all(%struct.TYPE_5__* %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %18, align 4
  store i32 %116, i32* %8, align 4
  br label %120

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %93
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %115, %91
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i32, i32, i64) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @nfs_updatepage(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.TYPE_6__* @NFS_I(%struct.TYPE_5__*) #1

declare dso_local i64 @nfs_ctx_key_to_expire(%struct.nfs_open_context*, %struct.TYPE_5__*) #1

declare dso_local i32 @nfs_wb_all(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
