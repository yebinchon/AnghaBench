; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtLookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.btstack = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"xtLookup: xtSearch returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtLookup(%struct.inode* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btstack, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.metapage*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load i32*, i32** %13, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %14, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %7
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_10__* @JFS_SBI(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = add nsw i32 %39, %46
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_10__* @JFS_SBI(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %47, %53
  store i32 %54, i32* %25, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %25, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %127

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %7
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @xtSearch(%struct.inode* %61, i32 %62, i32* %24, i32* %18, %struct.btstack* %17, i32 0)
  store i32 %63, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @jfs_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %8, align 4
  br label %127

69:                                               ; preds = %60
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = getelementptr inbounds %struct.btstack, %struct.btstack* %17, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load %struct.metapage*, %struct.metapage** %20, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %76 = load i32, i32* %22, align 4
  %77 = call i32 @XT_GETSEARCH(%struct.inode* %70, i32 %72, i32 %73, %struct.metapage* %74, %struct.TYPE_8__* %75, i32 %76)
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %69
  %81 = load i32, i32* %24, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @min(i32 %86, i32 %87)
  %89 = load i32*, i32** %14, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %80
  br label %123

91:                                               ; preds = %69
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %23, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %99 = call i32 @offsetXAD(%struct.TYPE_9__* %98)
  store i32 %99, i32* %26, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %101 = call i32 @lengthXAD(%struct.TYPE_9__* %100)
  store i32 %101, i32* %28, align 4
  %102 = load i32, i32* %26, align 4
  %103 = load i32, i32* %28, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %27, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %106 = call i32 @addressXAD(%struct.TYPE_9__* %105)
  store i32 %106, i32* %29, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %26, align 4
  %114 = sub nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @min(i32 %119, i32 %120)
  %122 = load i32*, i32** %14, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %91, %90
  %124 = load %struct.metapage*, %struct.metapage** %20, align 8
  %125 = call i32 @XT_PUTPAGE(%struct.metapage* %124)
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %123, %65, %58
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_10__* @JFS_SBI(i32) #1

declare dso_local i32 @xtSearch(%struct.inode*, i32, i32*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @XT_GETSEARCH(%struct.inode*, i32, i32, %struct.metapage*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @offsetXAD(%struct.TYPE_9__*) #1

declare dso_local i32 @lengthXAD(%struct.TYPE_9__*) #1

declare dso_local i32 @addressXAD(%struct.TYPE_9__*) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
