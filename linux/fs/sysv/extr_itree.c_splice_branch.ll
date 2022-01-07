; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_itree.c_splice_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_itree.c_splice_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64* }

@pointers_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)* @splice_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splice_branch(%struct.inode* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32 @write_lock(i32* @pointers_lock)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 -1
  %15 = call i32 @verify_chain(%struct.TYPE_6__* %12, %struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  br label %57

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  store i64 %27, i64* %30, align 8
  %31 = call i32 @write_unlock(i32* @pointers_lock)
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @current_time(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @dirty_indirect(i64 %43, %struct.inode* %44)
  br label %46

46:                                               ; preds = %40, %24
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i64 @IS_SYNC(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i32 @sysv_sync_inode(%struct.inode* %51)
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i32 @mark_inode_dirty(%struct.inode* %54)
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %5, align 4
  br label %96

57:                                               ; preds = %23
  %58 = call i32 @write_unlock(i32* @pointers_lock)
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %71, %57
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @bforget(i64 %69)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %59

74:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @sysv_free_block(i32 %82, i64 %88)
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %56
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @verify_chain(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @dirty_indirect(i64, %struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sysv_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @bforget(i64) #1

declare dso_local i32 @sysv_free_block(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
