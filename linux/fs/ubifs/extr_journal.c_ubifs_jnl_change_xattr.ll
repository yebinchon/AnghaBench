; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_change_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_change_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32 }
%struct.inode = type { i64, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i32 }
%struct.ubifs_ino_node = type opaque
%union.ubifs_key = type { i32 }

@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ino %lu, ino %lu\00", align 1
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BASEHD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_change_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_inode*, align 8
  %16 = alloca %struct.ubifs_ino_node*, align 8
  %17 = alloca %union.ubifs_key, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %24)
  store %struct.ubifs_inode* %25, %struct.ubifs_inode** %15, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @IS_DIRSYNC(%struct.inode* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %19, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %32 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %21, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dbg_jnl(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ubifs_assert(%struct.ubifs_info* %42, i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @ubifs_assert(%struct.ubifs_info* %49, i32 %54)
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %58 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %57, i32 0, i32 4
  %59 = call i32 @mutex_is_locked(i32* %58)
  %60 = call i32 @ubifs_assert(%struct.ubifs_info* %56, i32 %59)
  %61 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %62 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %63 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ALIGN(i32 %72, i32 8)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ALIGN(i32 %75, i32 8)
  %77 = add nsw i32 %74, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %79 = call i64 @ubifs_auth_node_sz(%struct.ubifs_info* %78)
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @GFP_NOFS, align 4
  %86 = call i8* @kzalloc(i32 %84, i32 %85)
  %87 = bitcast i8* %86 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %87, %struct.ubifs_ino_node** %16, align 8
  %88 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %89 = icmp ne %struct.ubifs_ino_node* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %3
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %237

93:                                               ; preds = %3
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %95 = load i64, i64* @BASEHD, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @make_reservation(%struct.ubifs_info* %94, i64 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %232

101:                                              ; preds = %93
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %103 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %104 = bitcast %struct.ubifs_ino_node* %103 to i8*
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call i32 @pack_inode(%struct.ubifs_info* %102, i8* %104, %struct.inode* %105, i32 0)
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %108 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %109 = bitcast %struct.ubifs_ino_node* %108 to i8*
  %110 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %107, i8* %109, i32* %31)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %222

114:                                              ; preds = %101
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %116 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %117 = bitcast %struct.ubifs_ino_node* %116 to i8*
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = call i32 @pack_inode(%struct.ubifs_info* %115, i8* %120, %struct.inode* %121, i32 1)
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %124 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %125 = bitcast %struct.ubifs_ino_node* %124 to i8*
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr i8, i8* %125, i64 %127
  %129 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %123, i8* %128, i32* %34)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %114
  br label %222

133:                                              ; preds = %114
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %135 = load i64, i64* @BASEHD, align 8
  %136 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %137 = bitcast %struct.ubifs_ino_node* %136 to i8*
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @write_head(%struct.ubifs_info* %134, i64 %135, i8* %137, i32 %138, i32* %13, i32* %14, i32 0)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %142
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %147 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i64, i64* @BASEHD, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store %struct.ubifs_wbuf* %151, %struct.ubifs_wbuf** %23, align 8
  %152 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %23, align 8
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %152, i32 %155)
  %157 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %23, align 8
  %158 = load %struct.inode*, %struct.inode** %6, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %157, i32 %160)
  br label %162

162:                                              ; preds = %145, %142, %133
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %164 = load i64, i64* @BASEHD, align 8
  %165 = call i32 @release_head(%struct.ubifs_info* %163, i64 %164)
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %226

169:                                              ; preds = %162
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @ubifs_add_auth_dirt(%struct.ubifs_info* %170, i32 %171)
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %174 = load %struct.inode*, %struct.inode** %7, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ino_key_init(%struct.ubifs_info* %173, %union.ubifs_key* %17, i32 %176)
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %178, %union.ubifs_key* %17, i32 %179, i32 %180, i32 %181, i32* %31)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %169
  br label %226

186:                                              ; preds = %169
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %188 = load %struct.inode*, %struct.inode** %6, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @ino_key_init(%struct.ubifs_info* %187, %union.ubifs_key* %17, i32 %190)
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %192, %union.ubifs_key* %17, i32 %193, i32 %196, i32 %197, i32* %34)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %186
  br label %226

202:                                              ; preds = %186
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %204 = call i32 @finish_reservation(%struct.ubifs_info* %203)
  %205 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %206 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %205, i32 0, i32 1
  %207 = call i32 @spin_lock(i32* %206)
  %208 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %209 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %212 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %214 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %213, i32 0, i32 1
  %215 = call i32 @spin_unlock(i32* %214)
  %216 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %217 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %218 = call i32 @mark_inode_clean(%struct.ubifs_info* %216, %struct.ubifs_inode* %217)
  %219 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %220 = bitcast %struct.ubifs_ino_node* %219 to i8*
  %221 = call i32 @kfree(i8* %220)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %237

222:                                              ; preds = %132, %113
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %224 = load i64, i64* @BASEHD, align 8
  %225 = call i32 @release_head(%struct.ubifs_info* %223, i64 %224)
  br label %226

226:                                              ; preds = %222, %201, %185, %168
  %227 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %227, i32 %228)
  %230 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %231 = call i32 @finish_reservation(%struct.ubifs_info* %230)
  br label %232

232:                                              ; preds = %226, %100
  %233 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %16, align 8
  %234 = bitcast %struct.ubifs_ino_node* %233 to i8*
  %235 = call i32 @kfree(i8* %234)
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %237

237:                                              ; preds = %232, %202, %90
  %238 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @IS_DIRSYNC(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dbg_jnl(i8*, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ubifs_auth_node_sz(%struct.ubifs_info*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @pack_inode(%struct.ubifs_info*, i8*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_node_calc_hash(%struct.ubifs_info*, i8*, i32*) #1

declare dso_local i32 @write_head(%struct.ubifs_info*, i64, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf*, i32) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_add_auth_dirt(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32, i32*) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_inode_clean(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
