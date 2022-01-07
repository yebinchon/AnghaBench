; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_truncate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_truncate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { i32, i32, i32 }
%struct.ufs_sb_private_info = type { i32, i32, i32 }
%struct.ufs_buffer_head = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@UFS_IND_BLOCK = common dso_local global i32 0, align 4
@UFS_TIND_BLOCK = common dso_local global i32 0, align 4
@DIRECT_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ufs_truncate_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_truncate_blocks(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ufs_inode_info*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_sb_private_info*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.ufs_buffer_head*], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %14)
  store %struct.ufs_inode_info* %15, %struct.ufs_inode_info** %3, align 8
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %4, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %21, align 8
  store %struct.ufs_sb_private_info* %22, %struct.ufs_sb_private_info** %5, align 8
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %1
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %33 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %31, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %39 = call i32 @ufs_block_to_path(%struct.inode* %36, i32 %37, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %211

43:                                               ; preds = %27
  br label %45

44:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %63, %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %57 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %48

66:                                               ; preds = %61, %48
  %67 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %68 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = call i32 @ufs_trunc_direct(%struct.inode* %73)
  %75 = load i32, i32* @UFS_IND_BLOCK, align 4
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %75, i32* %76, align 16
  br label %158

77:                                               ; preds = %66
  %78 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %79 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 16
  %83 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %78, %struct.ufs_inode_info* %79, i32 %81)
  store i8* %83, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %133, %77
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %84
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %89, i8* %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %136

95:                                               ; preds = %88
  %96 = load %struct.super_block*, %struct.super_block** %4, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %99 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %96, i64 %97, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [3 x %struct.ufs_buffer_head*], [3 x %struct.ufs_buffer_head*]* %10, i64 0, i64 %103
  store %struct.ufs_buffer_head* %101, %struct.ufs_buffer_head** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [3 x %struct.ufs_buffer_head*], [3 x %struct.ufs_buffer_head*]* %10, i64 0, i64 %106
  %108 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %107, align 8
  %109 = icmp ne %struct.ufs_buffer_head* %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %95
  %111 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %112 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %111, i32 0, i32 1
  %113 = call i32 @write_seqlock(i32* %112)
  %114 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %114, i8* %115)
  %117 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %118 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %117, i32 0, i32 1
  %119 = call i32 @write_sequnlock(i32* %118)
  br label %136

120:                                              ; preds = %95
  %121 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [3 x %struct.ufs_buffer_head*], [3 x %struct.ufs_buffer_head*]* %10, i64 0, i64 %123
  %125 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %121, %struct.ufs_buffer_head* %125, i32 %130)
  store i8* %132, i8** %11, align 8
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %84

136:                                              ; preds = %110, %94, %84
  br label %137

137:                                              ; preds = %141, %136
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %9, align 4
  %140 = icmp ne i32 %138, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load %struct.inode*, %struct.inode** %2, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add i32 %143, 1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [3 x %struct.ufs_buffer_head*], [3 x %struct.ufs_buffer_head*]* %10, i64 0, i64 %149
  %151 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub i32 %152, %153
  %155 = sub i32 %154, 1
  %156 = call i32 @free_branch_tail(%struct.inode* %142, i32 %147, %struct.ufs_buffer_head* %151, i32 %155)
  br label %137

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %72
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %160 = load i32, i32* %159, align 16
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %193, %158
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @UFS_TIND_BLOCK, align 4
  %164 = icmp ule i32 %162, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %161
  %166 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %167 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %166, %struct.ufs_inode_info* %167, i32 %168)
  store i8* %169, i8** %11, align 8
  %170 = load %struct.super_block*, %struct.super_block** %4, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %170, i8* %171)
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %165
  %176 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %177 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %176, i32 0, i32 1
  %178 = call i32 @write_seqlock(i32* %177)
  %179 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %179, i8* %180)
  %182 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %183 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %182, i32 0, i32 1
  %184 = call i32 @write_sequnlock(i32* %183)
  %185 = load %struct.inode*, %struct.inode** %2, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @UFS_IND_BLOCK, align 4
  %189 = sub i32 %187, %188
  %190 = add i32 %189, 1
  %191 = call i32 @free_full_branch(%struct.inode* %185, i64 %186, i32 %190)
  br label %192

192:                                              ; preds = %175, %165
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %9, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %161

196:                                              ; preds = %161
  %197 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %198 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %197, i32 0, i32 1
  %199 = call i32 @read_seqlock_excl(i32* %198)
  %200 = load i32, i32* @DIRECT_FRAGMENT, align 4
  %201 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %202 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %204 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %203, i32 0, i32 1
  %205 = call i32 @read_sequnlock_excl(i32* %204)
  %206 = load %struct.inode*, %struct.inode** %2, align 8
  %207 = call i32 @mark_inode_dirty(%struct.inode* %206)
  %208 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %209 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %208, i32 0, i32 0
  %210 = call i32 @mutex_unlock(i32* %209)
  br label %211

211:                                              ; preds = %196, %42
  ret void
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ufs_block_to_path(%struct.inode*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ufs_trunc_direct(%struct.inode*) #1

declare dso_local i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i32) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32) #1

declare dso_local i32 @free_branch_tail(%struct.inode*, i32, %struct.ufs_buffer_head*, i32) #1

declare dso_local i32 @free_full_branch(%struct.inode*, i64, i32) #1

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
