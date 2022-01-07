; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_truncate_inode_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_truncate_inode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_inode = type { i64* }
%struct.dnode_of_data = type { i32 }
%struct.page = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@NIDS_PER_BLOCK = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_truncate_inode_blocks(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.f2fs_inode*, align 8
  %14 = alloca %struct.dnode_of_data, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %16)
  store %struct.f2fs_sb_info* %17, %struct.f2fs_sb_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @trace_f2fs_truncate_inode_blocks_enter(%struct.inode* %18, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %25 = call i32 @get_node_path(%struct.inode* %21, i32 %22, i32* %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %218

30:                                               ; preds = %2
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %31, i32 %34)
  store %struct.page* %35, %struct.page** %15, align 8
  %36 = load %struct.page*, %struct.page** %15, align 8
  %37 = call i64 @IS_ERR(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load %struct.page*, %struct.page** %15, align 8
  %42 = call i32 @PTR_ERR(%struct.page* %41)
  %43 = call i32 @trace_f2fs_truncate_inode_blocks_exit(%struct.inode* %40, i32 %42)
  %44 = load %struct.page*, %struct.page** %15, align 8
  %45 = call i32 @PTR_ERR(%struct.page* %44)
  store i32 %45, i32* %3, align 4
  br label %218

46:                                               ; preds = %30
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.page*, %struct.page** %15, align 8
  %49 = call i32 @set_new_dnode(%struct.dnode_of_data* %14, %struct.inode* %47, %struct.page* %48, i32* null, i32 0)
  %50 = load %struct.page*, %struct.page** %15, align 8
  %51 = call i32 @unlock_page(%struct.page* %50)
  %52 = load %struct.page*, %struct.page** %15, align 8
  %53 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %52)
  store %struct.f2fs_inode* %53, %struct.f2fs_inode** %13, align 8
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %111 [
    i32 0, label %55
    i32 1, label %55
    i32 2, label %58
    i32 3, label %86
  ]

55:                                               ; preds = %46, %46
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  br label %113

58:                                               ; preds = %46
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %114

68:                                               ; preds = %58
  %69 = load %struct.f2fs_inode*, %struct.f2fs_inode** %13, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @truncate_partial_nodes(%struct.dnode_of_data* %14, %struct.f2fs_inode* %69, i32* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %205

81:                                               ; preds = %75, %68
  %82 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %83 = add nsw i32 1, %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %113

86:                                               ; preds = %46
  %87 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 5, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %86
  br label %114

97:                                               ; preds = %86
  %98 = load %struct.f2fs_inode*, %struct.f2fs_inode** %13, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @truncate_partial_nodes(%struct.dnode_of_data* %14, %struct.f2fs_inode* %98, i32* %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %205

110:                                              ; preds = %104, %97
  br label %113

111:                                              ; preds = %46
  %112 = call i32 (...) @BUG()
  br label %113

113:                                              ; preds = %111, %110, %81, %55
  br label %114

114:                                              ; preds = %113, %96, %67
  br label %115

115:                                              ; preds = %196, %114
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %204

118:                                              ; preds = %115
  %119 = load %struct.f2fs_inode*, %struct.f2fs_inode** %13, align 8
  %120 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %123 = load i32, i32* %122, align 16
  %124 = sub nsw i32 %123, 131
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @le32_to_cpu(i64 %127)
  %129 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %14, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %131 = load i32, i32* %130, align 16
  switch i32 %131, label %144 [
    i32 131, label %132
    i32 130, label %132
    i32 129, label %134
    i32 128, label %134
    i32 132, label %139
  ]

132:                                              ; preds = %118, %118
  %133 = call i32 @truncate_dnode(%struct.dnode_of_data* %14)
  store i32 %133, i32* %7, align 4
  br label %146

134:                                              ; preds = %118, %118
  %135 = load i32, i32* %12, align 4
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @truncate_nodes(%struct.dnode_of_data* %14, i32 %135, i32 %137, i32 2)
  store i32 %138, i32* %7, align 4
  br label %146

139:                                              ; preds = %118
  %140 = load i32, i32* %12, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @truncate_nodes(%struct.dnode_of_data* %14, i32 %140, i32 %142, i32 3)
  store i32 %143, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %146

144:                                              ; preds = %118
  %145 = call i32 (...) @BUG()
  br label %146

146:                                              ; preds = %144, %139, %134, %132
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %205

155:                                              ; preds = %149, %146
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %196

159:                                              ; preds = %155
  %160 = load %struct.f2fs_inode*, %struct.f2fs_inode** %13, align 8
  %161 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = sub nsw i32 %164, 131
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %162, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %159
  %171 = load %struct.page*, %struct.page** %15, align 8
  %172 = call i32 @lock_page(%struct.page* %171)
  %173 = load %struct.page*, %struct.page** %15, align 8
  %174 = getelementptr inbounds %struct.page, %struct.page* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %177 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %176)
  %178 = icmp ne i64 %175, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @BUG_ON(i32 %179)
  %181 = load %struct.page*, %struct.page** %15, align 8
  %182 = load i32, i32* @NODE, align 4
  %183 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %181, i32 %182, i32 1, i32 1)
  %184 = load %struct.f2fs_inode*, %struct.f2fs_inode** %13, align 8
  %185 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %188 = load i32, i32* %187, align 16
  %189 = sub nsw i32 %188, 131
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %186, i64 %190
  store i64 0, i64* %191, align 8
  %192 = load %struct.page*, %struct.page** %15, align 8
  %193 = call i32 @set_page_dirty(%struct.page* %192)
  %194 = load %struct.page*, %struct.page** %15, align 8
  %195 = call i32 @unlock_page(%struct.page* %194)
  br label %196

196:                                              ; preds = %170, %159, %155
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %197, align 4
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %199 = load i32, i32* %198, align 16
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 16
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %12, align 4
  br label %115

204:                                              ; preds = %115
  br label %205

205:                                              ; preds = %204, %154, %109, %80
  %206 = load %struct.page*, %struct.page** %15, align 8
  %207 = call i32 @f2fs_put_page(%struct.page* %206, i32 0)
  %208 = load %struct.inode*, %struct.inode** %4, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @trace_f2fs_truncate_inode_blocks_exit(%struct.inode* %208, i32 %209)
  %211 = load i32, i32* %7, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %216

214:                                              ; preds = %205
  %215 = load i32, i32* %7, align 4
  br label %216

216:                                              ; preds = %214, %213
  %217 = phi i32 [ 0, %213 ], [ %215, %214 ]
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %39, %28
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_truncate_inode_blocks_enter(%struct.inode*, i32) #1

declare dso_local i32 @get_node_path(%struct.inode*, i32, i32*, i32*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @trace_f2fs_truncate_inode_blocks_exit(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, %struct.page*, i32*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i32 @truncate_partial_nodes(%struct.dnode_of_data*, %struct.f2fs_inode*, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @truncate_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @truncate_nodes(%struct.dnode_of_data*, i32, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
