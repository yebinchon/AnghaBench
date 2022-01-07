; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_tree_dqentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_tree_dqentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32 }
%struct.dquot = type { i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't read quota tree block %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qtree_mem_dqinfo*, %struct.dquot*, i32, i32)* @find_tree_dqentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_tree_dqentry(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.qtree_mem_dqinfo*, align 8
  %7 = alloca %struct.dquot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %6, align 8
  store %struct.dquot* %1, %struct.dquot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %14 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @getdqbuf(i32 %15)
  store i8* %16, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @ENOMEM, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %75

24:                                               ; preds = %4
  %25 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @read_blk(%struct.qtree_mem_dqinfo* %25, i32 %26, i8* %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.dquot*, %struct.dquot** %7, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @quota_error(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %71

37:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %40 = load %struct.dquot*, %struct.dquot** %7, align 8
  %41 = getelementptr inbounds %struct.dquot, %struct.dquot* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @get_index(%struct.qtree_mem_dqinfo* %39, i32 %42, i32 %43)
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  br label %71

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %54 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %60 = load %struct.dquot*, %struct.dquot** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i64 @find_tree_dqentry(%struct.qtree_mem_dqinfo* %59, %struct.dquot* %60, i32 %61, i32 %63)
  store i64 %64, i64* %11, align 8
  br label %70

65:                                               ; preds = %51
  %66 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %6, align 8
  %67 = load %struct.dquot*, %struct.dquot** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @find_block_dqentry(%struct.qtree_mem_dqinfo* %66, %struct.dquot* %67, i32 %68)
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %50, %31
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i64, i64* %11, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %71, %21
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i64 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @quota_error(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @get_index(%struct.qtree_mem_dqinfo*, i32, i32) #1

declare dso_local i64 @find_block_dqentry(%struct.qtree_mem_dqinfo*, %struct.dquot*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
