; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_print_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_print_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.block_head = type { i32 }
%struct.item_head = type { i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"\0A===================================================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"LEAF NODE (%ld) contains %z\0A\00", align 1
@PRINT_LEAF_ITEMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"FIRST ITEM_KEY: %k, LAST ITEM KEY: %k\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"|##|   type    |           key           | ilen | free_space | version | loc  |\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"|%2d| %h |\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"===================================================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, i32, i32, i32)* @print_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_leaf(%struct.buffer_head* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.block_head*, align 8
  %11 = alloca %struct.item_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = bitcast %struct.buffer_head* %16 to %struct.item_head*
  %18 = call i32 @B_IS_ITEMS_LEVEL(%struct.item_head* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %114

21:                                               ; preds = %4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %23 = bitcast %struct.buffer_head* %22 to %struct.item_head*
  %24 = call i32 @check_leaf(%struct.item_head* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = bitcast %struct.buffer_head* %25 to %struct.item_head*
  %27 = call %struct.block_head* @B_BLK_HEAD(%struct.item_head* %26)
  store %struct.block_head* %27, %struct.block_head** %10, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %29 = bitcast %struct.buffer_head* %28 to %struct.item_head*
  %30 = call %struct.item_head* @item_head(%struct.item_head* %29, i32 0)
  store %struct.item_head* %30, %struct.item_head** %11, align 8
  %31 = load %struct.block_head*, %struct.block_head** %10, align 8
  %32 = call i32 @blkh_nr_item(%struct.block_head* %31)
  store i32 %32, i32* %13, align 4
  %33 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = bitcast %struct.buffer_head* %37 to %struct.item_head*
  %39 = call i32 @reiserfs_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %36, %struct.item_head* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PRINT_LEAF_ITEMS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %21
  %45 = load %struct.item_head*, %struct.item_head** %11, align 8
  %46 = getelementptr inbounds %struct.item_head, %struct.item_head* %45, i32 0, i32 1
  %47 = ptrtoint i32* %46 to i32
  %48 = load %struct.item_head*, %struct.item_head** %11, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.item_head, %struct.item_head* %48, i64 %50
  %52 = getelementptr inbounds %struct.item_head, %struct.item_head* %51, i64 -1
  %53 = getelementptr inbounds %struct.item_head, %struct.item_head* %52, i32 0, i32 1
  %54 = bitcast i32* %53 to %struct.item_head*
  %55 = call i32 @reiserfs_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %47, %struct.item_head* %54)
  store i32 0, i32* %5, align 4
  br label %114

56:                                               ; preds = %21
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %56
  store i32 0, i32* %14, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %15, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.item_head*, %struct.item_head** %11, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds %struct.item_head, %struct.item_head* %80, i64 %81
  store %struct.item_head* %82, %struct.item_head** %11, align 8
  %83 = call i32 @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %107, %78
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = call i32 @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.item_head*, %struct.item_head** %11, align 8
  %94 = call i32 @reiserfs_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %92, %struct.item_head* %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PRINT_LEAF_ITEMS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.item_head*, %struct.item_head** %11, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %102 = bitcast %struct.buffer_head* %101 to %struct.item_head*
  %103 = load %struct.item_head*, %struct.item_head** %11, align 8
  %104 = call i32 @ih_item_body(%struct.item_head* %102, %struct.item_head* %103)
  %105 = call i32 @op_print_item(%struct.item_head* %100, i32 %104)
  br label %106

106:                                              ; preds = %99, %90
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load %struct.item_head*, %struct.item_head** %11, align 8
  %111 = getelementptr inbounds %struct.item_head, %struct.item_head* %110, i32 1
  store %struct.item_head* %111, %struct.item_head** %11, align 8
  br label %86

112:                                              ; preds = %86
  %113 = call i32 @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %44, %20
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @B_IS_ITEMS_LEVEL(%struct.item_head*) #1

declare dso_local i32 @check_leaf(%struct.item_head*) #1

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.item_head*) #1

declare dso_local %struct.item_head* @item_head(%struct.item_head*, i32) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @reiserfs_printk(i8*, i32, %struct.item_head*) #1

declare dso_local i32 @op_print_item(%struct.item_head*, i32) #1

declare dso_local i32 @ih_item_body(%struct.item_head*, %struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
