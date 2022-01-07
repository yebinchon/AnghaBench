; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_block_dqentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_block_dqentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (i8*, %struct.dquot*)* }
%struct.dquot = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read quota tree block %u\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Quota for id %u referenced but not present\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, %struct.dquot*, i32)* @find_block_dqentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_block_dqentry(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtree_mem_dqinfo*, align 8
  %6 = alloca %struct.dquot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %5, align 8
  store %struct.dquot* %1, %struct.dquot** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %13 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @getdqbuf(i32 %14)
  store i8* %15, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %100

21:                                               ; preds = %3
  %22 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %22, i32 %23, i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.dquot*, %struct.dquot** %6, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @quota_error(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %96

34:                                               ; preds = %21
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %36, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %60, %34
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %40 = call i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %44 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64 (i8*, %struct.dquot*)*, i64 (i8*, %struct.dquot*)** %46, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.dquot*, %struct.dquot** %6, align 8
  %50 = call i64 %47(i8* %48, %struct.dquot* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %63

53:                                               ; preds = %42
  %54 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %55 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %37

63:                                               ; preds = %52, %37
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %66 = call i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo* %65)
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.dquot*, %struct.dquot** %6, align 8
  %70 = getelementptr inbounds %struct.dquot, %struct.dquot* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dquot*, %struct.dquot** %6, align 8
  %73 = getelementptr inbounds %struct.dquot, %struct.dquot* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @from_kqid(i32* @init_user_ns, i32 %74)
  %76 = call i32 @quota_error(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %96

79:                                               ; preds = %63
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %82 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %89 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = add i64 %86, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %68, %28
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @kfree(i8* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @quota_error(i32, i8*, i32) #1

declare dso_local i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo*) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
