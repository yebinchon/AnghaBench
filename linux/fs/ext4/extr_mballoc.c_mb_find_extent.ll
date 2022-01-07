; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_find_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_find_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i8*, i32, i32 }
%struct.ext4_free_extent = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [80 x i8] c"corruption or bug in mb_find_extent block=%d, order=%d needed=%d ex=%u/%d/%d@%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_buddy*, i32, i32, %struct.ext4_free_extent*)* @mb_find_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_find_extent(%struct.ext4_buddy* %0, i32 %1, i32 %2, %struct.ext4_free_extent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_buddy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_free_extent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ext4_free_extent* %3, %struct.ext4_free_extent** %9, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %19 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ext4_group_lock_ptr(i32 %17, i32 %20)
  %22 = call i32 @assert_spin_locked(i32 %21)
  %23 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %24 = icmp eq %struct.ext4_free_extent* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %28 = call i8* @mb_find_buddy(%struct.ext4_buddy* %27, i32 0, i32* %11)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i64 @mb_test_bit(i32 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %4
  %43 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %44 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %46 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %48 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %177

49:                                               ; preds = %4
  %50 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mb_find_order_for_block(%struct.ext4_buddy* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %59 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %60, %61
  %63 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %64 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %66 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %69 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %72 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %77 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %82 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %117, %49
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %88 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i8* @mb_find_buddy(%struct.ext4_buddy* %92, i32 %93, i32* %11)
  %95 = icmp ne i8* %94, null
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ false, %85 ], [ %95, %91 ]
  br i1 %97, label %98, label %130

98:                                               ; preds = %96
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %130

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %12, align 4
  %108 = shl i32 1, %107
  %109 = mul nsw i32 %106, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %112 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @mb_test_bit(i32 %110, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %130

117:                                              ; preds = %104
  %118 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @mb_find_order_for_block(%struct.ext4_buddy* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 1, %124
  %126 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %127 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %85

130:                                              ; preds = %116, %103, %96
  %131 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %132 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %135 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %140 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @EXT4_CLUSTERS_PER_GROUP(i32 %141)
  %143 = icmp sgt i64 %138, %142
  br i1 %143, label %144, label %173

144:                                              ; preds = %130
  %145 = call i32 @WARN_ON(i32 1)
  %146 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %147 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %153 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %156 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %160 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %164 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ext4_error(i32 %148, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150, i32 %151, i32 %154, i64 %158, i64 %162, i32 %165)
  %167 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %168 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  %169 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %170 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  %171 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %172 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %171, i32 0, i32 2
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %144, %130
  %174 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %175 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %42
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @ext4_group_lock_ptr(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @mb_find_buddy(%struct.ext4_buddy*, i32, i32*) #1

declare dso_local i64 @mb_test_bit(i32, i8*) #1

declare dso_local i32 @mb_find_order_for_block(%struct.ext4_buddy*, i32) #1

declare dso_local i64 @EXT4_CLUSTERS_PER_GROUP(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i32, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
