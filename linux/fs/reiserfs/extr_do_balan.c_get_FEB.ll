; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_get_FEB.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_get_FEB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.tree_balance = type { %struct.buffer_head**, %struct.buffer_head**, i32 }
%struct.buffer_info = type { i32 }

@MAX_FEB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vs-12300\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"FEB list is empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @get_FEB(%struct.tree_balance* %0) #0 {
  %2 = alloca %struct.tree_balance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_FEB_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %11 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %10, i32 0, i32 1
  %12 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %12, i64 %14
  %16 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %17 = icmp ne %struct.buffer_head* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %23

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %18, %5
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAX_FEB_SIZE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %29 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @reiserfs_panic(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %34 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %35 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %34, i32 0, i32 1
  %36 = load %struct.buffer_head**, %struct.buffer_head*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %36, i64 %38
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %41 = call i32 @buffer_info_init_bh(%struct.tree_balance* %33, %struct.buffer_info* %4, %struct.buffer_head* %40)
  %42 = call i32 @make_empty_node(%struct.buffer_info* %4)
  %43 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 1
  %45 = load %struct.buffer_head**, %struct.buffer_head*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %45, i64 %47
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  %50 = call i32 @set_buffer_uptodate(%struct.buffer_head* %49)
  %51 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 1
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %53, i64 %55
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  %58 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 0
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %60, i64 %62
  store %struct.buffer_head* %57, %struct.buffer_head** %63, align 8
  %64 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %65 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %64, i32 0, i32 1
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %66, i64 %68
  store %struct.buffer_head* null, %struct.buffer_head** %69, align 8
  %70 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 0
  %72 = load %struct.buffer_head**, %struct.buffer_head*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %72, i64 %74
  %76 = load %struct.buffer_head*, %struct.buffer_head** %75, align 8
  ret %struct.buffer_head* %76
}

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*) #1

declare dso_local i32 @buffer_info_init_bh(%struct.tree_balance*, %struct.buffer_info*, %struct.buffer_head*) #1

declare dso_local i32 @make_empty_node(%struct.buffer_info*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
