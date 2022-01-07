; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_getfrag_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_getfrag_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32* }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ufs_sb_private_info* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@UFS_NDIR_FRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ENTER, ino %lu, fragment %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ufs_get_block\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"block > big\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ufs_getfrag_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_getfrag_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.ufs_sb_private_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %10, align 8
  %24 = load %struct.super_block*, %struct.super_block** %10, align 8
  %25 = call %struct.TYPE_3__* @UFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %26, align 8
  store %struct.ufs_sb_private_info* %27, %struct.ufs_sb_private_info** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %31 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = lshr i32 %29, %32
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %35 = call i32 @ufs_block_to_path(%struct.inode* %28, i32 %33, i32* %34)
  store i32 %35, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %38 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  store i32 %40, i32* %17, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @ufs_frag_map(%struct.inode* %41, i32* %42, i32 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %4
  br label %206

48:                                               ; preds = %4
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @UFS_NDIR_FRAGMENT, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %206

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = call i32 @read_seqlock_excl(i32* %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %61, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = call i32 @read_sequnlock_excl(i32* %70)
  br label %206

72:                                               ; preds = %56
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = call i32 @read_sequnlock_excl(i32* %75)
  br label %77

77:                                               ; preds = %72, %48
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = call i32 @UFSD(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %86)
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load %struct.super_block*, %struct.super_block** %10, align 8
  %96 = call i32 @ufs_warning(%struct.super_block* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %182

99:                                               ; preds = %77
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UFS_NDIR_FRAGMENT, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %99
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %113 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %111, %114
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %106
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @ufs_extend_tail(%struct.inode* %123, i32 %124, i32* %12, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %182

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %118, %106
  br label %133

133:                                              ; preds = %132, %99
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @ufs_inode_getfrag(%struct.inode* %137, i32 %139, i32 %140, i32* %12, i32* %13, i32* %143)
  store i64 %144, i64* %16, align 8
  br label %181

145:                                              ; preds = %133
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = load i32, i32* %7, align 4
  %150 = call i64 @ufs_inode_getfrag(%struct.inode* %146, i32 %148, i32 %149, i32* %12, i32* null, i32* null)
  store i64 %150, i64* %16, align 8
  store i32 1, i32* %20, align 4
  br label %151

151:                                              ; preds = %165, %145
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = load i64, i64* %16, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i64 @ufs_inode_getblock(%struct.inode* %157, i64 %158, i32 %162, i32 %163, i32* %12, i32* null, i32* null)
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %20, align 4
  br label %151

168:                                              ; preds = %151
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %178 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @ufs_inode_getblock(%struct.inode* %169, i64 %170, i32 %175, i32 %176, i32* %12, i32* %13, i32* %179)
  store i64 %180, i64* %16, align 8
  br label %181

181:                                              ; preds = %168, %136
  br label %182

182:                                              ; preds = %181, %130, %94
  %183 = load i64, i64* %16, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  %186 = load i32, i32* %17, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %16, align 8
  %189 = add nsw i64 %188, %187
  store i64 %189, i64* %16, align 8
  %190 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %191 = load %struct.super_block*, %struct.super_block** %10, align 8
  %192 = load i64, i64* %16, align 8
  %193 = call i32 @map_bh(%struct.buffer_head* %190, %struct.super_block* %191, i64 %192)
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %185
  %197 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %198 = call i32 @set_buffer_new(%struct.buffer_head* %197)
  br label %199

199:                                              ; preds = %196, %185
  br label %200

200:                                              ; preds = %199, %182
  %201 = load %struct.inode*, %struct.inode** %6, align 8
  %202 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = call i32 @mutex_unlock(i32* %203)
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %5, align 4
  br label %218

206:                                              ; preds = %67, %55, %47
  %207 = load i64, i64* %16, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %211 = load %struct.super_block*, %struct.super_block** %10, align 8
  %212 = load i64, i64* %16, align 8
  %213 = load i32, i32* %17, align 4
  %214 = zext i32 %213 to i64
  %215 = add nsw i64 %212, %214
  %216 = call i32 @map_bh(%struct.buffer_head* %210, %struct.super_block* %211, i64 %215)
  br label %217

217:                                              ; preds = %209, %206
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %217, %200
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_3__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ufs_block_to_path(%struct.inode*, i32, i32*) #1

declare dso_local i64 @ufs_frag_map(%struct.inode*, i32*, i32) #1

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local %struct.TYPE_4__* @UFS_I(%struct.inode*) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @UFSD(i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ufs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @ufs_extend_tail(%struct.inode*, i32, i32*, i32*) #1

declare dso_local i64 @ufs_inode_getfrag(%struct.inode*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ufs_inode_getblock(%struct.inode*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
