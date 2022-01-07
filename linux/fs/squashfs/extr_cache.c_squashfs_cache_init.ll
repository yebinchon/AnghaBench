; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_cache = type { i32, i32, i32, i32, i8*, %struct.squashfs_cache_entry*, i32, i32, i64, i64, i64 }
%struct.squashfs_cache_entry = type { i32*, i32**, i32, %struct.squashfs_cache*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate %s cache\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SQUASHFS_INVALID_BLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate %s cache entry\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to allocate %s buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.squashfs_cache* @squashfs_cache_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.squashfs_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.squashfs_cache*, align 8
  %11 = alloca %struct.squashfs_cache_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.squashfs_cache* @kzalloc(i32 64, i32 %12)
  store %struct.squashfs_cache* %13, %struct.squashfs_cache** %10, align 8
  %14 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %15 = icmp eq %struct.squashfs_cache* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17)
  store %struct.squashfs_cache* null, %struct.squashfs_cache** %4, align 8
  br label %174

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 40, i32 %21)
  %23 = bitcast i8* %22 to %struct.squashfs_cache_entry*
  %24 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %25 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %24, i32 0, i32 5
  store %struct.squashfs_cache_entry* %23, %struct.squashfs_cache_entry** %25, align 8
  %26 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %27 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %26, i32 0, i32 5
  %28 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %27, align 8
  %29 = icmp eq %struct.squashfs_cache_entry* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %171

33:                                               ; preds = %19
  %34 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %35 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %37 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %40 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %43 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %46 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %51 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %53 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %33
  %57 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %58 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 1, %60 ]
  %63 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %64 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %67 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %69 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %68, i32 0, i32 8
  store i64 0, i64* %69, align 8
  %70 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %71 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %70, i32 0, i32 7
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %74 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %73, i32 0, i32 6
  %75 = call i32 @init_waitqueue_head(i32* %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %166, %61
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %169

80:                                               ; preds = %76
  %81 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %82 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %81, i32 0, i32 5
  %83 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %83, i64 %85
  store %struct.squashfs_cache_entry* %86, %struct.squashfs_cache_entry** %11, align 8
  %87 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %88 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %87, i32 0, i32 5
  %89 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %89, i64 %91
  %93 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %92, i32 0, i32 4
  %94 = call i32 @init_waitqueue_head(i32* %93)
  %95 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %96 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %97 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %96, i32 0, i32 3
  store %struct.squashfs_cache* %95, %struct.squashfs_cache** %97, align 8
  %98 = load i32, i32* @SQUASHFS_INVALID_BLK, align 4
  %99 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %100 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %102 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @kcalloc(i32 %103, i32 8, i32 %104)
  %106 = bitcast i8* %105 to i32**
  %107 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %108 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %107, i32 0, i32 1
  store i32** %106, i32*** %108, align 8
  %109 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %110 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = icmp eq i32** %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %80
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %171

116:                                              ; preds = %80
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %120 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %117
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i32* @kmalloc(i32 %124, i32 %125)
  %127 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %128 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %126, i32** %132, align 8
  %133 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %134 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %123
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 @ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  br label %171

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %117

148:                                              ; preds = %117
  %149 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %150 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %153 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32* @squashfs_page_actor_init(i32** %151, i32 %154, i32 0)
  %156 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %157 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %156, i32 0, i32 0
  store i32* %155, i32** %157, align 8
  %158 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %159 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %148
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  br label %171

165:                                              ; preds = %148
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %76

169:                                              ; preds = %76
  %170 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  store %struct.squashfs_cache* %170, %struct.squashfs_cache** %4, align 8
  br label %174

171:                                              ; preds = %162, %141, %113, %30
  %172 = load %struct.squashfs_cache*, %struct.squashfs_cache** %10, align 8
  %173 = call i32 @squashfs_cache_delete(%struct.squashfs_cache* %172)
  store %struct.squashfs_cache* null, %struct.squashfs_cache** %4, align 8
  br label %174

174:                                              ; preds = %171, %169, %16
  %175 = load %struct.squashfs_cache*, %struct.squashfs_cache** %4, align 8
  ret %struct.squashfs_cache* %175
}

declare dso_local %struct.squashfs_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @ERROR(i8*, i8*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @squashfs_page_actor_init(i32**, i32, i32) #1

declare dso_local i32 @squashfs_cache_delete(%struct.squashfs_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
