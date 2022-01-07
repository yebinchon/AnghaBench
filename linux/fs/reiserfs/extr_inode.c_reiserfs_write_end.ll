; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AOP_FLAG_CONT_EXPAND = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@i_pack_on_close_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @reiserfs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.reiserfs_transaction_handle*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.reiserfs_transaction_handle, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %22 = load %struct.page*, %struct.page** %13, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64, i64* @AOP_FLAG_CONT_EXPAND, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %7
  %36 = load %struct.inode*, %struct.inode** %15, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @reiserfs_wait_on_write_block(i32 %38)
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @reiserfs_transaction_running(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %47, align 8
  store %struct.reiserfs_transaction_handle* %48, %struct.reiserfs_transaction_handle** %18, align 8
  br label %50

49:                                               ; preds = %35
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %18, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %51, %53
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ult i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %50
  %62 = load %struct.page*, %struct.page** %13, align 8
  %63 = call i32 @PageUptodate(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %71, %72
  %74 = call i32 @page_zero_new_buffers(%struct.page* %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %50
  %76 = load %struct.page*, %struct.page** %13, align 8
  %77 = call i32 @flush_dcache_page(%struct.page* %76)
  %78 = load %struct.inode*, %struct.inode** %15, align 8
  %79 = load %struct.page*, %struct.page** %13, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %81, %82
  %84 = call i32 @reiserfs_commit_page(%struct.inode* %78, %struct.page* %79, i32 %80, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %85, %86
  %88 = load %struct.inode*, %struct.inode** %15, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ugt i32 %87, %90
  br i1 %91, label %92, label %156

92:                                               ; preds = %75
  %93 = load %struct.inode*, %struct.inode** %15, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @reiserfs_write_lock(i32 %95)
  store i32 1, i32* %20, align 4
  %97 = load %struct.inode*, %struct.inode** %15, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @have_large_tails(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load %struct.inode*, %struct.inode** %15, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.inode*, %struct.inode** %15, align 8
  %107 = call i32 @i_block_size(%struct.inode* %106)
  %108 = mul nsw i32 %107, 4
  %109 = icmp ugt i32 %105, %108
  br i1 %109, label %123, label %110

110:                                              ; preds = %102, %92
  %111 = load %struct.inode*, %struct.inode** %15, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @have_small_tails(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %15, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.inode*, %struct.inode** %15, align 8
  %121 = call i32 @i_block_size(%struct.inode* %120)
  %122 = icmp ugt i32 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %116, %102
  %124 = load i32, i32* @i_pack_on_close_mask, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.inode*, %struct.inode** %15, align 8
  %127 = call %struct.TYPE_6__* @REISERFS_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %123, %116, %110
  %132 = load %struct.inode*, %struct.inode** %15, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %21, i32 %134, i32 1)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %213

139:                                              ; preds = %131
  %140 = load %struct.inode*, %struct.inode** %15, align 8
  %141 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add i32 %142, %143
  %145 = load %struct.inode*, %struct.inode** %15, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.inode*, %struct.inode** %15, align 8
  %148 = call i32 @mark_inode_dirty(%struct.inode* %147)
  %149 = load %struct.inode*, %struct.inode** %15, align 8
  %150 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %21, %struct.inode* %149)
  store i32 1, i32* %17, align 4
  %151 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %21)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %139
  br label %213

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %75
  %157 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %158 = icmp ne %struct.reiserfs_transaction_handle* %157, null
  br i1 %158, label %159, label %180

159:                                              ; preds = %156
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load %struct.inode*, %struct.inode** %15, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @reiserfs_write_lock(i32 %165)
  store i32 1, i32* %20, align 4
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load %struct.inode*, %struct.inode** %15, align 8
  %172 = call i32 @mark_inode_dirty(%struct.inode* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %175 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %181

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179, %156
  br label %181

181:                                              ; preds = %230, %180, %178
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.inode*, %struct.inode** %15, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @reiserfs_write_unlock(i32 %187)
  br label %189

189:                                              ; preds = %184, %181
  %190 = load %struct.page*, %struct.page** %13, align 8
  %191 = call i32 @unlock_page(%struct.page* %190)
  %192 = load %struct.page*, %struct.page** %13, align 8
  %193 = call i32 @put_page(%struct.page* %192)
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add i32 %194, %195
  %197 = load %struct.inode*, %struct.inode** %15, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ugt i32 %196, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %189
  %202 = load %struct.inode*, %struct.inode** %15, align 8
  %203 = call i32 @reiserfs_truncate_failed_write(%struct.inode* %202)
  br label %204

204:                                              ; preds = %201, %189
  %205 = load i32, i32* %16, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* %12, align 4
  br label %211

209:                                              ; preds = %204
  %210 = load i32, i32* %16, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  ret i32 %212

213:                                              ; preds = %154, %138
  %214 = load %struct.inode*, %struct.inode** %15, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @reiserfs_write_unlock(i32 %216)
  store i32 0, i32* %20, align 4
  %218 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %219 = icmp ne %struct.reiserfs_transaction_handle* %218, null
  br i1 %219, label %220, label %230

220:                                              ; preds = %213
  %221 = load i32, i32* %17, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %225 = load %struct.inode*, %struct.inode** %15, align 8
  %226 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %224, %struct.inode* %225)
  br label %227

227:                                              ; preds = %223, %220
  %228 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %229 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %228)
  store i32 %229, i32* %16, align 4
  br label %230

230:                                              ; preds = %227, %213
  br label %181
}

declare dso_local i32 @reiserfs_wait_on_write_block(i32) #1

declare dso_local i64 @reiserfs_transaction_running(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @page_zero_new_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @reiserfs_commit_page(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i64 @have_large_tails(i32) #1

declare dso_local i32 @i_block_size(%struct.inode*) #1

declare dso_local i64 @have_small_tails(i32) #1

declare dso_local %struct.TYPE_6__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @reiserfs_truncate_failed_write(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
