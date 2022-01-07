; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_trees_reduce.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_trees_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32 }

@trees_count = common dso_local global i32 0, align 4
@trees = common dso_local global %struct.TYPE_9__* null, align 8
@utf8data = common dso_local global i8* null, align 8
@utf8data_size = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s_%x idx %d\0A\00", align 1
@nfdi = common dso_local global i8* null, align 8
@nfdicf = common dso_local global i8* null, align 8
@nfdi_tree = common dso_local global %struct.TYPE_9__* null, align 8
@nfdicf_tree = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trees_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trees_reduce() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @trees_count, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i64 %11
  %13 = call i32 @prune(%struct.TYPE_9__* %12)
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %4

17:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @trees_count, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = call i32 @mark_nodes(%struct.TYPE_9__* %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %18

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %66, %31
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @trees_count, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @index_nodes(%struct.TYPE_9__* %41, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %33

47:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @trees_count, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = call i64 @size_nodes(%struct.TYPE_9__* %56)
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %32, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = call i8* @calloc(i32 %70, i32 1)
  store i8* %71, i8** @utf8data, align 8
  %72 = load i32, i32* %2, align 4
  store i32 %72, i32* @utf8data_size, align 4
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %84, %69
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @trees_count, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = load i8*, i8** @utf8data, align 8
  %83 = call i32 @emit(%struct.TYPE_9__* %81, i8* %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i64, i64* @verbose, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  store i32 0, i32* %1, align 4
  br label %91

91:                                               ; preds = %115, %90
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* @trees_count, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %101, i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %95
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %1, align 4
  br label %91

118:                                              ; preds = %91
  br label %119

119:                                              ; preds = %118, %87
  %120 = load i8*, i8** @utf8data, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %122 = load i32, i32* @trees_count, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %120, i64 %128
  store i8* %129, i8** @nfdi, align 8
  %130 = load i8*, i8** @utf8data, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %132 = load i32, i32* @trees_count, align 4
  %133 = sub nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr i8, i8* %130, i64 %138
  store i8* %139, i8** @nfdicf, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %141 = load i32, i32* @trees_count, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %143
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** @nfdi_tree, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trees, align 8
  %146 = load i32, i32* @trees_count, align 4
  %147 = sub nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %148
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** @nfdicf_tree, align 8
  ret void
}

declare dso_local i32 @prune(%struct.TYPE_9__*) #1

declare dso_local i32 @mark_nodes(%struct.TYPE_9__*) #1

declare dso_local i32 @index_nodes(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @size_nodes(%struct.TYPE_9__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @emit(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
