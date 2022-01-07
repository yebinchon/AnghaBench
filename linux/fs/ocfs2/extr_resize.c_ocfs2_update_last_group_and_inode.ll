; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_update_last_group_and_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_update_last_group_and_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { %struct.ocfs2_chain_rec*, i32, i32 }
%struct.ocfs2_chain_rec = type { i32, i32 }
%struct.ocfs2_group_desc = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_FEATURE_COMPAT_BACKUP_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i32, i32)* @ocfs2_update_last_group_and_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_update_last_group_and_inode(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_chain_list*, align 8
  %17 = alloca %struct.ocfs2_chain_rec*, align 8
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_super* @OCFS2_SB(i32 %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %14, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %32, %struct.ocfs2_dinode** %15, align 8
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.ocfs2_chain_list* %35, %struct.ocfs2_chain_list** %16, align 8
  store i32 0, i32* %21, align 4
  %36 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %37 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %22, align 4
  %40 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %41 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @trace_ocfs2_update_last_group_and_inode(i32 %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call i32 @INODE_CACHE(%struct.inode* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %52 = call i32 @ocfs2_journal_access_gd(i32* %47, i32 %49, %struct.buffer_head* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %6
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %212

58:                                               ; preds = %6
  %59 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %62, %struct.ocfs2_group_desc** %18, align 8
  %63 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %64 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load i32, i32* %22, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %22, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %20, align 4
  %72 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %73 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %72, i32 0, i32 1
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @le16_add_cpu(i32* %73, i32 %74)
  %76 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %77 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @le16_add_cpu(i32* %77, i32 %78)
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %81 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @OCFS2_FEATURE_COMPAT_BACKUP_SB, align 4
  %84 = call i64 @OCFS2_HAS_COMPAT_FEATURE(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %58
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %24, align 4
  %91 = call i32 @ocfs2_calc_new_backup_super(%struct.inode* %87, %struct.ocfs2_group_desc* %88, i32 %89, i32 %90, i32 1)
  store i32 %91, i32* %21, align 4
  %92 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %93 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %21, align 4
  %95 = mul nsw i32 -1, %94
  %96 = call i32 @le16_add_cpu(i32* %93, i32 %95)
  br label %97

97:                                               ; preds = %86, %58
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %100 = call i32 @ocfs2_journal_dirty(i32* %98, %struct.buffer_head* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = call i32 @INODE_CACHE(%struct.inode* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %105 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %106 = call i32 @ocfs2_journal_access_di(i32* %101, i32 %103, %struct.buffer_head* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %188

112:                                              ; preds = %97
  %113 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %114 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %118 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %117, i32 0, i32 0
  %119 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %118, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %119, i64 %121
  store %struct.ocfs2_chain_rec* %122, %struct.ocfs2_chain_rec** %17, align 8
  %123 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %17, align 8
  %124 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %123, i32 0, i32 1
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @le32_add_cpu(i32* %124, i32 %125)
  %127 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %17, align 8
  %128 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %127, i32 0, i32 0
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @le32_add_cpu(i32* %128, i32 %129)
  %131 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %132 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @le32_add_cpu(i32* %134, i32 %135)
  %137 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %138 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %137, i32 0, i32 1
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @le32_add_cpu(i32* %138, i32 %139)
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %112
  %144 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %17, align 8
  %145 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %144, i32 0, i32 0
  %146 = load i32, i32* %21, align 4
  %147 = mul nsw i32 -1, %146
  %148 = call i32 @le32_add_cpu(i32* %145, i32 %147)
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %150 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @le32_add_cpu(i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %143, %112
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = call i32 @spin_lock(i32* %158)
  %160 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %161 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le32_to_cpu(i32 %162)
  %164 = load %struct.inode*, %struct.inode** %8, align 8
  %165 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %164)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %168 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %167, i32 0, i32 0
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %171 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %169, %172
  %174 = call i32 @le64_add_cpu(i32* %168, i32 %173)
  %175 = load %struct.inode*, %struct.inode** %8, align 8
  %176 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %175)
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = call i32 @spin_unlock(i32* %177)
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %181 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le64_to_cpu(i32 %182)
  %184 = call i32 @i_size_write(%struct.inode* %179, i32 %183)
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %187 = call i32 @ocfs2_journal_dirty(i32* %185, %struct.buffer_head* %186)
  br label %188

188:                                              ; preds = %155, %109
  %189 = load i32, i32* %13, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %188
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* %24, align 4
  %196 = call i32 @ocfs2_calc_new_backup_super(%struct.inode* %192, %struct.ocfs2_group_desc* %193, i32 %194, i32 %195, i32 0)
  %197 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %198 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %197, i32 0, i32 0
  %199 = load i32, i32* %21, align 4
  %200 = call i32 @le16_add_cpu(i32* %198, i32 %199)
  %201 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %202 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %201, i32 0, i32 1
  %203 = load i32, i32* %20, align 4
  %204 = mul nsw i32 -1, %203
  %205 = call i32 @le16_add_cpu(i32* %202, i32 %204)
  %206 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %207 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %206, i32 0, i32 0
  %208 = load i32, i32* %20, align 4
  %209 = mul nsw i32 -1, %208
  %210 = call i32 @le16_add_cpu(i32* %207, i32 %209)
  br label %211

211:                                              ; preds = %191, %188
  br label %212

212:                                              ; preds = %211, %55
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @mlog_errno(i32 %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i32, i32* %13, align 4
  ret i32 %219
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_update_last_group_and_inode(i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i64 @OCFS2_HAS_COMPAT_FEATURE(i32, i32) #1

declare dso_local i32 @ocfs2_calc_new_backup_super(%struct.inode*, %struct.ocfs2_group_desc*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
