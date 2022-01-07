; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { %struct.node* }
%struct.node = type { i32, i64, i64, %struct.node*, %struct.node*, i64 }

@NODE = common dso_local global i64 0, align 8
@LEAF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tree*, i8*)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup(%struct.tree* %0, i8* %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i8*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.tree*, %struct.tree** %3, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 0
  %9 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %5, align 8
  br label %10

10:                                               ; preds = %85, %2
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.node*, %struct.node** %5, align 8
  %15 = icmp ne %struct.node* %14, null
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %86

18:                                               ; preds = %16
  %19 = load %struct.node*, %struct.node** %5, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load %struct.node*, %struct.node** %5, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 7
  %34 = shl i32 1, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %26
  %38 = load %struct.node*, %struct.node** %5, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NODE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.node*, %struct.node** %5, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 4
  %46 = load %struct.node*, %struct.node** %45, align 8
  store %struct.node* %46, %struct.node** %5, align 8
  br label %60

47:                                               ; preds = %37
  %48 = load %struct.node*, %struct.node** %5, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LEAF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.node*, %struct.node** %5, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 4
  %56 = load %struct.node*, %struct.node** %55, align 8
  %57 = bitcast %struct.node* %56 to i8*
  store i8* %57, i8** %6, align 8
  br label %59

58:                                               ; preds = %47
  store %struct.node* null, %struct.node** %5, align 8
  br label %59

59:                                               ; preds = %58, %53
  br label %60

60:                                               ; preds = %59, %43
  br label %85

61:                                               ; preds = %26
  %62 = load %struct.node*, %struct.node** %5, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NODE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.node*, %struct.node** %5, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 3
  %70 = load %struct.node*, %struct.node** %69, align 8
  store %struct.node* %70, %struct.node** %5, align 8
  br label %84

71:                                               ; preds = %61
  %72 = load %struct.node*, %struct.node** %5, align 8
  %73 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LEAF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.node*, %struct.node** %5, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 3
  %80 = load %struct.node*, %struct.node** %79, align 8
  %81 = bitcast %struct.node* %80 to i8*
  store i8* %81, i8** %6, align 8
  br label %83

82:                                               ; preds = %71
  store %struct.node* null, %struct.node** %5, align 8
  br label %83

83:                                               ; preds = %82, %77
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %60
  br label %10

86:                                               ; preds = %16
  %87 = load i8*, i8** %6, align 8
  ret i8* %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
