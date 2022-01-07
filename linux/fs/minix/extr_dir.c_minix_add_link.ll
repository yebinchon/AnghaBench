; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.inode = type { i32, i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i8*, i64, i32 }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i8*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.minix_sb_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.inode* @d_inode(i32 %26)
  store %struct.inode* %27, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  %38 = load %struct.super_block*, %struct.super_block** %37, align 8
  store %struct.super_block* %38, %struct.super_block** %9, align 8
  %39 = load %struct.super_block*, %struct.super_block** %9, align 8
  %40 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %39)
  store %struct.minix_sb_info* %40, %struct.minix_sb_info** %10, align 8
  store %struct.page* null, %struct.page** %11, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i64 @dir_pages(%struct.inode* %41)
  store i64 %42, i64* %12, align 8
  store i8* null, i8** %20, align 8
  store i64 0, i64* %13, align 8
  br label %43

43:                                               ; preds = %152, %2
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %155

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call %struct.page* @dir_get_page(%struct.inode* %48, i64 %49)
  store %struct.page* %50, %struct.page** %11, align 8
  %51 = load %struct.page*, %struct.page** %11, align 8
  %52 = call i32 @PTR_ERR(%struct.page* %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = call i64 @IS_ERR(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %247

57:                                               ; preds = %47
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call i32 @lock_page(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i64 @page_address(%struct.page* %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @minix_last_byte(%struct.inode* %64, i64 %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8* %68, i8** %23, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %74 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %72 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %22, align 8
  %80 = load i8*, i8** %14, align 8
  store i8* %80, i8** %15, align 8
  br label %81

81:                                               ; preds = %143, %57
  %82 = load i8*, i8** %15, align 8
  %83 = load i8*, i8** %22, align 8
  %84 = icmp ule i8* %82, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %81
  %86 = load i8*, i8** %15, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %16, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = bitcast i8* %88 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %17, align 8
  %90 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %91 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MINIX_V3, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %20, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %21, align 8
  br label %109

102:                                              ; preds = %85
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %20, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %21, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %23, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %115 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MINIX_V3, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  br label %125

122:                                              ; preds = %113
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %119
  br label %159

126:                                              ; preds = %109
  %127 = load i64, i64* %21, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %159

130:                                              ; preds = %126
  %131 = load i32, i32* @EEXIST, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %135 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = call i64 @namecompare(i32 %133, i32 %136, i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %249

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %15, align 8
  %145 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %146 = call i8* @minix_next_entry(i8* %144, %struct.minix_sb_info* %145)
  store i8* %146, i8** %15, align 8
  br label %81

147:                                              ; preds = %81
  %148 = load %struct.page*, %struct.page** %11, align 8
  %149 = call i32 @unlock_page(%struct.page* %148)
  %150 = load %struct.page*, %struct.page** %11, align 8
  %151 = call i32 @dir_put_page(%struct.page* %150)
  br label %152

152:                                              ; preds = %147
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %13, align 8
  br label %43

155:                                              ; preds = %43
  %156 = call i32 (...) @BUG()
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %252

159:                                              ; preds = %129, %125
  %160 = load %struct.page*, %struct.page** %11, align 8
  %161 = call i32 @page_offset(%struct.page* %160)
  %162 = load i8*, i8** %15, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load %struct.page*, %struct.page** %11, align 8
  %166 = call i64 @page_address(%struct.page* %165)
  %167 = inttoptr i64 %166 to i8*
  %168 = ptrtoint i8* %164 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %18, align 4
  %172 = load %struct.page*, %struct.page** %11, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %175 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @minix_prepare_chunk(%struct.page* %172, i32 %173, i8* %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %159
  br label %249

181:                                              ; preds = %159
  %182 = load i8*, i8** %20, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @memcpy(i8* %182, i8* %183, i32 %184)
  %186 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %187 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @MINIX_V3, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %181
  %192 = load i8*, i8** %20, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %197 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 0, %200
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = getelementptr inbounds i8, i8* %202, i64 -4
  %204 = call i32 @memset(i8* %195, i32 0, i8* %203)
  %205 = load %struct.inode*, %struct.inode** %5, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  br label %229

210:                                              ; preds = %181
  %211 = load i8*, i8** %20, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %216 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = sub i64 0, %219
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = getelementptr inbounds i8, i8* %221, i64 -2
  %223 = call i32 @memset(i8* %214, i32 0, i8* %222)
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %210, %191
  %230 = load %struct.page*, %struct.page** %11, align 8
  %231 = load i32, i32* %18, align 4
  %232 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %233 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @dir_commit_chunk(%struct.page* %230, i32 %231, i8* %234)
  store i32 %235, i32* %19, align 4
  %236 = load %struct.inode*, %struct.inode** %6, align 8
  %237 = call i32 @current_time(%struct.inode* %236)
  %238 = load %struct.inode*, %struct.inode** %6, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.inode*, %struct.inode** %6, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 1
  store i32 %237, i32* %241, align 4
  %242 = load %struct.inode*, %struct.inode** %6, align 8
  %243 = call i32 @mark_inode_dirty(%struct.inode* %242)
  br label %244

244:                                              ; preds = %249, %229
  %245 = load %struct.page*, %struct.page** %11, align 8
  %246 = call i32 @dir_put_page(%struct.page* %245)
  br label %247

247:                                              ; preds = %244, %56
  %248 = load i32, i32* %19, align 4
  store i32 %248, i32* %3, align 4
  br label %252

249:                                              ; preds = %180, %141
  %250 = load %struct.page*, %struct.page** %11, align 8
  %251 = call i32 @unlock_page(%struct.page* %250)
  br label %244

252:                                              ; preds = %247, %155
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i8*) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @minix_prepare_chunk(%struct.page*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i8*) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i8*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
