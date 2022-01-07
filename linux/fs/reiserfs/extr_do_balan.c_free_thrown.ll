; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_free_thrown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_free_thrown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"reiserfs-12322\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"called with dirty buffer %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*)* @free_thrown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_thrown(%struct.tree_balance* %0) #0 {
  %2 = alloca %struct.tree_balance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %8 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %5
  %13 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %14 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %12
  %22 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %32 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i64 @buffer_dirty(%struct.TYPE_4__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %21
  %41 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %42 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @reiserfs_warning(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %21
  %47 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %48 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @brelse(%struct.TYPE_4__* %53)
  %55 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %56 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @reiserfs_free_block(i32 %57, i32* null, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %46, %12
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %5

64:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__**) #1

declare dso_local i64 @buffer_dirty(%struct.TYPE_4__*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_4__*) #1

declare dso_local i32 @reiserfs_free_block(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
