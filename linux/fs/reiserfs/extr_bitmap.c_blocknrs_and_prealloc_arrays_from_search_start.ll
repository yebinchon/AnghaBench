; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_blocknrs_and_prealloc_arrays_from_search_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_blocknrs_and_prealloc_arrays_from_search_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_12__ = type { i32 }

@QUOTA_EXCEEDED = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64*, i32)* @blocknrs_and_prealloc_arrays_from_search_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blocknrs_and_prealloc_arrays_from_search_start(%struct.TYPE_13__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %23)
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = call i32 @determine_prealloc_size(%struct.TYPE_13__* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %3
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dquot_alloc_block_nodirty(%struct.TYPE_15__* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.super_block*, %struct.super_block** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %43, i32 %44)
  %46 = load i32, i32* @QUOTA_EXCEEDED, align 4
  store i32 %46, i32* %4, align 4
  br label %213

47:                                               ; preds = %32
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dquot_prealloc_block_nodirty(%struct.TYPE_15__* %60, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %57
  br label %73

73:                                               ; preds = %72, %52, %47
  %74 = load %struct.super_block*, %struct.super_block** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %3
  br label %78

78:                                               ; preds = %148, %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  switch i32 %79, label %99 [
    i32 0, label %81
    i32 1, label %88
    i32 2, label %95
  ]

81:                                               ; preds = %78
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %9, align 8
  %85 = load %struct.super_block*, %struct.super_block** %8, align 8
  %86 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %85)
  %87 = sub nsw i64 %86, 1
  store i64 %87, i64* %10, align 8
  br label %147

88:                                               ; preds = %78
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  br label %147

95:                                               ; preds = %78
  store i64 0, i64* %9, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %10, align 8
  br label %147

99:                                               ; preds = %78
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %99
  %105 = load %struct.super_block*, %struct.super_block** %8, align 8
  %106 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @dquot_free_block_nodirty(%struct.TYPE_15__* %109, i32 %116)
  %118 = load %struct.super_block*, %struct.super_block** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %118, i32 %119)
  br label %121

121:                                              ; preds = %104, %99
  br label %122

122:                                              ; preds = %126, %121
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %12, align 4
  %125 = icmp ne i32 %123, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @reiserfs_free_block(%struct.TYPE_14__* %129, %struct.TYPE_15__* %132, i64 %137, i32 %143)
  br label %122

145:                                              ; preds = %122
  %146 = load i32, i32* @NO_DISK_SPACE, align 4
  store i32 %146, i32* %4, align 4
  br label %213

147:                                              ; preds = %95, %88, %81
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = load i64*, i64** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %12, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @allocate_without_wrapping_disk(%struct.TYPE_13__* %149, i64* %153, i64 %154, i64 %155, i32 1, i32 %158, i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %78, label %167

167:                                              ; preds = %148
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %211, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = call %struct.TYPE_12__* @REISERFS_I(%struct.TYPE_15__* %181)
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %178, %184
  %186 = icmp sgt i32 %177, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %172
  %188 = load %struct.super_block*, %struct.super_block** %8, align 8
  %189 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %188)
  store i32 %189, i32* %13, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  %198 = load i32, i32* %12, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = call %struct.TYPE_12__* @REISERFS_I(%struct.TYPE_15__* %202)
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %199, %205
  %207 = call i32 @dquot_free_block_nodirty(%struct.TYPE_15__* %192, i32 %206)
  %208 = load %struct.super_block*, %struct.super_block** %8, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %208, i32 %209)
  br label %211

211:                                              ; preds = %187, %172, %167
  %212 = load i32, i32* @CARRY_ON, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %145, %42
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i32 @determine_prealloc_size(%struct.TYPE_13__*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @dquot_alloc_block_nodirty(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local i32 @dquot_prealloc_block_nodirty(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dquot_free_block_nodirty(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @reiserfs_free_block(%struct.TYPE_14__*, %struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @allocate_without_wrapping_disk(%struct.TYPE_13__*, i64*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @REISERFS_I(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
