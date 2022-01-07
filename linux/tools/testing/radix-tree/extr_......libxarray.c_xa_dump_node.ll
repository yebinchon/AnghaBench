; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_dump_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i32**, %struct.TYPE_2__, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"node %px\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"node %px %s %d parent %px shift %d count %d values %d array %px list %px %px marks\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@XA_MAX_MARKS = common dso_local global i32 0, align 4
@XA_MARK_LONGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" %lx\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xa_dump_node(%struct.xa_node* %0) #0 {
  %2 = alloca %struct.xa_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xa_node* %0, %struct.xa_node** %2, align 8
  %5 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %6 = icmp ne %struct.xa_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %82

8:                                                ; preds = %1
  %9 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %10 = ptrtoint %struct.xa_node* %9 to i64
  %11 = and i64 %10, 3
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %15 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.xa_node* %14)
  br label %82

16:                                               ; preds = %8
  %17 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %18 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %19 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %24 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %25 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %28 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %31 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %34 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %37 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %40 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %43 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %47 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), %struct.xa_node* %17, i8* %23, i32 %26, i64 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %45, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %77, %16
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @XA_MAX_MARKS, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @XA_MARK_LONGS, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %62 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %51

80:                                               ; preds = %51
  %81 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %13, %7
  ret void
}

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
