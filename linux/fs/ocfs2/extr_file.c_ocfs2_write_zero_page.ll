; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_write_zero_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_write_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, i32, %struct.address_space* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.buffer_head = type { i64 }
%struct.page = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ocfs2_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.buffer_head*)* @ocfs2_write_zero_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_zero_page(%struct.inode* %0, i32 %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.TYPE_3__, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 5
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %18, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = icmp sgt i32 %36, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %45, %49
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32* @ocfs2_zero_start_ordered_transaction(%struct.inode* %52, %struct.buffer_head* %53, i32 %54, i32 %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @IS_ERR(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  store i32 %64, i32* %13, align 4
  br label %211

65:                                               ; preds = %4
  %66 = load %struct.address_space*, %struct.address_space** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @GFP_NOFS, align 4
  %69 = call %struct.page* @find_or_create_page(%struct.address_space* %66, i64 %67, i32 %68)
  store %struct.page* %69, %struct.page** %10, align 8
  %70 = load %struct.page*, %struct.page** %10, align 8
  %71 = icmp ne %struct.page* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %200

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = and i32 %78, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %82, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %88, %77
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @trace_ocfs2_write_zero_page(i64 %94, i64 %96, i64 %98, i64 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %137, %90
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = call i32 @i_blocksize(%struct.inode* %110)
  %112 = add i32 %109, %111
  store i32 %112, i32* %17, align 4
  %113 = load %struct.page*, %struct.page** %10, align 8
  %114 = load i32, i32* %16, align 4
  %115 = add i32 %114, 1
  %116 = load i32, i32* @ocfs2_get_block, align 4
  %117 = call i32 @__block_write_begin(%struct.page* %113, i32 %115, i32 0, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %195

123:                                              ; preds = %108
  %124 = load %struct.page*, %struct.page** %10, align 8
  %125 = load i32, i32* %16, align 4
  %126 = add i32 %125, 1
  %127 = load i32, i32* %16, align 4
  %128 = add i32 %127, 1
  %129 = call i32 @block_commit_write(%struct.page* %124, i32 %126, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  br label %136

135:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %132
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %16, align 4
  br label %104

139:                                              ; preds = %104
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @i_size_write(%struct.inode* %140, i32 %141)
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = call i32 @ocfs2_inode_sector_count(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.inode*, %struct.inode** %5, align 8
  %148 = call i64 @i_size_read(%struct.inode* %147)
  %149 = trunc i64 %148 to i32
  %150 = call i8* @cpu_to_le64(i32 %149)
  %151 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %152 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.inode*, %struct.inode** %5, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 2
  %155 = load %struct.inode*, %struct.inode** %5, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 3
  %157 = load %struct.inode*, %struct.inode** %5, align 8
  %158 = call i64 @current_time(%struct.inode* %157)
  %159 = bitcast %struct.TYPE_3__* %19 to i64*
  store i64 %158, i64* %159, align 4
  %160 = bitcast %struct.TYPE_3__* %156 to i8*
  %161 = bitcast %struct.TYPE_3__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 4 %161, i64 8, i1 false)
  %162 = bitcast %struct.TYPE_3__* %154 to i8*
  %163 = bitcast %struct.TYPE_3__* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 8, i1 false)
  %164 = load %struct.inode*, %struct.inode** %5, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @cpu_to_le64(i32 %167)
  %169 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %170 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %172 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %171, i32 0, i32 3
  store i8* %168, i8** %172, align 8
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @cpu_to_le32(i32 %176)
  %178 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %179 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %181 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %184 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %139
  %188 = load i32*, i32** %12, align 8
  %189 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %190 = call i32 @ocfs2_journal_dirty(i32* %188, %struct.buffer_head* %189)
  %191 = load i32*, i32** %12, align 8
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = call i32 @ocfs2_update_inode_fsync_trans(i32* %191, %struct.inode* %192, i32 1)
  br label %194

194:                                              ; preds = %187, %139
  br label %195

195:                                              ; preds = %194, %120
  %196 = load %struct.page*, %struct.page** %10, align 8
  %197 = call i32 @unlock_page(%struct.page* %196)
  %198 = load %struct.page*, %struct.page** %10, align 8
  %199 = call i32 @put_page(%struct.page* %198)
  br label %200

200:                                              ; preds = %195, %72
  %201 = load i32*, i32** %12, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.inode*, %struct.inode** %5, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @OCFS2_SB(i32 %206)
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @ocfs2_commit_trans(i32 %207, i32* %208)
  br label %210

210:                                              ; preds = %203, %200
  br label %211

211:                                              ; preds = %210, %62
  %212 = load i32, i32* %13, align 4
  ret i32 %212
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @ocfs2_zero_start_ordered_transaction(%struct.inode*, %struct.buffer_head*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_write_zero_page(i64, i64, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
