; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_write_jdata_pagevec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_write_jdata_pagevec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i64, i64 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64, %struct.address_space* }
%struct.gfs2_sbd = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*, %struct.pagevec*, i32, i64*)* @gfs2_write_jdata_pagevec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_jdata_pagevec(%struct.address_space* %0, %struct.writeback_control* %1, %struct.pagevec* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.writeback_control*, align 8
  %9 = alloca %struct.pagevec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %8, align 8
  store %struct.pagevec* %2, %struct.pagevec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %21)
  store %struct.gfs2_sbd* %22, %struct.gfs2_sbd** %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.inode*, %struct.inode** %12, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %24, %27
  %29 = mul nsw i32 %23, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %30, i32 %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %6, align 4
  br label %143

38:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %136, %38
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %139

43:                                               ; preds = %39
  %44 = load %struct.pagevec*, %struct.pagevec** %9, align 8
  %45 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %44, i32 0, i32 0
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  store %struct.page* %50, %struct.page** %17, align 8
  %51 = load %struct.page*, %struct.page** %17, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.page*, %struct.page** %17, align 8
  %56 = call i32 @lock_page(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %17, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 1
  %59 = load %struct.address_space*, %struct.address_space** %58, align 8
  %60 = load %struct.address_space*, %struct.address_space** %7, align 8
  %61 = icmp ne %struct.address_space* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %96, %87, %73, %65
  %67 = load %struct.page*, %struct.page** %17, align 8
  %68 = call i32 @unlock_page(%struct.page* %67)
  br label %136

69:                                               ; preds = %43
  %70 = load %struct.page*, %struct.page** %17, align 8
  %71 = call i32 @PageDirty(%struct.page* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %66

74:                                               ; preds = %69
  %75 = load %struct.page*, %struct.page** %17, align 8
  %76 = call i64 @PageWriteback(%struct.page* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %80 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @WB_SYNC_NONE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.page*, %struct.page** %17, align 8
  %86 = call i32 @wait_on_page_writeback(%struct.page* %85)
  br label %88

87:                                               ; preds = %78
  br label %66

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %74
  %90 = load %struct.page*, %struct.page** %17, align 8
  %91 = call i64 @PageWriteback(%struct.page* %90)
  %92 = call i32 @BUG_ON(i64 %91)
  %93 = load %struct.page*, %struct.page** %17, align 8
  %94 = call i32 @clear_page_dirty_for_io(%struct.page* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %66

97:                                               ; preds = %89
  %98 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %99 = load %struct.inode*, %struct.inode** %12, align 8
  %100 = call i32 @inode_to_bdi(%struct.inode* %99)
  %101 = call i32 @trace_wbc_writepage(%struct.writeback_control* %98, i32 %100)
  %102 = load %struct.page*, %struct.page** %17, align 8
  %103 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %104 = call i32 @__gfs2_jdata_writepage(%struct.page* %102, %struct.writeback_control* %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %97
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.page*, %struct.page** %17, align 8
  %114 = call i32 @unlock_page(%struct.page* %113)
  store i32 0, i32* %16, align 4
  br label %121

115:                                              ; preds = %108
  %116 = load %struct.page*, %struct.page** %17, align 8
  %117 = getelementptr inbounds %struct.page, %struct.page* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  %120 = load i64*, i64** %11, align 8
  store i64 %119, i64* %120, align 8
  store i32 1, i32* %16, align 4
  br label %139

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %97
  %123 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %124 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %124, align 8
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %130 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @WB_SYNC_NONE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 1, i32* %16, align 4
  br label %139

135:                                              ; preds = %128, %122
  br label %136

136:                                              ; preds = %135, %66
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %39

139:                                              ; preds = %134, %115, %39
  %140 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %141 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %140)
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %139, %36
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @trace_wbc_writepage(%struct.writeback_control*, i32) #1

declare dso_local i32 @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @__gfs2_jdata_writepage(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
