; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_entry_el.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_entry_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.ocfs2_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@NAMEI_RA_SIZE = common dso_local global i32 0, align 4
@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"reading directory %llu, offset %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i8*, i32, %struct.inode*, %struct.ocfs2_dir_entry**)* @ocfs2_find_entry_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ocfs2_find_entry_el(i8* %0, i32 %1, %struct.inode* %2, %struct.ocfs2_dir_entry** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_dir_entry**, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.ocfs2_dir_entry** %3, %struct.ocfs2_dir_entry*** %8, align 8
  %23 = load i32, i32* @NAMEI_RA_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca %struct.buffer_head*, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %9, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @i_size_read(%struct.inode* %30)
  %32 = load %struct.super_block*, %struct.super_block** %9, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %31, %34
  store i32 %35, i32* %20, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %171, %45
  br label %48

48:                                               ; preds = %154, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  %53 = load i64, i64* %15, align 8
  store i64 %53, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %86, %52
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @NAMEI_RA_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %54
  %59 = load i64, i64* %16, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %58
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %72
  store %struct.buffer_head* null, %struct.buffer_head** %73, align 8
  br label %89

74:                                               ; preds = %66, %63
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %16, align 8
  %80 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %81 = call i32 @ocfs2_read_dir_block(%struct.inode* %77, i64 %78, %struct.buffer_head** %12, i32 %80)
  store i32 %81, i32* %22, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %84
  store %struct.buffer_head* %82, %struct.buffer_head** %85, align 8
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %54

89:                                               ; preds = %70, %54
  br label %90

90:                                               ; preds = %89, %48
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %93
  %95 = load %struct.buffer_head*, %struct.buffer_head** %94, align 8
  store %struct.buffer_head* %95, %struct.buffer_head** %12, align 8
  %96 = icmp eq %struct.buffer_head* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %146

98:                                               ; preds = %90
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @ocfs2_read_dir_block(%struct.inode* %99, i64 %100, %struct.buffer_head** %12, i32 0)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* @ML_ERROR, align 4
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @mlog(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %109)
  br label %146

111:                                              ; preds = %98
  %112 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.super_block*, %struct.super_block** %9, align 8
  %118 = getelementptr inbounds %struct.super_block, %struct.super_block* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  %121 = shl i64 %116, %120
  %122 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.super_block*, %struct.super_block** %9, align 8
  %126 = getelementptr inbounds %struct.super_block, %struct.super_block* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ocfs2_dir_entry**, %struct.ocfs2_dir_entry*** %8, align 8
  %129 = call i32 @ocfs2_search_dirblock(%struct.buffer_head* %112, %struct.inode* %113, i8* %114, i32 %115, i64 %121, i32 %124, i32 %127, %struct.ocfs2_dir_entry** %128)
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %111
  %133 = load i64, i64* %15, align 8
  %134 = load %struct.inode*, %struct.inode** %7, align 8
  %135 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i64 %133, i64* %136, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %137, %struct.buffer_head** %13, align 8
  br label %173

138:                                              ; preds = %111
  %139 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %140 = call i32 @brelse(%struct.buffer_head* %139)
  %141 = load i32, i32* %21, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %173

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %103, %97
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %15, align 8
  %149 = load i32, i32* %20, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp uge i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i64 0, i64* %15, align 8
  br label %153

153:                                              ; preds = %152, %146
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %14, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %48, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %15, align 8
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = call i32 @i_size_read(%struct.inode* %161)
  %163 = load %struct.super_block*, %struct.super_block** %9, align 8
  %164 = getelementptr inbounds %struct.super_block, %struct.super_block* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %162, %165
  store i32 %166, i32* %20, align 4
  %167 = load i64, i64* %15, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %167, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %158
  store i64 0, i64* %14, align 8
  br label %47

172:                                              ; preds = %158
  br label %173

173:                                              ; preds = %172, %143, %132
  br label %174

174:                                              ; preds = %184, %173
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %180
  %182 = load %struct.buffer_head*, %struct.buffer_head** %181, align 8
  %183 = call i32 @brelse(%struct.buffer_head* %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %174

187:                                              ; preds = %174
  %188 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %189 = call i32 @trace_ocfs2_find_entry_el(%struct.buffer_head* %188)
  %190 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %191 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %191)
  ret %struct.buffer_head* %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i_size_read(%struct.inode*) #2

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #2

declare dso_local i32 @ocfs2_read_dir_block(%struct.inode*, i64, %struct.buffer_head**, i32) #2

declare dso_local i32 @mlog(i32, i8*, i64, i64) #2

declare dso_local i32 @ocfs2_search_dirblock(%struct.buffer_head*, %struct.inode*, i8*, i32, i64, i32, i32, %struct.ocfs2_dir_entry**) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @trace_ocfs2_find_entry_el(%struct.buffer_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
