; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_inode_getblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_inode_getblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32, i32, i64, i64, i64 }
%struct.buffer_head = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@EIO = common dso_local global i32 0, align 4
@UFS2_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i32, i32, i32*, i32*, %struct.page*)* @ufs_inode_getblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ufs_inode_getblock(%struct.inode* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, %struct.page* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.ufs_sb_private_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.page* %6, %struct.page** %15, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %16, align 8
  %26 = load %struct.super_block*, %struct.super_block** %16, align 8
  %27 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %28, align 8
  store %struct.ufs_sb_private_info* %29, %struct.ufs_sb_private_info** %17, align 8
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %31 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %34 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  store i32 %36, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %7
  store i64 0, i64* %8, align 8
  br label %198

40:                                               ; preds = %7
  %41 = load %struct.super_block*, %struct.super_block** %16, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %18, align 4
  %45 = lshr i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = call %struct.buffer_head* @sb_bread(%struct.super_block* %41, i64 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %21, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  store i64 0, i64* %8, align 8
  br label %198

59:                                               ; preds = %40
  %60 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %61 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %64 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %62, %65
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %70 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UFS2_MAGIC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %59
  %75 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %22, align 8
  br label %92

83:                                               ; preds = %59
  %84 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %11, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = bitcast i32* %90 to i8*
  store i8* %91, i8** %22, align 8
  br label %92

92:                                               ; preds = %83, %74
  %93 = load %struct.super_block*, %struct.super_block** %16, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %93, i8* %94)
  store i64 %95, i64* %19, align 8
  %96 = load i64, i64* %19, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %184

99:                                               ; preds = %92
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %140

102:                                              ; preds = %99
  %103 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %104 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @UFS2_MAGIC, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.super_block*, %struct.super_block** %16, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load i32, i32* %11, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @fs64_to_cpu(%struct.super_block* %109, i32 %118)
  store i64 %119, i64* %19, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %134, label %140

121:                                              ; preds = %102
  %122 = load %struct.super_block*, %struct.super_block** %16, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %11, align 4
  %128 = sub i32 %127, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @fs32_to_cpu(%struct.super_block* %122, i32 %131)
  store i64 %132, i64* %19, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %121, %108
  %135 = load i64, i64* %19, align 8
  %136 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %137 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  store i64 %139, i64* %20, align 8
  br label %148

140:                                              ; preds = %121, %108, %99
  %141 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %145 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  store i64 %147, i64* %20, align 8
  br label %148

148:                                              ; preds = %140, %134
  %149 = load %struct.inode*, %struct.inode** %9, align 8
  %150 = load i8*, i8** %22, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @ufs_blknum(i32 %151)
  %153 = load i64, i64* %20, align 8
  %154 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %155 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load %struct.page*, %struct.page** %15, align 8
  %159 = call i64 @ufs_new_fragments(%struct.inode* %149, i8* %150, i32 %152, i64 %153, i64 %156, i32* %157, %struct.page* %158)
  store i64 %159, i64* %19, align 8
  %160 = load i64, i64* %19, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %148
  br label %184

163:                                              ; preds = %148
  %164 = load i32*, i32** %14, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32*, i32** %14, align 8
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %163
  %169 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %170 = call i32 @mark_buffer_dirty(%struct.buffer_head* %169)
  %171 = load %struct.inode*, %struct.inode** %9, align 8
  %172 = call i64 @IS_SYNC(%struct.inode* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %176 = call i32 @sync_dirty_buffer(%struct.buffer_head* %175)
  br label %177

177:                                              ; preds = %174, %168
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = call i32 @current_time(%struct.inode* %178)
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call i32 @mark_inode_dirty(%struct.inode* %182)
  br label %184

184:                                              ; preds = %177, %162, %98
  %185 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %186 = call i32 @brelse(%struct.buffer_head* %185)
  %187 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %188 = load i64, i64* %19, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %192 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %19, align 8
  %195 = add nsw i64 %194, %193
  store i64 %195, i64* %19, align 8
  br label %196

196:                                              ; preds = %190, %184
  %197 = load i64, i64* %19, align 8
  store i64 %197, i64* %8, align 8
  br label %198

198:                                              ; preds = %196, %55, %39
  %199 = load i64, i64* %8, align 8
  ret i64 %199
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i64 @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i64 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i64 @ufs_new_fragments(%struct.inode*, i8*, i32, i64, i64, i32*, %struct.page*) #1

declare dso_local i32 @ufs_blknum(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @UFSD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
