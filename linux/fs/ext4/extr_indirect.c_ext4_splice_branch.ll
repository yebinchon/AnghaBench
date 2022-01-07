; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_splice_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_splice_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_request = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"splicing indirect only\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"splicing direct\0A\00", align 1
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_allocation_request*, %struct.TYPE_3__*, i32)* @ext4_splice_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_splice_branch(i32* %0, %struct.ext4_allocation_request* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ext4_allocation_request*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ext4_allocation_request* %1, %struct.ext4_allocation_request** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @BUFFER_TRACE(i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ext4_journal_get_write_access(i32* %22, i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %104

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %31
  %41 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %42 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le32_to_cpu(i32 %48)
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %12, align 8
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %68, %45
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %54 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  %60 = trunc i64 %58 to i32
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %51

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %40, %31
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @BUFFER_TRACE(i32* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %85 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @ext4_handle_dirty_metadata(i32* %83, i32 %86, i32* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  br label %104

94:                                               ; preds = %77
  br label %102

95:                                               ; preds = %72
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %98 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ext4_mark_inode_dirty(i32* %96, i32 %99)
  %101 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %95, %94
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %5, align 4
  br label %142

104:                                              ; preds = %93, %29
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %122, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %112 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %121 = call i32 @ext4_free_blocks(i32* %110, i32 %113, i32* %119, i64 0, i32 1, i32 %120)
  br label %122

122:                                              ; preds = %109
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %128 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @le32_to_cpu(i32 %135)
  %137 = load %struct.ext4_allocation_request*, %struct.ext4_allocation_request** %7, align 8
  %138 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ext4_free_blocks(i32* %126, i32 %129, i32* null, i64 %136, i32 %139, i32 0)
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %125, %102
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @BUFFER_TRACE(i32*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @jbd_debug(i32, i8*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32, i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, i32) #1

declare dso_local i32 @ext4_free_blocks(i32*, i32, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
