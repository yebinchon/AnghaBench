; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_setsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.udf_inode_info = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@udf_get_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_setsize(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.udf_inode_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @i_blocksize(%struct.inode* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISREG(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISDIR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISLNK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %188

31:                                               ; preds = %22, %16, %2
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i64 @IS_APPEND(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i64 @IS_IMMUTABLE(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %188

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %43)
  store %struct.udf_inode_info* %44, %struct.udf_inode_info** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %42
  %51 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %52 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %51, i32 0, i32 2
  %53 = call i32 @down_write(i32* %52)
  %54 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %55 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %61)
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %62, %63
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @udf_expand_file_adinicb(%struct.inode* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %188

73:                                               ; preds = %66
  %74 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %75 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %74, i32 0, i32 2
  %76 = call i32 @down_write(i32* %75)
  br label %81

77:                                               ; preds = %59
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %80 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %94

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @udf_extend_file(%struct.inode* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %90 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %89, i32 0, i32 2
  %91 = call i32 @up_write(i32* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %188

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %96 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %95, i32 0, i32 2
  %97 = call i32 @up_write(i32* %96)
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @truncate_setsize(%struct.inode* %98, i32 %99)
  br label %170

101:                                              ; preds = %42
  %102 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %103 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %101
  %108 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %109 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %108, i32 0, i32 2
  %110 = call i32 @down_write(i32* %109)
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call i32 @udf_clear_extent_cache(%struct.inode* %111)
  %113 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %114 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %118 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %5, align 4
  %126 = sub i32 %124, %125
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %127)
  %129 = sub i32 %126, %128
  %130 = call i32 @memset(i64 %123, i32 0, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %133 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @truncate_setsize(%struct.inode* %134, i32 %135)
  %137 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %138 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %137, i32 0, i32 2
  %139 = call i32 @up_write(i32* %138)
  br label %171

140:                                              ; preds = %101
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @udf_get_block, align 4
  %146 = call i32 @block_truncate_page(i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %188

151:                                              ; preds = %140
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @truncate_setsize(%struct.inode* %152, i32 %153)
  %155 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %156 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %155, i32 0, i32 2
  %157 = call i32 @down_write(i32* %156)
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = call i32 @udf_clear_extent_cache(%struct.inode* %158)
  %160 = load %struct.inode*, %struct.inode** %4, align 8
  %161 = call i32 @udf_truncate_extents(%struct.inode* %160)
  store i32 %161, i32* %6, align 4
  %162 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %163 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %162, i32 0, i32 2
  %164 = call i32 @up_write(i32* %163)
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %151
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %188

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169, %94
  br label %171

171:                                              ; preds = %170, %107
  %172 = load %struct.inode*, %struct.inode** %4, align 8
  %173 = call i32 @current_time(%struct.inode* %172)
  %174 = load %struct.inode*, %struct.inode** %4, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.inode*, %struct.inode** %4, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 2
  store i32 %173, i32* %177, align 4
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = call i64 @IS_SYNC(%struct.inode* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %171
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = call i32 @udf_sync_inode(%struct.inode* %182)
  br label %187

184:                                              ; preds = %171
  %185 = load %struct.inode*, %struct.inode** %4, align 8
  %186 = call i32 @mark_inode_dirty(%struct.inode* %185)
  br label %187

187:                                              ; preds = %184, %181
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %167, %149, %88, %71, %39, %28
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_expand_file_adinicb(%struct.inode*) #1

declare dso_local i32 @udf_extend_file(%struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i32) #1

declare dso_local i32 @udf_clear_extent_cache(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @block_truncate_page(i32, i32, i32) #1

declare dso_local i32 @udf_truncate_extents(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @udf_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
