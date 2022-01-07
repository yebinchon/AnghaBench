; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_good_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_good_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_context = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ext4_group_info = type { i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXT4_MB_HINT_DATA = common dso_local global i32 0, align 4
@EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_allocation_context*, i32, i32)* @ext4_mb_good_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_good_group(%struct.ext4_allocation_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_allocation_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_group_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ext4_allocation_context* %0, %struct.ext4_allocation_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call i32 @EXT4_SB(%struct.TYPE_6__* %15)
  %17 = call i32 @ext4_flex_bg_size(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.TYPE_6__* %20, i32 %21)
  store %struct.ext4_group_info* %22, %struct.ext4_group_info** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ true, %3 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %33 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %159

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 2
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %44 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %159

49:                                               ; preds = %41, %38
  %50 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %51 = call i32 @EXT4_MB_GRP_BBITMAP_CORRUPT(%struct.ext4_group_info* %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %159

55:                                               ; preds = %49
  %56 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %57 = call i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info* %56)
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %62 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @GFP_NOFS, align 4
  %66 = call i32 @ext4_mb_init_group(%struct.TYPE_6__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %159

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %74 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %159

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %156 [
    i32 0, label %81
    i32 1, label %135
    i32 2, label %146
    i32 3, label %155
  ]

81:                                               ; preds = %79
  %82 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %83 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %89 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @EXT4_MB_HINT_DATA, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %81
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %10, align 4
  %101 = srem i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %159

104:                                              ; preds = %98, %94, %81
  %105 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %106 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %109 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %108, i32 0, i32 3
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  %114 = icmp sgt i32 %107, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = udiv i32 %116, %117
  %119 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %120 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp uge i32 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115, %104
  store i32 1, i32* %4, align 4
  br label %159

125:                                              ; preds = %115
  %126 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %127 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %130 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %159

134:                                              ; preds = %125
  store i32 1, i32* %4, align 4
  br label %159

135:                                              ; preds = %79
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = udiv i32 %136, %137
  %139 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %140 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp uge i32 %138, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i32 1, i32* %4, align 4
  br label %159

145:                                              ; preds = %135
  br label %158

146:                                              ; preds = %79
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %149 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp uge i32 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store i32 1, i32* %4, align 4
  br label %159

154:                                              ; preds = %146
  br label %158

155:                                              ; preds = %79
  store i32 1, i32* %4, align 4
  br label %159

156:                                              ; preds = %79
  %157 = call i32 (...) @BUG()
  br label %158

158:                                              ; preds = %156, %154, %145
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %155, %153, %144, %134, %133, %124, %103, %78, %69, %54, %48, %37
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ext4_flex_bg_size(i32) #1

declare dso_local i32 @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_MB_GRP_BBITMAP_CORRUPT(%struct.ext4_group_info*) #1

declare dso_local i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info*) #1

declare dso_local i32 @ext4_mb_init_group(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
