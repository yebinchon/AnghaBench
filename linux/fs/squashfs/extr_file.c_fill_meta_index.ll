; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_fill_meta_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_fill_meta_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32, i64 }
%struct.meta_index = type { i32, i32, %struct.meta_entry*, i64 }
%struct.meta_entry = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@SQUASHFS_META_INDEXES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"get_meta_index: offset %d, meta->offset %d, meta->entries %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"get_meta_index: index_block 0x%llx, offset 0x%x data_block 0x%llx\0A\00", align 1
@SQUASHFS_META_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"get_meta_index: meta->offset %d, meta->entries %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64*, i32*, i64*)* @fill_meta_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_meta_index(%struct.inode* %0, i32 %1, i64* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.squashfs_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.meta_index*, align 8
  %16 = alloca %struct.meta_entry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %27, align 8
  store %struct.squashfs_sb_info* %28, %struct.squashfs_sb_info** %12, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @i_size_read(%struct.inode* %29)
  %31 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %12, align 8
  %32 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %30, %33
  %35 = call i32 @calculate_skip(i32 %34)
  store i32 %35, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_3__* @squashfs_i(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %17, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call %struct.TYPE_3__* @squashfs_i(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %18, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.TYPE_3__* @squashfs_i(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %19, align 8
  %48 = load i32, i32* @SQUASHFS_META_INDEXES, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %214, %5
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %225

57:                                               ; preds = %53
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.meta_index* @locate_meta_index(%struct.inode* %58, i32 %60, i32 %61)
  store %struct.meta_index* %62, %struct.meta_index** %15, align 8
  %63 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %64 = icmp eq %struct.meta_index* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %13, align 4
  %70 = call %struct.meta_index* @empty_meta_index(%struct.inode* %66, i32 %68, i32 %69)
  store %struct.meta_index* %70, %struct.meta_index** %15, align 8
  %71 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %72 = icmp eq %struct.meta_index* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %226

74:                                               ; preds = %65
  br label %134

75:                                               ; preds = %57
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %78 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %81 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = icmp slt i32 %76, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %89 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %92 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = sub nsw i32 %94, 1
  br label %96

96:                                               ; preds = %87, %85
  %97 = phi i32 [ %86, %85 ], [ %95, %87 ]
  store i32 %97, i32* %14, align 4
  %98 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %99 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %98, i32 0, i32 2
  %100 = load %struct.meta_entry*, %struct.meta_entry** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %103 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %100, i64 %106
  store %struct.meta_entry* %107, %struct.meta_entry** %16, align 8
  %108 = load %struct.meta_entry*, %struct.meta_entry** %16, align 8
  %109 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %12, align 8
  %112 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  store i64 %114, i64* %17, align 8
  %115 = load %struct.meta_entry*, %struct.meta_entry** %16, align 8
  %116 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %18, align 4
  %118 = load %struct.meta_entry*, %struct.meta_entry** %16, align 8
  %119 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %19, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %123 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %126 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124, i32 %127)
  %129 = load i64, i64* %17, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %18, align 4
  %132 = load i64, i64* %19, align 8
  %133 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131, i64 %132)
  br label %134

134:                                              ; preds = %96, %74
  %135 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %136 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %139 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  store i32 %141, i32* %21, align 4
  br label %142

142:                                              ; preds = %211, %134
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load i32, i32* %21, align 4
  %148 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %149 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SQUASHFS_META_ENTRIES, align 4
  %152 = add nsw i32 %150, %151
  %153 = icmp slt i32 %147, %152
  br label %154

154:                                              ; preds = %146, %142
  %155 = phi i1 [ false, %142 ], [ %153, %146 ]
  br i1 %155, label %156, label %214

156:                                              ; preds = %154
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @SQUASHFS_META_INDEXES, align 4
  %159 = mul nsw i32 %157, %158
  store i32 %159, i32* %22, align 4
  %160 = load %struct.inode*, %struct.inode** %7, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %22, align 4
  %164 = call i64 @read_indexes(%struct.TYPE_4__* %162, i32 %163, i64* %17, i32* %18)
  store i64 %164, i64* %23, align 8
  %165 = load i64, i64* %23, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %156
  %168 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %169 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %174 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %173, i32 0, i32 3
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i64, i64* %23, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %20, align 4
  br label %238

178:                                              ; preds = %156
  %179 = load i64, i64* %23, align 8
  %180 = load i64, i64* %19, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %19, align 8
  %182 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %183 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %182, i32 0, i32 2
  %184 = load %struct.meta_entry*, %struct.meta_entry** %183, align 8
  %185 = load i32, i32* %21, align 4
  %186 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %187 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %184, i64 %190
  store %struct.meta_entry* %191, %struct.meta_entry** %16, align 8
  %192 = load i64, i64* %17, align 8
  %193 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %12, align 8
  %194 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = load %struct.meta_entry*, %struct.meta_entry** %16, align 8
  %198 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.meta_entry*, %struct.meta_entry** %16, align 8
  %201 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load i64, i64* %19, align 8
  %203 = load %struct.meta_entry*, %struct.meta_entry** %16, align 8
  %204 = getelementptr inbounds %struct.meta_entry, %struct.meta_entry* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %206 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %178
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %21, align 4
  br label %142

214:                                              ; preds = %154
  %215 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %216 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %219 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %217, i32 %220)
  %222 = load %struct.inode*, %struct.inode** %7, align 8
  %223 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %224 = call i32 @release_meta_index(%struct.inode* %222, %struct.meta_index* %223)
  br label %53

225:                                              ; preds = %53
  br label %226

226:                                              ; preds = %225, %73
  %227 = load i64, i64* %17, align 8
  %228 = load i64*, i64** %9, align 8
  store i64 %227, i64* %228, align 8
  %229 = load i32, i32* %18, align 4
  %230 = load i32*, i32** %10, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i64, i64* %19, align 8
  %232 = load i64*, i64** %11, align 8
  store i64 %231, i64* %232, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* @SQUASHFS_META_INDEXES, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* %13, align 4
  %237 = mul nsw i32 %235, %236
  store i32 %237, i32* %6, align 4
  br label %243

238:                                              ; preds = %175
  %239 = load %struct.inode*, %struct.inode** %7, align 8
  %240 = load %struct.meta_index*, %struct.meta_index** %15, align 8
  %241 = call i32 @release_meta_index(%struct.inode* %239, %struct.meta_index* %240)
  %242 = load i32, i32* %20, align 4
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %238, %226
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @calculate_skip(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @squashfs_i(%struct.inode*) #1

declare dso_local %struct.meta_index* @locate_meta_index(%struct.inode*, i32, i32) #1

declare dso_local %struct.meta_index* @empty_meta_index(%struct.inode*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i64 @read_indexes(%struct.TYPE_4__*, i32, i64*, i32*) #1

declare dso_local i32 @release_meta_index(%struct.inode*, %struct.meta_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
