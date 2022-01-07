; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_file_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_file_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.jbd2_inode = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Adding inode %lu, tid:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.jbd2_inode*, i64, i8*, i8*)* @jbd2_journal_file_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_journal_file_inode(%struct.TYPE_10__* %0, %struct.jbd2_inode* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.jbd2_inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.jbd2_inode* %1, %struct.jbd2_inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = call i64 @is_handle_aborted(%struct.TYPE_10__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EROFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %135

23:                                               ; preds = %5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %13, align 8
  %27 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %28 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %27, i32 0, i32 6
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @jbd_debug(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %41 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %45 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %23
  %49 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %50 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i8* @min(i8* %51, i8* %52)
  %54 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %55 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %57 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i8* @max(i8* %58, i8* %59)
  %61 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %62 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  br label %70

63:                                               ; preds = %23
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %66 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %69 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %48
  %71 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %72 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = icmp eq %struct.TYPE_8__* %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %78 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %81 = icmp eq %struct.TYPE_8__* %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  br label %131

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %93 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %98 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = icmp eq %struct.TYPE_8__* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @J_ASSERT(i32 %101)
  %103 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %104 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = icmp eq %struct.TYPE_8__* %105, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @J_ASSERT(i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %114 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %113, i32 0, i32 3
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  br label %131

115:                                              ; preds = %91
  %116 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %117 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = icmp ne %struct.TYPE_8__* %118, null
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @J_ASSERT(i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %125 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %124, i32 0, i32 2
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %125, align 8
  %126 = load %struct.jbd2_inode*, %struct.jbd2_inode** %8, align 8
  %127 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = call i32 @list_add(i32* %127, i32* %129)
  br label %131

131:                                              ; preds = %115, %96, %82
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %131, %20
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i64 @is_handle_aborted(%struct.TYPE_10__*) #1

declare dso_local i32 @jbd_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
