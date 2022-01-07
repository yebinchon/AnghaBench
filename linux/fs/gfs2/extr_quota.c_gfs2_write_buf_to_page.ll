; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_write_buf_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_write_buf_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.inode }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i64, i32, i8*, i32)* @gfs2_write_buf_to_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_buf_to_page(%struct.gfs2_inode* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.address_space*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 1
  store %struct.inode* %26, %struct.inode** %12, align 8
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %27)
  store %struct.gfs2_sbd* %28, %struct.gfs2_sbd** %13, align 8
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.address_space*, %struct.address_space** %30, align 8
  store %struct.address_space* %31, %struct.address_space** %14, align 8
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %33 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %39, %43
  %45 = shl i64 %38, %44
  store i64 %45, i64* %18, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %19, align 4
  %48 = urem i32 %46, %47
  store i32 %48, i32* %21, align 4
  %49 = load %struct.address_space*, %struct.address_space** %14, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @GFP_NOFS, align 4
  %52 = call %struct.page* @find_or_create_page(%struct.address_space* %49, i64 %50, i32 %51)
  store %struct.page* %52, %struct.page** %15, align 8
  %53 = load %struct.page*, %struct.page** %15, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %5
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %199

58:                                               ; preds = %5
  %59 = load %struct.page*, %struct.page** %15, align 8
  %60 = call i32 @page_has_buffers(%struct.page* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.page*, %struct.page** %15, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @create_empty_buffers(%struct.page* %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.page*, %struct.page** %15, align 8
  %68 = call %struct.buffer_head* @page_buffers(%struct.page* %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %16, align 8
  br label %69

69:                                               ; preds = %173, %159, %81, %66
  %70 = load i32, i32* %24, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %174

73:                                               ; preds = %69
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = mul i32 %75, %76
  %78 = load i32, i32* %19, align 4
  %79 = add i32 %77, %78
  %80 = icmp uge i32 %74, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 1
  %84 = load %struct.buffer_head*, %struct.buffer_head** %83, align 8
  store %struct.buffer_head* %84, %struct.buffer_head** %16, align 8
  %85 = load i32, i32* %20, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %20, align 4
  %87 = load i64, i64* %18, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %18, align 8
  br label %69

89:                                               ; preds = %73
  %90 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %91 = call i32 @buffer_mapped(%struct.buffer_head* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %89
  %94 = load %struct.inode*, %struct.inode** %12, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %97 = call i32 @gfs2_block_map(%struct.inode* %94, i64 %95, %struct.buffer_head* %96, i32 1)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %99 = call i32 @buffer_mapped(%struct.buffer_head* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %192

102:                                              ; preds = %93
  %103 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %104 = call i64 @buffer_new(%struct.buffer_head* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load %struct.page*, %struct.page** %15, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = mul i32 %108, %109
  %111 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @zero_user(%struct.page* %107, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %106, %102
  br label %116

116:                                              ; preds = %115, %89
  %117 = load %struct.page*, %struct.page** %15, align 8
  %118 = call i64 @PageUptodate(%struct.page* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %122 = call i32 @set_buffer_uptodate(%struct.buffer_head* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %125 = call i32 @buffer_uptodate(%struct.buffer_head* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @REQ_OP_READ, align 4
  %129 = load i32, i32* @REQ_META, align 4
  %130 = load i32, i32* @REQ_PRIO, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @ll_rw_block(i32 %128, i32 %131, i32 1, %struct.buffer_head** %16)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %134 = call i32 @wait_on_buffer(%struct.buffer_head* %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %136 = call i32 @buffer_uptodate(%struct.buffer_head* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %127
  br label %192

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %123
  %141 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %142 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %146 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %149 = call i32 @gfs2_trans_add_data(i32 %147, %struct.buffer_head* %148)
  br label %153

150:                                              ; preds = %140
  %151 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %152 = call i32 @gfs2_ordered_add_inode(%struct.gfs2_inode* %151)
  br label %153

153:                                              ; preds = %150, %144
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %21, align 4
  %157 = sub i32 %155, %156
  %158 = icmp ugt i32 %154, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %21, align 4
  %162 = sub i32 %160, %161
  %163 = load i32, i32* %23, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %23, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %21, align 4
  %167 = sub i32 %165, %166
  %168 = load i32, i32* %22, align 4
  %169 = sub i32 %168, %167
  store i32 %169, i32* %22, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %19, align 4
  %172 = urem i32 %170, %171
  store i32 %172, i32* %21, align 4
  br label %69

173:                                              ; preds = %153
  store i32 1, i32* %24, align 4
  br label %69

174:                                              ; preds = %69
  %175 = load %struct.page*, %struct.page** %15, align 8
  %176 = call i8* @kmap_atomic(%struct.page* %175)
  store i8* %176, i8** %17, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr i8, i8* %177, i64 %179
  %181 = load i8*, i8** %10, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @memcpy(i8* %180, i8* %181, i32 %182)
  %184 = load %struct.page*, %struct.page** %15, align 8
  %185 = call i32 @flush_dcache_page(%struct.page* %184)
  %186 = load i8*, i8** %17, align 8
  %187 = call i32 @kunmap_atomic(i8* %186)
  %188 = load %struct.page*, %struct.page** %15, align 8
  %189 = call i32 @unlock_page(%struct.page* %188)
  %190 = load %struct.page*, %struct.page** %15, align 8
  %191 = call i32 @put_page(%struct.page* %190)
  store i32 0, i32* %6, align 4
  br label %199

192:                                              ; preds = %138, %101
  %193 = load %struct.page*, %struct.page** %15, align 8
  %194 = call i32 @unlock_page(%struct.page* %193)
  %195 = load %struct.page*, %struct.page** %15, align 8
  %196 = call i32 @put_page(%struct.page* %195)
  %197 = load i32, i32* @EIO, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %192, %174, %55
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_block_map(%struct.inode*, i64, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_ordered_add_inode(%struct.gfs2_inode*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
