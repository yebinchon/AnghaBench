; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i64, i64, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ext4_xattr_inode_array = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32, i32 }

@EXT4_JOURNAL_INO = common dso_local global i64 0, align 8
@EXT4_HT_TRUNCATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't mark inode dirty (err %d)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't truncate inode %lu (err %d)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"xattr delete (err %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_xattr_inode_array*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 3, i32* %5, align 4
  store %struct.ext4_xattr_inode_array* null, %struct.ext4_xattr_inode_array** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call i32 @trace_ext4_evict_inode(%struct.inode* %9)
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXT4_JOURNAL_INO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i64 @ext4_should_journal_data(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @S_ISLNK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @S_ISREG(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %31, %25
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_6__* @EXT4_SB(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @jbd2_complete_transaction(i32* %54, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 4
  %59 = call i32 @filemap_write_and_wait(%struct.TYPE_5__* %58)
  br label %60

60:                                               ; preds = %43, %37, %31, %21, %15
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 4
  %63 = call i32 @truncate_inode_pages_final(%struct.TYPE_5__* %62)
  br label %226

64:                                               ; preds = %1
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = call i64 @is_bad_inode(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %226

69:                                               ; preds = %64
  %70 = load %struct.inode*, %struct.inode** %2, align 8
  %71 = call i32 @dquot_initialize(%struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = call i64 @ext4_should_order_data(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.inode*, %struct.inode** %2, align 8
  %77 = call i32 @ext4_begin_ordered_truncate(%struct.inode* %76, i32 0)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  %81 = call i32 @truncate_inode_pages_final(%struct.TYPE_5__* %80)
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sb_start_intwrite(i32 %84)
  %86 = load %struct.inode*, %struct.inode** %2, align 8
  %87 = call i32 @IS_NOQUOTA(%struct.inode* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %78
  %90 = load %struct.inode*, %struct.inode** %2, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @EXT4_MAXQUOTAS_DEL_BLOCKS(i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %89, %78
  %99 = load %struct.inode*, %struct.inode** %2, align 8
  %100 = load i32, i32* @EXT4_HT_TRUNCATE, align 4
  %101 = load %struct.inode*, %struct.inode** %2, align 8
  %102 = call i64 @ext4_blocks_for_truncate(%struct.inode* %101)
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = call i32* @ext4_journal_start(%struct.inode* %99, i32 %100, i64 %105)
  store i32* %106, i32** %3, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = call i64 @IS_ERR(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %98
  %111 = load %struct.inode*, %struct.inode** %2, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @PTR_ERR(i32* %114)
  %116 = call i32 @ext4_std_error(i32 %113, i32 %115)
  %117 = load %struct.inode*, %struct.inode** %2, align 8
  %118 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %117)
  %119 = load %struct.inode*, %struct.inode** %2, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @sb_end_intwrite(i32 %121)
  br label %226

123:                                              ; preds = %98
  %124 = load %struct.inode*, %struct.inode** %2, align 8
  %125 = call i64 @IS_SYNC(%struct.inode* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @ext4_handle_sync(i32* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load %struct.inode*, %struct.inode** %2, align 8
  %132 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.inode*, %struct.inode** %2, align 8
  %136 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %135)
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @memset(i32 %138, i32 0, i32 4)
  br label %140

140:                                              ; preds = %134, %130
  %141 = load %struct.inode*, %struct.inode** %2, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.inode*, %struct.inode** %2, align 8
  %145 = call i32 @ext4_mark_inode_dirty(i32* %143, %struct.inode* %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.inode*, %struct.inode** %2, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @ext4_warning(i32 %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %187

154:                                              ; preds = %140
  %155 = load %struct.inode*, %struct.inode** %2, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %154
  %160 = load %struct.inode*, %struct.inode** %2, align 8
  %161 = call i32 @ext4_truncate(%struct.inode* %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.inode*, %struct.inode** %2, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.inode*, %struct.inode** %2, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @ext4_error(i32 %167, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %170, i32 %171)
  br label %187

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173, %154
  %175 = load i32*, i32** %3, align 8
  %176 = load %struct.inode*, %struct.inode** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @ext4_xattr_delete_inode(i32* %175, %struct.inode* %176, %struct.ext4_xattr_inode_array** %6, i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %174
  %182 = load %struct.inode*, %struct.inode** %2, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @ext4_warning(i32 %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %181, %164, %148
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @ext4_journal_stop(i32* %188)
  %190 = load %struct.inode*, %struct.inode** %2, align 8
  %191 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %190)
  %192 = load %struct.inode*, %struct.inode** %2, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @sb_end_intwrite(i32 %194)
  %196 = load %struct.ext4_xattr_inode_array*, %struct.ext4_xattr_inode_array** %6, align 8
  %197 = call i32 @ext4_xattr_inode_array_free(%struct.ext4_xattr_inode_array* %196)
  br label %226

198:                                              ; preds = %174
  %199 = load i32*, i32** %3, align 8
  %200 = load %struct.inode*, %struct.inode** %2, align 8
  %201 = call i32 @ext4_orphan_del(i32* %199, %struct.inode* %200)
  %202 = call i64 (...) @ktime_get_real_seconds()
  %203 = load %struct.inode*, %struct.inode** %2, align 8
  %204 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = load i32*, i32** %3, align 8
  %207 = load %struct.inode*, %struct.inode** %2, align 8
  %208 = call i32 @ext4_mark_inode_dirty(i32* %206, %struct.inode* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %198
  %211 = load %struct.inode*, %struct.inode** %2, align 8
  %212 = call i32 @ext4_clear_inode(%struct.inode* %211)
  br label %217

213:                                              ; preds = %198
  %214 = load i32*, i32** %3, align 8
  %215 = load %struct.inode*, %struct.inode** %2, align 8
  %216 = call i32 @ext4_free_inode(i32* %214, %struct.inode* %215)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @ext4_journal_stop(i32* %218)
  %220 = load %struct.inode*, %struct.inode** %2, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @sb_end_intwrite(i32 %222)
  %224 = load %struct.ext4_xattr_inode_array*, %struct.ext4_xattr_inode_array** %6, align 8
  %225 = call i32 @ext4_xattr_inode_array_free(%struct.ext4_xattr_inode_array* %224)
  br label %229

226:                                              ; preds = %187, %110, %68, %60
  %227 = load %struct.inode*, %struct.inode** %2, align 8
  %228 = call i32 @ext4_clear_inode(%struct.inode* %227)
  br label %229

229:                                              ; preds = %226, %217
  ret void
}

declare dso_local i32 @trace_ext4_evict_inode(%struct.inode*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_6__* @EXT4_SB(i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @jbd2_complete_transaction(i32*, i32) #1

declare dso_local i32 @filemap_write_and_wait(%struct.TYPE_5__*) #1

declare dso_local i32 @truncate_inode_pages_final(%struct.TYPE_5__*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_begin_ordered_truncate(%struct.inode*, i32) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i64 @EXT4_MAXQUOTAS_DEL_BLOCKS(i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i64) #1

declare dso_local i64 @ext4_blocks_for_truncate(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i64 @ext4_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_error(i32, i8*, i64, i32) #1

declare dso_local i32 @ext4_xattr_delete_inode(i32*, %struct.inode*, %struct.ext4_xattr_inode_array**, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_xattr_inode_array_free(%struct.ext4_xattr_inode_array*) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @ext4_clear_inode(%struct.inode*) #1

declare dso_local i32 @ext4_free_inode(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
