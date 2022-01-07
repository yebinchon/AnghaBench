; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_lookup_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_lookup_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.xfs_bmbt_irec = type { i32 }
%struct.xfs_iext_rec = type { i32 }

@xs_look_exlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iext_lookup_extent(%struct.xfs_inode* %0, %struct.xfs_ifork* %1, i32 %2, %struct.xfs_iext_cursor* %3, %struct.xfs_bmbt_irec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_ifork*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_iext_cursor*, align 8
  %11 = alloca %struct.xfs_bmbt_irec*, align 8
  %12 = alloca %struct.xfs_iext_rec*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store %struct.xfs_ifork* %1, %struct.xfs_ifork** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.xfs_iext_cursor* %3, %struct.xfs_iext_cursor** %10, align 8
  store %struct.xfs_bmbt_irec* %4, %struct.xfs_bmbt_irec** %11, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @xs_look_exlist, align 4
  %17 = call i32 @XFS_STATS_INC(i32 %15, i32 %16)
  %18 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_2__* @xfs_iext_find_level(%struct.xfs_ifork* %18, i32 %19, i32 1)
  %21 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %22 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %21, i32 0, i32 1
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %24 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %29 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  store i32 0, i32* %6, align 4
  br label %93

30:                                               ; preds = %5
  %31 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %32 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %54, %30
  %34 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %35 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %38 = call i64 @xfs_iext_max_recs(%struct.xfs_ifork* %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %33
  %41 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %42 = call %struct.xfs_iext_rec* @cur_rec(%struct.xfs_iext_cursor* %41)
  store %struct.xfs_iext_rec* %42, %struct.xfs_iext_rec** %12, align 8
  %43 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %12, align 8
  %44 = call i64 @xfs_iext_rec_is_empty(%struct.xfs_iext_rec* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %59

47:                                               ; preds = %40
  %48 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %12, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @xfs_iext_rec_cmp(%struct.xfs_iext_rec* %48, i32 %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %88

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %56 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %33

59:                                               ; preds = %46, %33
  %60 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %61 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %66 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64, %59
  store i32 0, i32* %6, align 4
  br label %93

72:                                               ; preds = %64
  %73 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %74 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %79 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %78, i32 0, i32 1
  store %struct.TYPE_2__* %77, %struct.TYPE_2__** %79, align 8
  %80 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %81 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %83 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %84 = call i32 @xfs_iext_valid(%struct.xfs_ifork* %82, %struct.xfs_iext_cursor* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %93

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %11, align 8
  %90 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %91 = call %struct.xfs_iext_rec* @cur_rec(%struct.xfs_iext_cursor* %90)
  %92 = call i32 @xfs_iext_get(%struct.xfs_bmbt_irec* %89, %struct.xfs_iext_rec* %91)
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %86, %71, %27
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @XFS_STATS_INC(i32, i32) #1

declare dso_local %struct.TYPE_2__* @xfs_iext_find_level(%struct.xfs_ifork*, i32, i32) #1

declare dso_local i64 @xfs_iext_max_recs(%struct.xfs_ifork*) #1

declare dso_local %struct.xfs_iext_rec* @cur_rec(%struct.xfs_iext_cursor*) #1

declare dso_local i64 @xfs_iext_rec_is_empty(%struct.xfs_iext_rec*) #1

declare dso_local i64 @xfs_iext_rec_cmp(%struct.xfs_iext_rec*, i32) #1

declare dso_local i32 @xfs_iext_valid(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i32 @xfs_iext_get(%struct.xfs_bmbt_irec*, %struct.xfs_iext_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
