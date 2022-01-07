; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_itree_common.c_alloc_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_itree_common.c_alloc_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i8*, %struct.buffer_head*, i8** }
%struct.buffer_head = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, %struct.TYPE_3__*)* @alloc_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_branch(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @minix_new_block(%struct.inode* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i8* @cpu_to_block(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %103

24:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %99, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i32 @minix_new_block(%struct.inode* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %102

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = call i8* @cpu_to_block(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call %struct.buffer_head* @sb_getblk(i32 %45, i32 %46)
  store %struct.buffer_head* %47, %struct.buffer_head** %13, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %49 = call i32 @lock_buffer(%struct.buffer_head* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memset(i64 %52, i32 0, i32 %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store %struct.buffer_head* %57, %struct.buffer_head** %62, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8**
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %66, i64 %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i8** %73, i8*** %78, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i8**, i8*** %89, align 8
  store i8* %84, i8** %90, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %92 = call i32 @set_buffer_uptodate(%struct.buffer_head* %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %94 = call i32 @unlock_buffer(%struct.buffer_head* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %95, %struct.inode* %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %35
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %25

102:                                              ; preds = %34, %25
  br label %103

103:                                              ; preds = %102, %4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %145

108:                                              ; preds = %103
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %121, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  %120 = call i32 @bforget(%struct.buffer_head* %119)
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %109

124:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @block_to_cpu(i8* %136)
  %138 = call i32 @minix_free_block(%struct.inode* %130, i32 %137)
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load i32, i32* @ENOSPC, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %107
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @minix_new_block(%struct.inode*) #1

declare dso_local i8* @cpu_to_block(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @minix_free_block(%struct.inode*, i32) #1

declare dso_local i32 @block_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
