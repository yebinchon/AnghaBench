; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_zeroed_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_zeroed_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, %struct.buffer_head**, i32)* @fat_zeroed_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_zeroed_cluster(%struct.inode* %0, i64 %1, i32 %2, %struct.buffer_head** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %12, align 8
  %22 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %124, %5
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %125

35:                                               ; preds = %31
  %36 = load %struct.super_block*, %struct.super_block** %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %36, i64 %37)
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %41
  store %struct.buffer_head* %38, %struct.buffer_head** %42, align 8
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %43, i64 %45
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %153

52:                                               ; preds = %35
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %53, i64 %55
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  %58 = call i32 @lock_buffer(%struct.buffer_head* %57)
  %59 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %59, i64 %61
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.super_block*, %struct.super_block** %12, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memset(i32 %65, i32 0, i32 %68)
  %70 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %70, i64 %72
  %74 = load %struct.buffer_head*, %struct.buffer_head** %73, align 8
  %75 = call i32 @set_buffer_uptodate(%struct.buffer_head* %74)
  %76 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %76, i64 %78
  %80 = load %struct.buffer_head*, %struct.buffer_head** %79, align 8
  %81 = call i32 @unlock_buffer(%struct.buffer_head* %80)
  %82 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %82, i64 %84
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %86, %struct.inode* %87)
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %8, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %52
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = call i64 @IS_DIRSYNC(%struct.inode* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @fat_sync_bhs(%struct.buffer_head** %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %153

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %96
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %120, %108
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %114, i64 %116
  %118 = load %struct.buffer_head*, %struct.buffer_head** %117, align 8
  %119 = call i32 @brelse(%struct.buffer_head* %118)
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %109

123:                                              ; preds = %109
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %52
  br label %31

125:                                              ; preds = %31
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = call i64 @IS_DIRSYNC(%struct.inode* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @fat_sync_bhs(%struct.buffer_head** %130, i32 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %153

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %125
  store i32 0, i32* %15, align 4
  br label %138

138:                                              ; preds = %149, %137
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 %145
  %147 = load %struct.buffer_head*, %struct.buffer_head** %146, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %138

152:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %170

153:                                              ; preds = %135, %106, %49
  store i32 0, i32* %15, align 4
  br label %154

154:                                              ; preds = %165, %153
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %159, i64 %161
  %163 = load %struct.buffer_head*, %struct.buffer_head** %162, align 8
  %164 = call i32 @bforget(%struct.buffer_head* %163)
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %154

168:                                              ; preds = %154
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %168, %152
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_bhs(%struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
