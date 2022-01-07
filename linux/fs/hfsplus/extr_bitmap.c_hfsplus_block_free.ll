; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bitmap.c_hfsplus_block_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bitmap.c_hfsplus_block_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_sb_info = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"block_free: %u,%u\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PAGE_CACHE_BITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to mark blocks free: error %ld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_block_free(%struct.super_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hfsplus_sb_info*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %19)
  store %struct.hfsplus_sb_info* %20, %struct.hfsplus_sb_info** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %196

24:                                               ; preds = %3
  %25 = load i32, i32* @BITMAP, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @hfs_dbg(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %196

39:                                               ; preds = %24
  %40 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %41 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %44 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.address_space*, %struct.address_space** %46, align 8
  store %struct.address_space* %47, %struct.address_space** %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @PAGE_CACHE_BITS, align 8
  %50 = sdiv i64 %48, %49
  store i64 %50, i64* %16, align 8
  %51 = load %struct.address_space*, %struct.address_space** %10, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call %struct.page* @read_mapping_page(%struct.address_space* %51, i64 %52, i32* null)
  store %struct.page* %53, %struct.page** %9, align 8
  %54 = load %struct.page*, %struct.page** %9, align 8
  %55 = call i64 @IS_ERR(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  br label %187

58:                                               ; preds = %39
  %59 = load %struct.page*, %struct.page** %9, align 8
  %60 = call i32* @kmap(%struct.page* %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @PAGE_CACHE_BITS, align 8
  %64 = sub nsw i64 %63, 1
  %65 = and i64 %62, %64
  %66 = sdiv i64 %65, 32
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i64, i64* @PAGE_CACHE_BITS, align 8
  %70 = sdiv i64 %69, 32
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %13, align 8
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %6, align 8
  %74 = srem i64 %73, 32
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %58
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 32, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = shl i32 -1, %81
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %14, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %7, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %78
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = lshr i32 -1, %93
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %14, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i32 @cpu_to_be32(i64 %98)
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %12, align 8
  %102 = load i32, i32* %100, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %100, align 4
  br label %170

104:                                              ; preds = %78
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @cpu_to_be32(i64 %105)
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %12, align 8
  %109 = load i32, i32* %107, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %107, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %7, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %104, %58
  br label %116

116:                                              ; preds = %115, %147
  br label %117

117:                                              ; preds = %125, %116
  %118 = load i32*, i32** %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = icmp ult i32* %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i64, i64* %7, align 8
  %123 = icmp slt i64 %122, 32
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %156

125:                                              ; preds = %121
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %12, align 8
  store i32 0, i32* %126, align 4
  %128 = load i64, i64* %7, align 8
  %129 = sub nsw i64 %128, 32
  store i64 %129, i64* %7, align 8
  br label %117

130:                                              ; preds = %117
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  br label %155

134:                                              ; preds = %130
  %135 = load %struct.page*, %struct.page** %9, align 8
  %136 = call i32 @set_page_dirty(%struct.page* %135)
  %137 = load %struct.page*, %struct.page** %9, align 8
  %138 = call i32 @kunmap(%struct.page* %137)
  %139 = load %struct.address_space*, %struct.address_space** %10, align 8
  %140 = load i64, i64* %16, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %16, align 8
  %142 = call %struct.page* @read_mapping_page(%struct.address_space* %139, i64 %141, i32* null)
  store %struct.page* %142, %struct.page** %9, align 8
  %143 = load %struct.page*, %struct.page** %9, align 8
  %144 = call i64 @IS_ERR(%struct.page* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %187

147:                                              ; preds = %134
  %148 = load %struct.page*, %struct.page** %9, align 8
  %149 = call i32* @kmap(%struct.page* %148)
  store i32* %149, i32** %11, align 8
  %150 = load i32*, i32** %11, align 8
  store i32* %150, i32** %12, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i64, i64* @PAGE_CACHE_BITS, align 8
  %153 = sdiv i64 %152, 32
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32* %154, i32** %13, align 8
  br label %116

155:                                              ; preds = %133
  br label %156

156:                                              ; preds = %155, %124
  %157 = load i64, i64* %7, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i64, i64* %7, align 8
  %161 = trunc i64 %160 to i32
  %162 = lshr i32 -1, %161
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %14, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @cpu_to_be32(i64 %164)
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %165
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %159, %156
  br label %170

170:                                              ; preds = %169, %88
  %171 = load %struct.page*, %struct.page** %9, align 8
  %172 = call i32 @set_page_dirty(%struct.page* %171)
  %173 = load %struct.page*, %struct.page** %9, align 8
  %174 = call i32 @kunmap(%struct.page* %173)
  %175 = load i64, i64* %15, align 8
  %176 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %177 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  %182 = load %struct.super_block*, %struct.super_block** %5, align 8
  %183 = call i32 @hfsplus_mark_mdb_dirty(%struct.super_block* %182)
  %184 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %185 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %184, i32 0, i32 1
  %186 = call i32 @mutex_unlock(i32* %185)
  store i32 0, i32* %4, align 4
  br label %196

187:                                              ; preds = %146, %57
  %188 = load %struct.page*, %struct.page** %9, align 8
  %189 = call i32 @PTR_ERR(%struct.page* %188)
  %190 = call i32 @pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  %191 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %192 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %191, i32 0, i32 1
  %193 = call i32 @mutex_unlock(i32* %192)
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %187, %170, %36, %23
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32* @kmap(%struct.page*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @hfsplus_mark_mdb_dirty(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
