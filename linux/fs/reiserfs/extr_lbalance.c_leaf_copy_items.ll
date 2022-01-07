; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_copy_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_copy_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"vs-10210: !dest || !src\00", align 1
@FIRST_TO_LAST = common dso_local global i32 0, align 4
@LAST_TO_FIRST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"vs-10220:last_first != FIRST_TO_LAST && last_first != LAST_TO_FIRST\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"vs-10230: No enough items: %d, req. %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"vs-10240: cpy_num < 0 (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_info*, %struct.buffer_head*, i32, i32, i32)* @leaf_copy_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_copy_items(%struct.buffer_info* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.buffer_info* %0, %struct.buffer_info** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %18 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %17, i32 0, i32 0
  %19 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  store %struct.buffer_head* %19, %struct.buffer_head** %12, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %5
  %27 = phi i1 [ true, %5 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @RFALSE(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FIRST_TO_LAST, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @LAST_TO_FIRST, align 4
  %36 = icmp ne i32 %34, %35
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i1 [ false, %26 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @RFALSE(i32 %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = call i32 @B_NR_ITEMS(%struct.buffer_head* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = call i32 @B_NR_ITEMS(%struct.buffer_head* %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i32, i8*, ...) @RFALSE(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, i8*, ...) @RFALSE(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %166

58:                                               ; preds = %37
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @FIRST_TO_LAST, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %112

62:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %16, align 4
  br label %68

67:                                               ; preds = %62
  store i32 -1, i32* %16, align 4
  br label %68

68:                                               ; preds = %67, %65
  %69 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = load i32, i32* @FIRST_TO_LAST, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @leaf_copy_boundary_item(%struct.buffer_info* %69, %struct.buffer_head* %70, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %166

81:                                               ; preds = %68
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = load i32, i32* @FIRST_TO_LAST, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @leaf_copy_items_entirely(%struct.buffer_info* %88, %struct.buffer_head* %89, i32 %90, i32 %91, i32 %92)
  br label %111

94:                                               ; preds = %81
  %95 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %97 = load i32, i32* @FIRST_TO_LAST, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @leaf_copy_items_entirely(%struct.buffer_info* %95, %struct.buffer_head* %96, i32 %97, i32 %98, i32 %100)
  %102 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %104 = load i32, i32* @FIRST_TO_LAST, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %105, %106
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @leaf_item_bottle(%struct.buffer_info* %102, %struct.buffer_head* %103, i32 %104, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %94, %87
  br label %164

112:                                              ; preds = %58
  %113 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %114 = call i32 @B_NR_ITEMS(%struct.buffer_head* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %16, align 4
  br label %120

119:                                              ; preds = %112
  store i32 -1, i32* %16, align 4
  br label %120

120:                                              ; preds = %119, %117
  %121 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %123 = load i32, i32* @LAST_TO_FIRST, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @leaf_copy_boundary_item(%struct.buffer_info* %121, %struct.buffer_head* %122, i32 %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %6, align 4
  br label %166

133:                                              ; preds = %120
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %144 = load i32, i32* @LAST_TO_FIRST, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @leaf_copy_items_entirely(%struct.buffer_info* %142, %struct.buffer_head* %143, i32 %144, i32 %145, i32 %146)
  br label %163

148:                                              ; preds = %133
  %149 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %151 = load i32, i32* @LAST_TO_FIRST, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 %154, 1
  %156 = call i32 @leaf_copy_items_entirely(%struct.buffer_info* %149, %struct.buffer_head* %150, i32 %151, i32 %153, i32 %155)
  %157 = load %struct.buffer_info*, %struct.buffer_info** %7, align 8
  %158 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %159 = load i32, i32* @LAST_TO_FIRST, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @leaf_item_bottle(%struct.buffer_info* %157, %struct.buffer_head* %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %148, %141
  br label %164

164:                                              ; preds = %163, %111
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %164, %131, %79, %57
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @leaf_copy_boundary_item(%struct.buffer_info*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @leaf_copy_items_entirely(%struct.buffer_info*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @leaf_item_bottle(%struct.buffer_info*, %struct.buffer_head*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
