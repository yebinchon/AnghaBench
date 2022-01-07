; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_do_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_do_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_data_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"ino %lu, pg %lu, i_size %lld, flags %#lx\00", align 1
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UBIFS_MAX_DATA_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hole\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"cannot read page %lu of inode %lu, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @do_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_readpage(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_data_node*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_info*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %25, align 8
  store %struct.ubifs_info* %26, %struct.ubifs_info** %11, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i32 @i_size_read(%struct.inode* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = call i32 @PageChecked(%struct.page* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @ubifs_assert(%struct.ubifs_info* %40, i32 %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = call i32 @PagePrivate(%struct.page* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @ubifs_assert(%struct.ubifs_info* %47, i32 %52)
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i8* @kmap(%struct.page* %54)
  store i8* %55, i8** %4, align 8
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %1
  %71 = load %struct.page*, %struct.page** %3, align 8
  %72 = call i32 @SetPageChecked(%struct.page* %71)
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  br label %188

76:                                               ; preds = %1
  %77 = load i32, i32* @UBIFS_MAX_DATA_NODE_SZ, align 4
  %78 = load i32, i32* @GFP_NOFS, align 4
  %79 = call %struct.ubifs_data_node* @kmalloc(i32 %77, i32 %78)
  store %struct.ubifs_data_node* %79, %struct.ubifs_data_node** %9, align 8
  %80 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %81 = icmp ne %struct.ubifs_data_node* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %197

85:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %150
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp uge i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %95 = call i32 @memset(i8* %93, i32 0, i32 %94)
  br label %144

96:                                               ; preds = %86
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %101 = call i32 @read_block(%struct.inode* %97, i8* %98, i32 %99, %struct.ubifs_data_node* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %157

111:                                              ; preds = %104
  br label %143

112:                                              ; preds = %96
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 1
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %112
  %118 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %119 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %124 = sub nsw i32 %123, 1
  %125 = and i32 %122, %124
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %117
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr i8, i8* %133, i64 %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i32 @memset(i8* %136, i32 0, i32 %139)
  br label %141

141:                                              ; preds = %132, %128, %117
  br label %142

142:                                              ; preds = %141, %112
  br label %143

143:                                              ; preds = %142, %111
  br label %144

144:                                              ; preds = %143, %90
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %157

150:                                              ; preds = %144
  %151 = load i32, i32* %7, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %154 = load i8*, i8** %4, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr i8, i8* %154, i64 %155
  store i8* %156, i8** %4, align 8
  br label %86

157:                                              ; preds = %149, %110
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %157
  %161 = load %struct.inode*, %struct.inode** %10, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %164, align 8
  store %struct.ubifs_info* %165, %struct.ubifs_info** %16, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @ENOENT, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = load %struct.page*, %struct.page** %3, align 8
  %172 = call i32 @SetPageChecked(%struct.page* %171)
  %173 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %185

174:                                              ; preds = %160
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %16, align 8
  %176 = load %struct.page*, %struct.page** %3, align 8
  %177 = getelementptr inbounds %struct.page, %struct.page* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.inode*, %struct.inode** %10, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @ubifs_err(%struct.ubifs_info* %175, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %181, i32 %182)
  br label %197

184:                                              ; preds = %157
  br label %185

185:                                              ; preds = %184, %170
  %186 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %187 = call i32 @kfree(%struct.ubifs_data_node* %186)
  br label %188

188:                                              ; preds = %185, %70
  %189 = load %struct.page*, %struct.page** %3, align 8
  %190 = call i32 @SetPageUptodate(%struct.page* %189)
  %191 = load %struct.page*, %struct.page** %3, align 8
  %192 = call i32 @ClearPageError(%struct.page* %191)
  %193 = load %struct.page*, %struct.page** %3, align 8
  %194 = call i32 @flush_dcache_page(%struct.page* %193)
  %195 = load %struct.page*, %struct.page** %3, align 8
  %196 = call i32 @kunmap(%struct.page* %195)
  store i32 0, i32* %2, align 4
  br label %209

197:                                              ; preds = %174, %82
  %198 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %199 = call i32 @kfree(%struct.ubifs_data_node* %198)
  %200 = load %struct.page*, %struct.page** %3, align 8
  %201 = call i32 @ClearPageUptodate(%struct.page* %200)
  %202 = load %struct.page*, %struct.page** %3, align 8
  %203 = call i32 @SetPageError(%struct.page* %202)
  %204 = load %struct.page*, %struct.page** %3, align 8
  %205 = call i32 @flush_dcache_page(%struct.page* %204)
  %206 = load %struct.page*, %struct.page** %3, align 8
  %207 = call i32 @kunmap(%struct.page* %206)
  %208 = load i32, i32* %5, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %197, %188
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @PageChecked(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.ubifs_data_node* @kmalloc(i32, i32) #1

declare dso_local i32 @read_block(%struct.inode*, i8*, i32, %struct.ubifs_data_node*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_data_node*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
