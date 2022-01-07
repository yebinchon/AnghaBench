; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_fadvise.c_generic_fadvise.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_fadvise.c_generic_fadvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32 }
%struct.file = type { i32, i32, %struct.TYPE_2__, %struct.address_space* }
%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i32 }
%struct.inode = type { i32, i32 }

@ESPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@noop_backing_dev_info = common dso_local global %struct.backing_dev_info zeroinitializer, align 4
@FMODE_RANDOM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_fadvise(%struct.file* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.backing_dev_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = call %struct.inode* @file_inode(%struct.file* %18)
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISFIFO(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ESPIPE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %219

28:                                               ; preds = %4
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 3
  %31 = load %struct.address_space*, %struct.address_space** %30, align 8
  store %struct.address_space* %31, %struct.address_space** %11, align 8
  %32 = load %struct.address_space*, %struct.address_space** %11, align 8
  %33 = icmp ne %struct.address_space* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %219

40:                                               ; preds = %34
  %41 = load %struct.address_space*, %struct.address_space** %11, align 8
  %42 = getelementptr inbounds %struct.address_space, %struct.address_space* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.backing_dev_info* @inode_to_bdi(i32 %43)
  store %struct.backing_dev_info* %44, %struct.backing_dev_info** %12, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i64 @IS_DAX(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  %50 = icmp eq %struct.backing_dev_info* %49, @noop_backing_dev_info
  br i1 %50, label %51, label %58

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %54 [
    i32 131, label %53
    i32 130, label %53
    i32 129, label %53
    i32 128, label %53
    i32 132, label %53
    i32 133, label %53
  ]

53:                                               ; preds = %51, %51, %51, %51, %51, %51
  br label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %219

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %219

58:                                               ; preds = %48
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %58
  store i64 -1, i64* %13, align 8
  br label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32, i32* %9, align 4
  switch i32 %73, label %215 [
    i32 131, label %74
    i32 130, label %93
    i32 129, label %105
    i32 128, label %125
    i32 132, label %145
    i32 133, label %146
  ]

74:                                               ; preds = %72
  %75 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  %76 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.file*, %struct.file** %6, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.file*, %struct.file** %6, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load i32, i32* @FMODE_RANDOM, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.file*, %struct.file** %6, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.file*, %struct.file** %6, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %218

93:                                               ; preds = %72
  %94 = load %struct.file*, %struct.file** %6, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load i32, i32* @FMODE_RANDOM, align 4
  %98 = load %struct.file*, %struct.file** %6, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %218

105:                                              ; preds = %72
  %106 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  %107 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 2
  %110 = load %struct.file*, %struct.file** %6, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.file*, %struct.file** %6, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load i32, i32* @FMODE_RANDOM, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.file*, %struct.file** %6, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.file*, %struct.file** %6, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  br label %218

125:                                              ; preds = %72
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @PAGE_SHIFT, align 8
  %128 = ashr i64 %126, %127
  store i64 %128, i64* %14, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* @PAGE_SHIFT, align 8
  %131 = ashr i64 %129, %130
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %14, align 8
  %134 = sub nsw i64 %132, %133
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %16, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %125
  store i64 -1, i64* %16, align 8
  br label %139

139:                                              ; preds = %138, %125
  %140 = load %struct.address_space*, %struct.address_space** %11, align 8
  %141 = load %struct.file*, %struct.file** %6, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call i32 @force_page_cache_readahead(%struct.address_space* %140, %struct.file* %141, i64 %142, i64 %143)
  br label %218

145:                                              ; preds = %72
  br label %218

146:                                              ; preds = %72
  %147 = load %struct.address_space*, %struct.address_space** %11, align 8
  %148 = getelementptr inbounds %struct.address_space, %struct.address_space* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @inode_write_congested(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.address_space*, %struct.address_space** %11, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i32, i32* @WB_SYNC_NONE, align 4
  %157 = call i32 @__filemap_fdatawrite_range(%struct.address_space* %153, i64 %154, i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load i64, i64* %7, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %159, %162
  %164 = load i64, i64* @PAGE_SHIFT, align 8
  %165 = ashr i64 %163, %164
  store i64 %165, i64* %14, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* @PAGE_SHIFT, align 8
  %168 = ashr i64 %166, %167
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* @PAGE_MASK, align 8
  %171 = xor i64 %170, -1
  %172 = and i64 %169, %171
  %173 = load i64, i64* @PAGE_MASK, align 8
  %174 = xor i64 %173, -1
  %175 = icmp ne i64 %172, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %158
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.inode*, %struct.inode** %10, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = icmp ne i64 %177, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %176
  %185 = load i64, i64* %15, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %218

188:                                              ; preds = %184
  %189 = load i64, i64* %15, align 8
  %190 = add nsw i64 %189, -1
  store i64 %190, i64* %15, align 8
  br label %191

191:                                              ; preds = %188, %176, %158
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* %14, align 8
  %194 = icmp sge i64 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %191
  %196 = call i32 (...) @lru_add_drain()
  %197 = load %struct.address_space*, %struct.address_space** %11, align 8
  %198 = load i64, i64* %14, align 8
  %199 = load i64, i64* %15, align 8
  %200 = call i64 @invalidate_mapping_pages(%struct.address_space* %197, i64 %198, i64 %199)
  store i64 %200, i64* %17, align 8
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load i64, i64* %14, align 8
  %204 = sub nsw i64 %202, %203
  %205 = add nsw i64 %204, 1
  %206 = icmp ult i64 %201, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %195
  %208 = call i32 (...) @lru_add_drain_all()
  %209 = load %struct.address_space*, %struct.address_space** %11, align 8
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* %15, align 8
  %212 = call i64 @invalidate_mapping_pages(%struct.address_space* %209, i64 %210, i64 %211)
  br label %213

213:                                              ; preds = %207, %195
  br label %214

214:                                              ; preds = %213, %191
  br label %218

215:                                              ; preds = %72
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %5, align 4
  br label %219

218:                                              ; preds = %214, %187, %145, %139, %105, %93, %74
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %218, %215, %57, %54, %37, %25
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local %struct.backing_dev_info* @inode_to_bdi(i32) #1

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @force_page_cache_readahead(%struct.address_space*, %struct.file*, i64, i64) #1

declare dso_local i32 @inode_write_congested(i32) #1

declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space*, i64, i64, i32) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i64 @invalidate_mapping_pages(%struct.address_space*, i64, i64) #1

declare dso_local i32 @lru_add_drain_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
