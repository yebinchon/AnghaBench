; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_itree.c_find_shared.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_itree.c_find_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64*, i32 }
%struct.TYPE_8__ = type { i64 }

@pointers_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.inode*, i32, i32*, %struct.TYPE_7__*, i64*)* @find_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @find_shared(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_7__* %3, i64* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %32, %5
  %18 = load i32, i32* %13, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %20, %17
  %30 = phi i1 [ false, %17 ], [ %28, %20 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %13, align 4
  br label %17

35:                                               ; preds = %29
  %36 = call i32 @write_lock(i32* @pointers_lock)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = call %struct.TYPE_7__* @get_branch(%struct.inode* %37, i32 %38, i32* %39, %struct.TYPE_7__* %40, i32* %14)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %11, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 -1
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %11, align 8
  br label %50

50:                                               ; preds = %44, %35
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @write_unlock(i32* @pointers_lock)
  br label %127

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %12, align 8
  br label %65

65:                                               ; preds = %84, %63
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = icmp ugt %struct.TYPE_7__* %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i64*
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = call i64 @all_zeroes(i64* %75, i64* %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %69, %65
  %82 = phi i1 [ false, %65 ], [ %80, %69 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 -1
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %12, align 8
  br label %65

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 -1
  %94 = icmp eq %struct.TYPE_7__* %88, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = icmp ugt %struct.TYPE_7__* %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 -1
  store i64* %103, i64** %101, align 8
  br label %113

104:                                              ; preds = %95, %87
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %10, align 8
  store i64 %108, i64* %109, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %104, %99
  %114 = call i32 @write_unlock(i32* @pointers_lock)
  br label %115

115:                                              ; preds = %119, %113
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = icmp ugt %struct.TYPE_7__* %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @brelse(%struct.TYPE_8__* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 -1
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %11, align 8
  br label %115

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %61
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %128
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.TYPE_7__* @get_branch(%struct.inode*, i32, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i64 @all_zeroes(i64*, i64*) #1

declare dso_local i32 @brelse(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
