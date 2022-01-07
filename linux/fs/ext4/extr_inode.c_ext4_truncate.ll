; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, %struct.address_space* }
%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i32 }
%struct.ext4_inode_info = type { i32 }

@I_NEW = common dso_local global i32 0, align 4
@I_FREEING = common dso_local global i32 0, align 4
@EXT4_INODE_EOFBLOCKS = common dso_local global i32 0, align 4
@NO_AUTO_DA_ALLOC = common dso_local global i32 0, align 4
@EXT4_STATE_DA_ALLOC_CLOSE = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EXT4_HT_TRUNCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_truncate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_inode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %10)
  store %struct.ext4_inode_info* %11, %struct.ext4_inode_info** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 6
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @I_NEW, align 4
  %19 = load i32, i32* @I_FREEING, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @inode_is_locked(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @trace_ext4_truncate_enter(%struct.inode* %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @ext4_can_truncate(%struct.inode* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %196

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %40 = call i32 @ext4_clear_inode_flag(%struct.inode* %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* @NO_AUTO_DA_ALLOC, align 4
  %50 = call i32 @test_opt(%struct.TYPE_2__* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = load i32, i32* @EXT4_STATE_DA_ALLOC_CLOSE, align 4
  %55 = call i32 @ext4_set_inode_state(%struct.inode* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %45, %37
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i64 @ext4_has_inline_data(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = call i32 @ext4_inline_data_truncate(%struct.inode* %61, i32* %9)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %196

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %196

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %75, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = call i64 @ext4_inode_attach_jinode(%struct.inode* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %196

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %93 = call i64 @ext4_test_inode_flag(%struct.inode* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %96)
  store i32 %97, i32* %5, align 4
  br label %101

98:                                               ; preds = %90
  %99 = load %struct.inode*, %struct.inode** %3, align 8
  %100 = call i32 @ext4_blocks_for_truncate(%struct.inode* %99)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = load i32, i32* @EXT4_HT_TRUNCATE, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32* @ext4_journal_start(%struct.inode* %102, i32 %103, i32 %104)
  store i32* %105, i32** %7, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @IS_ERR(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %2, align 4
  br label %196

112:                                              ; preds = %101
  %113 = load %struct.inode*, %struct.inode** %3, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.inode*, %struct.inode** %3, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 5
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %115, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %112
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.address_space*, %struct.address_space** %8, align 8
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ext4_block_truncate_page(i32* %125, %struct.address_space* %126, i32 %129)
  br label %131

131:                                              ; preds = %124, %112
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.inode*, %struct.inode** %3, align 8
  %134 = call i32 @ext4_orphan_add(i32* %132, %struct.inode* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %172

138:                                              ; preds = %131
  %139 = load %struct.inode*, %struct.inode** %3, align 8
  %140 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %139)
  %141 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %140, i32 0, i32 0
  %142 = call i32 @down_write(i32* %141)
  %143 = load %struct.inode*, %struct.inode** %3, align 8
  %144 = call i32 @ext4_discard_preallocations(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %3, align 8
  %146 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %147 = call i64 @ext4_test_inode_flag(%struct.inode* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = call i32 @ext4_ext_truncate(i32* %150, %struct.inode* %151)
  store i32 %152, i32* %6, align 4
  br label %157

153:                                              ; preds = %138
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.inode*, %struct.inode** %3, align 8
  %156 = call i32 @ext4_ind_truncate(i32* %154, %struct.inode* %155)
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %159 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %158, i32 0, i32 0
  %160 = call i32 @up_write(i32* %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %172

164:                                              ; preds = %157
  %165 = load %struct.inode*, %struct.inode** %3, align 8
  %166 = call i64 @IS_SYNC(%struct.inode* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @ext4_handle_sync(i32* %169)
  br label %171

171:                                              ; preds = %168, %164
  br label %172

172:                                              ; preds = %171, %163, %137
  %173 = load %struct.inode*, %struct.inode** %3, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32*, i32** %7, align 8
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = call i32 @ext4_orphan_del(i32* %178, %struct.inode* %179)
  br label %181

181:                                              ; preds = %177, %172
  %182 = load %struct.inode*, %struct.inode** %3, align 8
  %183 = call i32 @current_time(%struct.inode* %182)
  %184 = load %struct.inode*, %struct.inode** %3, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.inode*, %struct.inode** %3, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 3
  store i32 %183, i32* %187, align 4
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.inode*, %struct.inode** %3, align 8
  %190 = call i32 @ext4_mark_inode_dirty(i32* %188, %struct.inode* %189)
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @ext4_journal_stop(i32* %191)
  %193 = load %struct.inode*, %struct.inode** %3, align 8
  %194 = call i32 @trace_ext4_truncate_exit(%struct.inode* %193)
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %181, %109, %88, %70, %65, %36
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @trace_ext4_truncate_enter(%struct.inode*) #1

declare dso_local i32 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @test_opt(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_inline_data_truncate(%struct.inode*, i32*) #1

declare dso_local i64 @ext4_inode_attach_jinode(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32 @ext4_blocks_for_truncate(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_block_truncate_page(i32*, %struct.address_space*, i32) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_ext_truncate(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_ind_truncate(i32*, %struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @trace_ext4_truncate_exit(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
