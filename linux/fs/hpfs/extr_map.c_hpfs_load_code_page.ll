; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_load_code_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_load_code_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.code_page_data = type { i32* }
%struct.code_page_directory = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CP_DIR_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Code page directory magic doesn't match (magic = %08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"n_code_pages == 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Code page index out of array\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Code page index out of sector\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"out of memory for code page table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpfs_load_code_page(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.code_page_data*, align 8
  %13 = alloca %struct.code_page_directory*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i8* @hpfs_map_sector(%struct.super_block* %14, i64 %15, %struct.buffer_head** %6, i32 0)
  %17 = bitcast i8* %16 to %struct.code_page_directory*
  store %struct.code_page_directory* %17, %struct.code_page_directory** %13, align 8
  %18 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %19 = icmp ne %struct.code_page_directory* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %169

21:                                               ; preds = %2
  %22 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %23 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load i64, i64* @CP_DIR_MAGIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %30 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = call i32 @brelse(%struct.buffer_head* %34)
  store i8* null, i8** %3, align 8
  br label %169

36:                                               ; preds = %21
  %37 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %38 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = call i32 @brelse(%struct.buffer_head* %44)
  store i8* null, i8** %3, align 8
  br label %169

46:                                               ; preds = %36
  %47 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %48 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %55 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %62 = call i32 @brelse(%struct.buffer_head* %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp uge i32 %63, 3
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %169

67:                                               ; preds = %46
  %68 = load %struct.super_block*, %struct.super_block** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i8* @hpfs_map_sector(%struct.super_block* %68, i64 %69, %struct.buffer_head** %6, i32 0)
  %71 = bitcast i8* %70 to %struct.code_page_data*
  store %struct.code_page_data* %71, %struct.code_page_data** %12, align 8
  %72 = icmp ne %struct.code_page_data* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i8* null, i8** %3, align 8
  br label %169

74:                                               ; preds = %67
  %75 = load %struct.code_page_data*, %struct.code_page_data** %12, align 8
  %76 = getelementptr inbounds %struct.code_page_data, %struct.code_page_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = icmp sgt i32 %82, 376
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %87 = call i32 @brelse(%struct.buffer_head* %86)
  store i8* null, i8** %3, align 8
  br label %169

88:                                               ; preds = %74
  %89 = load %struct.code_page_data*, %struct.code_page_data** %12, align 8
  %90 = bitcast %struct.code_page_data* %89 to i8*
  %91 = load %struct.code_page_data*, %struct.code_page_data** %12, align 8
  %92 = getelementptr inbounds %struct.code_page_data, %struct.code_page_data* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %90, i64 %99
  %101 = getelementptr inbounds i8, i8* %100, i64 6
  store i8* %101, i8** %9, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kmalloc(i32 256, i32 %102)
  store i8* %103, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %88
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %108 = call i32 @brelse(%struct.buffer_head* %107)
  store i8* null, i8** %3, align 8
  br label %169

109:                                              ; preds = %88
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @memcpy(i8* %110, i8* %111, i32 128)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  store i32 128, i32* %11, align 4
  br label %115

115:                                              ; preds = %125, %109
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 256
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 %120, i8* %124, align 1
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %115

128:                                              ; preds = %115
  store i32 128, i32* %11, align 4
  br label %129

129:                                              ; preds = %164, %128
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 256
  br i1 %131, label %132, label %167

132:                                              ; preds = %129
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %134, 128
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %132
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, 128
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp sge i32 %149, 128
  br i1 %150, label %151, label %163

151:                                              ; preds = %142
  %152 = load i32, i32* %11, align 4
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %10, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, 128
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds i8, i8* %154, i64 %161
  store i8 %153, i8* %162, align 1
  br label %163

163:                                              ; preds = %151, %142, %132
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %129

167:                                              ; preds = %129
  %168 = load i8*, i8** %10, align 8
  store i8* %168, i8** %3, align 8
  br label %169

169:                                              ; preds = %167, %105, %84, %73, %65, %42, %28, %20
  %170 = load i8*, i8** %3, align 8
  ret i8* %170
}

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
