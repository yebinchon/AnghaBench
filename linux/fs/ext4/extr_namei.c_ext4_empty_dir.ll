; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid size\00", align 1
@DIRENT_HTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"directory missing '.' and/or '..'\00", align 1
@EITHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext4_dir_entry_2*, align 8
  %7 = alloca %struct.ext4_dir_entry_2*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i64 @ext4_has_inline_data(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @empty_inline_dir(%struct.inode* %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %2, align 4
  br label %212

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %31 = call i32 @EXT4_DIR_REC_LEN(i32 2)
  %32 = add i32 %30, %31
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @EXT4_ERROR_INODE(%struct.inode* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %212

37:                                               ; preds = %23
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load i32, i32* @DIRENT_HTREE, align 4
  %40 = call %struct.buffer_head* @ext4_read_dirblock(%struct.inode* %38, i32 0, i32 %39)
  store %struct.buffer_head* %40, %struct.buffer_head** %5, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %42 = call i64 @IS_ERR(%struct.buffer_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %212

45:                                               ; preds = %37
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %49, %struct.ext4_dir_entry_2** %6, align 8
  %50 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %51 = load %struct.super_block*, %struct.super_block** %8, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %50, i32 %53)
  store %struct.ext4_dir_entry_2* %54, %struct.ext4_dir_entry_2** %7, align 8
  %55 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %56 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %45
  %64 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %65 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75, %69, %63, %45
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = call i32 @ext4_warning_inode(%struct.inode* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  store i32 1, i32* %2, align 4
  br label %212

86:                                               ; preds = %75
  %87 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %88 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.super_block*, %struct.super_block** %8, align 8
  %91 = getelementptr inbounds %struct.super_block, %struct.super_block* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ext4_rec_len_from_disk(i32 %89, i32 %92)
  %94 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %95 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.super_block*, %struct.super_block** %8, align 8
  %98 = getelementptr inbounds %struct.super_block, %struct.super_block* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ext4_rec_len_from_disk(i32 %96, i32 %99)
  %101 = add i32 %93, %100
  store i32 %101, i32* %4, align 4
  %102 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %103 = load %struct.super_block*, %struct.super_block** %8, align 8
  %104 = getelementptr inbounds %struct.super_block, %struct.super_block* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %102, i32 %105)
  store %struct.ext4_dir_entry_2* %106, %struct.ext4_dir_entry_2** %6, align 8
  br label %107

107:                                              ; preds = %194, %168, %139, %86
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ult i32 %108, %111
  br i1 %112, label %113, label %209

113:                                              ; preds = %107
  %114 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %115 = bitcast %struct.ext4_dir_entry_2* %114 to i8*
  %116 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.super_block*, %struct.super_block** %8, align 8
  %120 = getelementptr inbounds %struct.super_block, %struct.super_block* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = add nsw i64 %118, %122
  %124 = inttoptr i64 %123 to i8*
  %125 = icmp uge i8* %115, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %113
  %127 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.super_block*, %struct.super_block** %8, align 8
  %131 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %130)
  %132 = lshr i32 %129, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.inode*, %struct.inode** %3, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @EITHER, align 4
  %136 = call %struct.buffer_head* @ext4_read_dirblock(%struct.inode* %133, i32 %134, i32 %135)
  store %struct.buffer_head* %136, %struct.buffer_head** %5, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %138 = icmp eq %struct.buffer_head* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %126
  %140 = load %struct.super_block*, %struct.super_block** %8, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %4, align 4
  br label %107

145:                                              ; preds = %126
  %146 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %147 = call i64 @IS_ERR(%struct.buffer_head* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %212

150:                                              ; preds = %145
  %151 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %154, %struct.ext4_dir_entry_2** %6, align 8
  br label %155

155:                                              ; preds = %150, %113
  %156 = load %struct.inode*, %struct.inode** %3, align 8
  %157 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %158 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = call i64 @ext4_check_dir_entry(%struct.inode* %156, i32* null, %struct.ext4_dir_entry_2* %157, %struct.buffer_head* %158, i64 %161, i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %155
  %169 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %170 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.super_block*, %struct.super_block** %8, align 8
  %173 = getelementptr inbounds %struct.super_block, %struct.super_block* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  %176 = add nsw i64 %171, %175
  %177 = inttoptr i64 %176 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %177, %struct.ext4_dir_entry_2** %6, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.super_block*, %struct.super_block** %8, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sub i32 %181, 1
  %183 = or i32 %178, %182
  %184 = add i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %107

185:                                              ; preds = %155
  %186 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %187 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @le32_to_cpu(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %193 = call i32 @brelse(%struct.buffer_head* %192)
  store i32 0, i32* %2, align 4
  br label %212

194:                                              ; preds = %185
  %195 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %196 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.super_block*, %struct.super_block** %8, align 8
  %199 = getelementptr inbounds %struct.super_block, %struct.super_block* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ext4_rec_len_from_disk(i32 %197, i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %4, align 4
  %204 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %205 = load %struct.super_block*, %struct.super_block** %8, align 8
  %206 = getelementptr inbounds %struct.super_block, %struct.super_block* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %204, i32 %207)
  store %struct.ext4_dir_entry_2* %208, %struct.ext4_dir_entry_2** %6, align 8
  br label %107

209:                                              ; preds = %107
  %210 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %211 = call i32 @brelse(%struct.buffer_head* %210)
  store i32 1, i32* %2, align 4
  br label %212

212:                                              ; preds = %209, %191, %149, %81, %44, %34, %20
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @empty_inline_dir(%struct.inode*, i32*) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local %struct.buffer_head* @ext4_read_dirblock(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
