; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_remove_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_remove_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32 }
%struct.dquot = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read quota data block %u\00", align 1
@QT_TREEOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't write quota tree block %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, %struct.dquot*, i32*, i32)* @remove_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_tree(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtree_mem_dqinfo*, align 8
  %7 = alloca %struct.dquot*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %6, align 8
  store %struct.dquot* %1, %struct.dquot** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %16 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @getdqbuf(i32 %17)
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %13, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %147

26:                                               ; preds = %4
  %27 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %27, i32 %29, i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.dquot*, %struct.dquot** %7, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @quota_error(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %143

41:                                               ; preds = %26
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %44 = load %struct.dquot*, %struct.dquot** %7, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @get_index(%struct.qtree_mem_dqinfo* %43, i32 %46, i32 %47)
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %54 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %60 = load %struct.dquot*, %struct.dquot** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @free_dqentry(%struct.qtree_mem_dqinfo* %59, %struct.dquot* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %69

63:                                               ; preds = %41
  %64 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %65 = load %struct.dquot*, %struct.dquot** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @remove_tree(%struct.qtree_mem_dqinfo* %64, %struct.dquot* %65, i32* %12, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %11, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %142

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %142, label %75

75:                                               ; preds = %72
  %76 = call i32 @cpu_to_le32(i32 0)
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %79 = load %struct.dquot*, %struct.dquot** %7, align 8
  %80 = getelementptr inbounds %struct.dquot, %struct.dquot* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @get_index(%struct.qtree_mem_dqinfo* %78, i32 %81, i32 %82)
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  store i32 %76, i32* %84, align 4
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %103, %75
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %88 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 2
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %92, %85
  %101 = phi i1 [ false, %85 ], [ %99, %92 ]
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %85

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %109 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 2
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @QT_TREEOFF, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @put_free_dqblk(%struct.qtree_mem_dqinfo* %119, i8* %120, i32 %122)
  %124 = load i32*, i32** %8, align 8
  store i32 0, i32* %124, align 4
  br label %141

125:                                              ; preds = %113, %106
  %126 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %126, i32 %128, i8* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load %struct.dquot*, %struct.dquot** %7, align 8
  %135 = getelementptr inbounds %struct.dquot, %struct.dquot* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @quota_error(i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %133, %125
  br label %141

141:                                              ; preds = %140, %118
  br label %142

142:                                              ; preds = %141, %72, %69
  br label %143

143:                                              ; preds = %142, %34
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @kfree(i8* %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %23
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @quota_error(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @get_index(%struct.qtree_mem_dqinfo*, i32, i32) #1

declare dso_local i32 @free_dqentry(%struct.qtree_mem_dqinfo*, %struct.dquot*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_free_dqblk(%struct.qtree_mem_dqinfo*, i8*, i32) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
