; ModuleID = '/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_lookup.c_vxfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_lookup.c_vxfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.vxfs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.vxfs_direct = type { i8*, i32, i32, i32 }
%struct.vxfs_dirblk = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @vxfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vxfs_sb_info*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vxfs_direct*, align 8
  %17 = alloca %struct.vxfs_dirblk*, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %7, align 8
  %24 = load %struct.super_block*, %struct.super_block** %7, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.super_block*, %struct.super_block** %7, align 8
  %28 = call %struct.vxfs_sb_info* @VXFS_SBI(%struct.super_block* %27)
  store %struct.vxfs_sb_info* %28, %struct.vxfs_sb_info** %11, align 8
  %29 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %30 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %36 = call i32 @dir_emit_dot(%struct.file* %34, %struct.dir_context* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %222

39:                                               ; preds = %33
  %40 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %41 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %46 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call %struct.TYPE_2__* @VXFS_INO(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DT_DIR, align 4
  %56 = call i32 @dir_emit(%struct.dir_context* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %222

59:                                               ; preds = %49
  %60 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %61 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %44
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @VXFS_DIRROUND(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %70 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %222

75:                                               ; preds = %64
  %76 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %77 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = and i64 %79, -4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %216, %75
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %217

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @PAGE_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  store i32 %90, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = call %struct.page* @vxfs_get_page(i32 %93, i32 %96)
  store %struct.page* %97, %struct.page** %12, align 8
  %98 = load %struct.page*, %struct.page** %12, align 8
  %99 = call i64 @IS_ERR(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %223

104:                                              ; preds = %86
  %105 = load %struct.page*, %struct.page** %12, align 8
  %106 = call i64 @page_address(%struct.page* %105)
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %13, align 8
  br label %108

108:                                              ; preds = %209, %181, %104
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %113, %114
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ false, %108 ], [ %115, %112 ]
  br i1 %117, label %118, label %210

118:                                              ; preds = %116
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %119, %121
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load i8*, i8** %13, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @PAGE_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  %132 = bitcast i8* %131 to %struct.vxfs_dirblk*
  store %struct.vxfs_dirblk* %132, %struct.vxfs_dirblk** %17, align 8
  %133 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %11, align 8
  %134 = load %struct.vxfs_dirblk*, %struct.vxfs_dirblk** %17, align 8
  %135 = call i32 @VXFS_DIRBLKOV(%struct.vxfs_sb_info* %133, %struct.vxfs_dirblk* %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %124, %118
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = bitcast i8* %146 to %struct.vxfs_direct*
  store %struct.vxfs_direct* %147, %struct.vxfs_direct** %16, align 8
  %148 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %149 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sub nsw i32 %157, 1
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %9, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %9, align 4
  br label %210

162:                                              ; preds = %142
  %163 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %11, align 8
  %164 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %165 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %163, i32 %166)
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %14, align 4
  %170 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %11, align 8
  %171 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %172 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %170, i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %9, align 4
  %177 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %178 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %162
  br label %108

182:                                              ; preds = %162
  %183 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %184 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %185 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %11, align 8
  %188 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %189 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %187, i32 %190)
  %192 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %11, align 8
  %193 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %194 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @fs32_to_cpu(%struct.vxfs_sb_info* %192, i32 %195)
  %197 = load i32, i32* @DT_UNKNOWN, align 4
  %198 = call i32 @dir_emit(%struct.dir_context* %183, i8* %186, i32 %191, i32 %196, i32 %197)
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %182
  %202 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %11, align 8
  %203 = load %struct.vxfs_direct*, %struct.vxfs_direct** %16, align 8
  %204 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %202, i32 %205)
  %207 = load i32, i32* %9, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %210

209:                                              ; preds = %182
  br label %108

210:                                              ; preds = %201, %152, %116
  %211 = load %struct.page*, %struct.page** %12, align 8
  %212 = call i32 @vxfs_put_page(%struct.page* %211)
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  br label %217

216:                                              ; preds = %210
  br label %82

217:                                              ; preds = %215, %82
  %218 = load i32, i32* %9, align 4
  %219 = or i32 %218, 2
  %220 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %221 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %217, %74, %58, %38
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %101
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.vxfs_sb_info* @VXFS_SBI(%struct.super_block*) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @VXFS_INO(%struct.inode*) #1

declare dso_local i32 @VXFS_DIRROUND(i32) #1

declare dso_local %struct.page* @vxfs_get_page(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @VXFS_DIRBLKOV(%struct.vxfs_sb_info*, %struct.vxfs_dirblk*) #1

declare dso_local i32 @fs16_to_cpu(%struct.vxfs_sb_info*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.vxfs_sb_info*, i32) #1

declare dso_local i32 @vxfs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
