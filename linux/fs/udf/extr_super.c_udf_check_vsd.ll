; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_check_vsd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_check_vsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.volStructDesc = type { i32 }
%struct.buffer_head = type { i64 }
%struct.udf_sb_info = type { i32 }

@VSD_FIRST_SECTOR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Starting at sector %u (%lu byte sectors)\0A\00", align 1
@VSD_MAX_SECTOR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @udf_check_vsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_check_vsd(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.volStructDesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.udf_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.volStructDesc* null, %struct.volStructDesc** %4, align 8
  %10 = load i32, i32* @VSD_FIRST_SECTOR_OFFSET, align 4
  store i32 %10, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %11)
  store %struct.udf_sb_info* %12, %struct.udf_sb_info** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %25 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @udf_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %98, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VSD_MAX_SECTOR_OFFSET, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %102

51:                                               ; preds = %49
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %53, %56
  %58 = call %struct.buffer_head* @udf_tread(%struct.super_block* %52, i32 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %7, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %102

62:                                               ; preds = %51
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.super_block*, %struct.super_block** %3, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %65, %72
  %74 = inttoptr i64 %73 to %struct.volStructDesc*
  store %struct.volStructDesc* %74, %struct.volStructDesc** %4, align 8
  %75 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %76 = call i32 @identify_vsd(%struct.volStructDesc* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %62
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  br label %102

82:                                               ; preds = %62
  %83 = load %struct.super_block*, %struct.super_block** %3, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 4096
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.volStructDesc*, %struct.volStructDesc** %4, align 8
  %89 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %88, i64 1
  %90 = call i32 @identify_vsd(%struct.volStructDesc* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %87
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %42

102:                                              ; preds = %79, %61, %49
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %123

106:                                              ; preds = %102
  %107 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %108 = icmp ne %struct.buffer_head* %107, null
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %112 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.super_block*, %struct.super_block** %3, align 8
  %115 = getelementptr inbounds %struct.super_block, %struct.super_block* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %113, %116
  %118 = sub nsw i32 %110, %117
  %119 = load i32, i32* @VSD_FIRST_SECTOR_OFFSET, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 -1, i32* %2, align 4
  br label %123

122:                                              ; preds = %109, %106
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %121, %105
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, i32, i32) #1

declare dso_local %struct.buffer_head* @udf_tread(%struct.super_block*, i32) #1

declare dso_local i32 @identify_vsd(%struct.volStructDesc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
