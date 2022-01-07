; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_prepare_for_delete_or_cut.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_prepare_for_delete_or_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"PAP-5210: mode must be M_DELETE\00", align 1
@IH_SIZE = common dso_local global i32 0, align 4
@M_DELETE = common dso_local global i8 0, align 1
@M_CUT = common dso_local global i32 0, align 4
@JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD = common dso_local global i64 0, align 8
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i64 0, align 8
@M_CONVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.treepath*, %struct.cpu_key*, i32*, i32*, i64)* @prepare_for_delete_or_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @prepare_for_delete_or_cut(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.treepath* %2, %struct.cpu_key* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.reiserfs_transaction_handle*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.treepath*, align 8
  %12 = alloca %struct.cpu_key*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.item_head*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.item_head, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.treepath* %2, %struct.treepath** %11, align 8
  store %struct.cpu_key* %3, %struct.cpu_key** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  store %struct.super_block* %30, %struct.super_block** %16, align 8
  %31 = load %struct.treepath*, %struct.treepath** %11, align 8
  %32 = call %struct.item_head* @tp_item_head(%struct.treepath* %31)
  store %struct.item_head* %32, %struct.item_head** %17, align 8
  %33 = load %struct.treepath*, %struct.treepath** %11, align 8
  %34 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath* %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %18, align 8
  %35 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %36 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.item_head*, %struct.item_head** %17, align 8
  %43 = call i64 @is_statdata_le_ih(%struct.item_head* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %7
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call i64 @max_reiserfs_offset(%struct.inode* %47)
  %49 = icmp ne i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @RFALSE(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @IH_SIZE, align 4
  %53 = load %struct.item_head*, %struct.item_head** %17, align 8
  %54 = call i32 @ih_item_len(%struct.item_head* %53)
  %55 = add nsw i32 %52, %54
  %56 = sub nsw i32 0, %55
  %57 = load i32*, i32** %14, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8, i8* @M_DELETE, align 1
  store i8 %58, i8* %8, align 1
  br label %203

59:                                               ; preds = %7
  %60 = load %struct.item_head*, %struct.item_head** %17, align 8
  %61 = call i64 @is_direntry_le_ih(%struct.item_head* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.treepath*, %struct.treepath** %11, align 8
  %65 = load %struct.item_head*, %struct.item_head** %17, align 8
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call signext i8 @prepare_for_direntry_item(%struct.treepath* %64, %struct.item_head* %65, %struct.inode* %66, i64 %67, i32* %68)
  store i8 %69, i8* %8, align 1
  br label %203

70:                                               ; preds = %59
  %71 = load %struct.item_head*, %struct.item_head** %17, align 8
  %72 = call i64 @is_direct_le_ih(%struct.item_head* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.treepath*, %struct.treepath** %11, align 8
  %76 = load %struct.item_head*, %struct.item_head** %17, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = call signext i8 @prepare_for_direct_item(%struct.treepath* %75, %struct.item_head* %76, %struct.inode* %77, i64 %78, i32* %79)
  store i8 %80, i8* %8, align 1
  br label %203

81:                                               ; preds = %70
  %82 = load %struct.super_block*, %struct.super_block** %16, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %85 = load i32, i32* @M_CUT, align 4
  store i32 %85, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i64 @max_reiserfs_offset(%struct.inode* %87)
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i64 0, i64* %15, align 8
  store i32 1, i32* %22, align 4
  br label %91

91:                                               ; preds = %90, %81
  br label %92

92:                                               ; preds = %189, %91
  store i32 0, i32* %21, align 4
  %93 = load i32*, i32** %14, align 8
  store i32 0, i32* %93, align 4
  %94 = load %struct.treepath*, %struct.treepath** %11, align 8
  %95 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath* %94)
  store %struct.buffer_head* %95, %struct.buffer_head** %18, align 8
  %96 = load %struct.treepath*, %struct.treepath** %11, align 8
  %97 = call %struct.item_head* @tp_item_head(%struct.treepath* %96)
  %98 = call i32 @copy_item_head(%struct.item_head* %20, %struct.item_head* %97)
  %99 = call i32 @I_UNFM_NUM(%struct.item_head* %20)
  store i32 %99, i32* %24, align 4
  br label %100

100:                                              ; preds = %174, %92
  %101 = call i32 @le_ih_k_offset(%struct.item_head* %20)
  %102 = load i32, i32* %24, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %15, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %175

110:                                              ; preds = %100
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %119 = call i64 @reiserfs_transaction_free_space(%struct.reiserfs_transaction_handle* %118)
  %120 = load i64, i64* @JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %175

123:                                              ; preds = %117, %113, %110
  %124 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %125 = call i64 @ih_item_body(%struct.buffer_head* %124, %struct.item_head* %20)
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %24, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = getelementptr inbounds i32, i32* %129, i64 -1
  store i32* %130, i32** %25, align 8
  %131 = load i32*, i32** %25, align 8
  %132 = call i64 @get_block_num(i32* %131, i32 0)
  store i64 %132, i64* %26, align 8
  %133 = load i64, i64* %26, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %123
  %136 = load %struct.super_block*, %struct.super_block** %16, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %138 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %136, %struct.buffer_head* %137, i32 1)
  %139 = load i32*, i32** %25, align 8
  %140 = call i32 @put_block_num(i32* %139, i32 0, i32 0)
  %141 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %143 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %141, %struct.buffer_head* %142)
  %144 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = load i64, i64* %26, align 8
  %147 = call i32 @reiserfs_free_block(%struct.reiserfs_transaction_handle* %144, %struct.inode* %145, i64 %146, i32 1)
  br label %148

148:                                              ; preds = %135, %123
  %149 = load %struct.super_block*, %struct.super_block** %16, align 8
  %150 = call i32 @reiserfs_cond_resched(%struct.super_block* %149)
  %151 = load %struct.treepath*, %struct.treepath** %11, align 8
  %152 = call i64 @item_moved(%struct.item_head* %20, %struct.treepath* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 1, i32* %21, align 4
  br label %175

155:                                              ; preds = %148
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %24, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @UNFM_P_SIZE, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %24, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %155
  %168 = load i32, i32* @IH_SIZE, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, %168
  store i32 %171, i32* %169, align 4
  %172 = load i8, i8* @M_DELETE, align 1
  %173 = sext i8 %172 to i32
  store i32 %173, i32* %23, align 4
  br label %175

174:                                              ; preds = %155
  br label %100

175:                                              ; preds = %167, %154, %122, %100
  %176 = load %struct.super_block*, %struct.super_block** %16, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %178 = call i32 @reiserfs_restore_prepared_buffer(%struct.super_block* %176, %struct.buffer_head* %177)
  br label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %21, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.super_block*, %struct.super_block** %16, align 8
  %184 = load %struct.cpu_key*, %struct.cpu_key** %12, align 8
  %185 = load %struct.treepath*, %struct.treepath** %11, align 8
  %186 = call i64 @search_for_position_by_key(%struct.super_block* %183, %struct.cpu_key* %184, %struct.treepath* %185)
  %187 = load i64, i64* @POSITION_FOUND, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %182, %179
  %190 = phi i1 [ false, %179 ], [ %188, %182 ]
  br i1 %190, label %92, label %191

191:                                              ; preds = %189
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* @UNFM_P_SIZE, align 4
  %194 = mul nsw i32 %192, %193
  store i32 %194, i32* %27, align 4
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i32, i32* @M_CONVERT, align 4
  store i32 %199, i32* %23, align 4
  br label %200

200:                                              ; preds = %198, %191
  %201 = load i32, i32* %23, align 4
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %8, align 1
  br label %203

203:                                              ; preds = %200, %74, %63, %45
  %204 = load i8, i8* %8, align 1
  ret i8 %204
}

declare dso_local %struct.item_head* @tp_item_head(%struct.treepath*) #1

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_statdata_le_ih(%struct.item_head*) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i64 @max_reiserfs_offset(%struct.inode*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local signext i8 @prepare_for_direntry_item(%struct.treepath*, %struct.item_head*, %struct.inode*, i64, i32*) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local signext i8 @prepare_for_direct_item(%struct.treepath*, %struct.item_head*, %struct.inode*, i64, i32*) #1

declare dso_local i32 @copy_item_head(%struct.item_head*, %struct.item_head*) #1

declare dso_local i32 @I_UNFM_NUM(%struct.item_head*) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i64 @reiserfs_transaction_free_space(%struct.reiserfs_transaction_handle*) #1

declare dso_local i64 @ih_item_body(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i64 @get_block_num(i32*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @put_block_num(i32*, i32, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.buffer_head*) #1

declare dso_local i32 @reiserfs_free_block(%struct.reiserfs_transaction_handle*, %struct.inode*, i64, i32) #1

declare dso_local i32 @reiserfs_cond_resched(%struct.super_block*) #1

declare dso_local i64 @item_moved(%struct.item_head*, %struct.treepath*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i64 @search_for_position_by_key(%struct.super_block*, %struct.cpu_key*, %struct.treepath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
