; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_count_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_count_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_group_desc = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Invalid number of block group descriptor blocks: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i8*)* @count_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_overhead(%struct.super_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call i64 @ext4_get_groups_count(%struct.super_block* %21)
  store i64 %22, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = call i32 @ext4_has_feature_bigalloc(%struct.super_block* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %3
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ext4_bg_has_super(%struct.super_block* %27, i64 %28)
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @ext4_bg_num_gdb(%struct.super_block* %30, i64 %31)
  %33 = add nsw i32 %29, %32
  %34 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %35 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %4, align 4
  br label %217

39:                                               ; preds = %3
  %40 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %41 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %47)
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %46, %49
  %51 = add nsw i64 %45, %50
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %53)
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = sub nsw i64 %56, 1
  store i64 %57, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %201, %39
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %204

62:                                               ; preds = %58
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %63, i64 %64, i32* null)
  store %struct.ext4_group_desc* %65, %struct.ext4_group_desc** %9, align 8
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %68 = call i64 @ext4_block_bitmap(%struct.super_block* %66, %struct.ext4_group_desc* %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %62
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %77, i64 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @ext4_set_bit(i32 %81, i8* %82)
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %76, %72, %62
  %87 = load %struct.super_block*, %struct.super_block** %5, align 8
  %88 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %89 = call i64 @ext4_inode_bitmap(%struct.super_block* %87, %struct.ext4_group_desc* %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %86
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sub nsw i64 %99, %100
  %102 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %98, i64 %101)
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @ext4_set_bit(i32 %102, i8* %103)
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %97, %93, %86
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %110 = call i64 @ext4_inode_table(%struct.super_block* %108, %struct.ext4_group_desc* %109)
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %107
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %117 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = load i64, i64* %11, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %114
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %141, %123
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %127 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub nsw i64 %132, %133
  %135 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %131, i64 %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @ext4_set_bit(i32 %136, i8* %137)
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  %144 = load i64, i64* %12, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %12, align 8
  br label %124

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %114, %107
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %201

152:                                              ; preds = %147
  store i32 0, i32* %15, align 4
  %153 = load %struct.super_block*, %struct.super_block** %5, align 8
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @ext4_bg_has_super(%struct.super_block* %153, i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @ext4_set_bit(i32 %158, i8* %160)
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %157, %152
  %165 = load %struct.super_block*, %struct.super_block** %5, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @ext4_bg_num_gdb(%struct.super_block* %165, i64 %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %168, %169
  %171 = load %struct.super_block*, %struct.super_block** %5, align 8
  %172 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %171)
  %173 = icmp sgt i32 %170, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %164
  %175 = load %struct.super_block*, %struct.super_block** %5, align 8
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @ext4_error(%struct.super_block* %175, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load %struct.super_block*, %struct.super_block** %5, align 8
  %179 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %178)
  %180 = load i32, i32* %15, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %174, %164
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %197, %182
  %187 = load i32, i32* %16, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  %193 = sext i32 %191 to i64
  %194 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %190, i64 %193)
  %195 = load i8*, i8** %7, align 8
  %196 = call i32 @ext4_set_bit(i32 %194, i8* %195)
  br label %197

197:                                              ; preds = %189
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %16, align 4
  br label %186

200:                                              ; preds = %186
  br label %201

201:                                              ; preds = %200, %151
  %202 = load i64, i64* %13, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %13, align 8
  br label %58

204:                                              ; preds = %58
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  store i32 0, i32* %4, align 4
  br label %217

208:                                              ; preds = %204
  %209 = load %struct.super_block*, %struct.super_block** %5, align 8
  %210 = call i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %209)
  %211 = load i8*, i8** %7, align 8
  %212 = load %struct.super_block*, %struct.super_block** %5, align 8
  %213 = call i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %212)
  %214 = sdiv i32 %213, 8
  %215 = call i32 @ext4_count_free(i8* %211, i32 %214)
  %216 = sub nsw i32 %210, %215
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %208, %207, %26
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @ext4_has_feature_bigalloc(%struct.super_block*) #1

declare dso_local i32 @ext4_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_set_bit(i32, i8*) #1

declare dso_local i32 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_count_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
