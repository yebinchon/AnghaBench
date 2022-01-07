; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_journalled_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_journalled_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i64 }
%struct.page = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@write_end_fn = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_journalled_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_journalled_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %26 = call %struct.TYPE_13__* (...) @ext4_journal_current_handle()
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %15, align 8
  %27 = load %struct.address_space*, %struct.address_space** %9, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %16, align 8
  %30 = load %struct.inode*, %struct.inode** %16, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %33 = load %struct.inode*, %struct.inode** %16, align 8
  %34 = call i32 @ext4_has_inline_data(%struct.inode* %33)
  store i32 %34, i32* %24, align 4
  %35 = load %struct.inode*, %struct.inode** %16, align 8
  %36 = call i32 @ext4_verity_in_progress(%struct.inode* %35)
  store i32 %36, i32* %25, align 4
  %37 = load %struct.inode*, %struct.inode** %16, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @trace_ext4_journalled_write_end(%struct.inode* %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %46, %47
  store i32 %48, i32* %22, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %50 = call i32 @ext4_handle_valid(%struct.TYPE_13__* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load i32, i32* %24, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %7
  %58 = load %struct.inode*, %struct.inode** %16, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.page*, %struct.page** %13, align 8
  %63 = call i32 @ext4_write_inline_data_end(%struct.inode* %58, i32 %59, i32 %60, i32 %61, %struct.page* %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i32 @unlock_page(%struct.page* %67)
  %69 = load %struct.page*, %struct.page** %13, align 8
  %70 = call i32 @put_page(%struct.page* %69)
  br label %193

71:                                               ; preds = %57
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %12, align 4
  br label %122

73:                                               ; preds = %7
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ult i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.page*, %struct.page** %13, align 8
  %82 = call i32 @PageUptodate(%struct.page* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %86 = load %struct.page*, %struct.page** %13, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %22, align 4
  %89 = call i32 @ext4_journalled_zero_new_buffers(%struct.TYPE_13__* %85, %struct.page* %86, i32 %87, i32 %88)
  br label %121

90:                                               ; preds = %80, %73
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ult i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %99 = load %struct.page*, %struct.page** %13, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %100, %101
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @ext4_journalled_zero_new_buffers(%struct.TYPE_13__* %98, %struct.page* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %90
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %107 = load %struct.page*, %struct.page** %13, align 8
  %108 = call i32 @page_buffers(%struct.page* %107)
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* @write_end_fn, align 4
  %114 = call i32 @ext4_walk_page_buffers(%struct.TYPE_13__* %106, i32 %108, i32 %109, i32 %112, i32* %20, i32 %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %105
  %118 = load %struct.page*, %struct.page** %13, align 8
  %119 = call i32 @SetPageUptodate(%struct.page* %118)
  br label %120

120:                                              ; preds = %117, %105
  br label %121

121:                                              ; preds = %120, %84
  br label %122

122:                                              ; preds = %121, %71
  %123 = load i32, i32* %25, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load %struct.inode*, %struct.inode** %16, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add i32 %127, %128
  %130 = call i32 @ext4_update_inode_size(%struct.inode* %126, i32 %129)
  store i32 %130, i32* %23, align 4
  br label %131

131:                                              ; preds = %125, %122
  %132 = load %struct.inode*, %struct.inode** %16, align 8
  %133 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %134 = call i32 @ext4_set_inode_state(%struct.inode* %132, i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.inode*, %struct.inode** %16, align 8
  %141 = call %struct.TYPE_11__* @EXT4_I(%struct.inode* %140)
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  %143 = load %struct.page*, %struct.page** %13, align 8
  %144 = call i32 @unlock_page(%struct.page* %143)
  %145 = load %struct.page*, %struct.page** %13, align 8
  %146 = call i32 @put_page(%struct.page* %145)
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %131
  %151 = load i32, i32* %25, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load %struct.inode*, %struct.inode** %16, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @pagecache_isize_extended(%struct.inode* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %150, %131
  %159 = load i32, i32* %23, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %24, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161, %158
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %166 = load %struct.inode*, %struct.inode** %16, align 8
  %167 = call i32 @ext4_mark_inode_dirty(%struct.TYPE_13__* %165, %struct.inode* %166)
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %19, align 4
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %170, %164
  br label %173

173:                                              ; preds = %172, %161
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = add i32 %174, %175
  %177 = load %struct.inode*, %struct.inode** %16, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ugt i32 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %181
  %185 = load %struct.inode*, %struct.inode** %16, align 8
  %186 = call i64 @ext4_can_truncate(%struct.inode* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %190 = load %struct.inode*, %struct.inode** %16, align 8
  %191 = call i32 @ext4_orphan_add(%struct.TYPE_13__* %189, %struct.inode* %190)
  br label %192

192:                                              ; preds = %188, %184, %181, %173
  br label %193

193:                                              ; preds = %192, %66
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %195 = call i32 @ext4_journal_stop(%struct.TYPE_13__* %194)
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %18, align 4
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add i32 %201, %202
  %204 = load %struct.inode*, %struct.inode** %16, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ugt i32 %203, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %200
  %209 = load i32, i32* %25, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = load %struct.inode*, %struct.inode** %16, align 8
  %213 = call i32 @ext4_truncate_failed_write(%struct.inode* %212)
  %214 = load %struct.inode*, %struct.inode** %16, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load %struct.inode*, %struct.inode** %16, align 8
  %220 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %219)
  br label %221

221:                                              ; preds = %218, %211
  br label %222

222:                                              ; preds = %221, %208, %200
  %223 = load i32, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i32, i32* %18, align 4
  br label %229

227:                                              ; preds = %222
  %228 = load i32, i32* %12, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  ret i32 %230
}

declare dso_local %struct.TYPE_13__* @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @trace_ext4_journalled_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_handle_valid(%struct.TYPE_13__*) #1

declare dso_local i32 @ext4_write_inline_data_end(%struct.inode*, i32, i32, i32, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_journalled_zero_new_buffers(%struct.TYPE_13__*, %struct.page*, i32, i32) #1

declare dso_local i32 @ext4_walk_page_buffers(%struct.TYPE_13__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_update_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_11__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @pagecache_isize_extended(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.TYPE_13__*, %struct.inode*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.TYPE_13__*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
