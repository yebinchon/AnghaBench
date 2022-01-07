; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_itree_common.c_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_itree_common.c_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DEPTH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @DEPTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @DEPTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca %struct.TYPE_7__, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @block_to_path(%struct.inode* %25, i32 %26, i32* %21)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %77

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %130, %31
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call %struct.TYPE_7__* @get_branch(%struct.inode* %33, i32 %34, i32* %21, %struct.TYPE_7__* %24, i32* %9)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %13, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %116, %38
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @block_to_cpu(i32 %49)
  %51 = call i32 @map_bh(%struct.buffer_head* %40, i32 %43, i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 -1
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %13, align 8
  br label %65

56:                                               ; preds = %32
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %108, %64, %39
  br label %66

66:                                               ; preds = %69, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %68 = icmp ugt %struct.TYPE_7__* %67, %24
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @brelse(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 -1
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %13, align 8
  br label %66

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %30
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78

80:                                               ; preds = %59
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %119

86:                                               ; preds = %80
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %91 = ptrtoint %struct.TYPE_7__* %89 to i64
  %92 = ptrtoint %struct.TYPE_7__* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = ptrtoint %struct.TYPE_7__* %98 to i64
  %100 = ptrtoint %struct.TYPE_7__* %24 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 8
  %103 = getelementptr inbounds i32, i32* %21, i64 %102
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = call i32 @alloc_branch(%struct.inode* %96, i32 %97, i32* %103, %struct.TYPE_7__* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %86
  br label %65

109:                                              ; preds = %86
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i64 @splice_branch(%struct.inode* %110, %struct.TYPE_7__* %24, %struct.TYPE_7__* %111, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %119

116:                                              ; preds = %109
  %117 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %118 = call i32 @set_buffer_new(%struct.buffer_head* %117)
  br label %39

119:                                              ; preds = %115, %85
  br label %120

120:                                              ; preds = %123, %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %122 = icmp ugt %struct.TYPE_7__* %121, %24
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @brelse(i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 -1
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %13, align 8
  br label %120

130:                                              ; preds = %120
  br label %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @block_to_path(%struct.inode*, i32, i32*) #2

declare dso_local %struct.TYPE_7__* @get_branch(%struct.inode*, i32, i32*, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #2

declare dso_local i32 @block_to_cpu(i32) #2

declare dso_local i32 @brelse(i32) #2

declare dso_local i32 @alloc_branch(%struct.inode*, i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i64 @splice_branch(%struct.inode*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
