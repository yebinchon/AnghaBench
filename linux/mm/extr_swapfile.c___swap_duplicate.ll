; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_duplicate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i8* }
%struct.swap_cluster_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SWAP_MAP_BAD = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@EEXIST = common dso_local global i32 0, align 4
@COUNT_CONTINUED = common dso_local global i8 0, align 1
@SWAP_MAP_MAX = common dso_local global i8 0, align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @__swap_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__swap_duplicate(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.swap_info_struct*, align 8
  %6 = alloca %struct.swap_cluster_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.swap_info_struct* @get_swap_device(i32 %13)
  store %struct.swap_info_struct* %14, %struct.swap_info_struct** %5, align 8
  %15 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %16 = icmp ne %struct.swap_info_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %151

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @swp_offset(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %21, i64 %22)
  store %struct.swap_cluster_info* %23, %struct.swap_cluster_info** %6, align 8
  %24 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %25 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %8, align 1
  %30 = load i8, i8* %8, align 1
  %31 = call i64 @swap_count(i8 zeroext %30)
  %32 = load i64, i64* @SWAP_MAP_BAD, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %147

40:                                               ; preds = %18
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %9, align 1
  %47 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, -1
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  store i32 0, i32* %10, align 4
  %54 = load i8, i8* %4, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %40
  %60 = load i8, i8* %9, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8, i8* @SWAP_HAS_CACHE, align 1
  store i8 %67, i8* %9, align 1
  br label %78

68:                                               ; preds = %62, %59
  %69 = load i8, i8* %9, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EEXIST, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %66
  br label %135

79:                                               ; preds = %40
  %80 = load i8, i8* %8, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %9, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %131

87:                                               ; preds = %83, %79
  %88 = load i8, i8* %8, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @COUNT_CONTINUED, align 1
  %91 = zext i8 %90 to i32
  %92 = xor i32 %91, -1
  %93 = and i32 %89, %92
  %94 = load i8, i8* @SWAP_MAP_MAX, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load i8, i8* %4, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %8, align 1
  br label %130

104:                                              ; preds = %87
  %105 = load i8, i8* %8, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @COUNT_CONTINUED, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, -1
  %110 = and i32 %106, %109
  %111 = load i8, i8* @SWAP_MAP_MAX, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  br label %129

117:                                              ; preds = %104
  %118 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i8, i8* %8, align 1
  %121 = call i64 @swap_count_continued(%struct.swap_info_struct* %118, i64 %119, i8 zeroext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i8, i8* @COUNT_CONTINUED, align 1
  store i8 %124, i8* %8, align 1
  br label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %125, %123
  br label %129

129:                                              ; preds = %128, %114
  br label %130

130:                                              ; preds = %129, %97
  br label %134

131:                                              ; preds = %83
  %132 = load i32, i32* @ENOENT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %130
  br label %135

135:                                              ; preds = %134, %78
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %9, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %137, %139
  %141 = trunc i32 %140 to i8
  %142 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %143 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8 %141, i8* %146, align 1
  br label %147

147:                                              ; preds = %135, %37
  %148 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %149 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %6, align 8
  %150 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %148, %struct.swap_cluster_info* %149)
  br label %151

151:                                              ; preds = %147, %17
  %152 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %153 = icmp ne %struct.swap_info_struct* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %156 = call i32 @put_swap_device(%struct.swap_info_struct* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local %struct.swap_info_struct* @get_swap_device(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @swap_count(i8 zeroext) #1

declare dso_local i64 @swap_count_continued(%struct.swap_info_struct*, i64, i8 zeroext) #1

declare dso_local i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct*, %struct.swap_cluster_info*) #1

declare dso_local i32 @put_swap_device(%struct.swap_info_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
