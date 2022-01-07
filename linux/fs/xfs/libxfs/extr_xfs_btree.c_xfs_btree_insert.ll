; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.xfs_btree_cur*, %struct.xfs_btree_cur*)*, i32 (%union.xfs_btree_key*, %union.xfs_btree_rec*)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*)* }
%union.xfs_btree_key = type { i32 }
%union.xfs_btree_rec = type { i32 }
%union.xfs_btree_ptr = type { i32 }

@XFS_BTREE_ERROR = common dso_local global i32 0, align 4
@error0 = common dso_local global i32 0, align 4
@XFS_BTREE_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_insert(%struct.xfs_btree_cur* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_btree_cur*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.xfs_btree_ptr, align 4
  %10 = alloca %struct.xfs_btree_cur*, align 8
  %11 = alloca %struct.xfs_btree_cur*, align 8
  %12 = alloca %union.xfs_btree_key, align 4
  %13 = alloca %union.xfs_btree_key*, align 8
  %14 = alloca %union.xfs_btree_rec, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %10, align 8
  %15 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  store %struct.xfs_btree_cur* %15, %struct.xfs_btree_cur** %11, align 8
  store %union.xfs_btree_key* %12, %union.xfs_btree_key** %13, align 8
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %17 = call i32 @xfs_btree_set_ptr_null(%struct.xfs_btree_cur* %16, %union.xfs_btree_ptr* %9)
  %18 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*)** %21, align 8
  %23 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %24 = call i32 %22(%struct.xfs_btree_cur* %23, %union.xfs_btree_rec* %14)
  %25 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (%union.xfs_btree_key*, %union.xfs_btree_rec*)*, i32 (%union.xfs_btree_key*, %union.xfs_btree_rec*)** %28, align 8
  %30 = load %union.xfs_btree_key*, %union.xfs_btree_key** %13, align 8
  %31 = call i32 %29(%union.xfs_btree_key* %30, %union.xfs_btree_rec* %14)
  br label %32

32:                                               ; preds = %100, %2
  %33 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %union.xfs_btree_key*, %union.xfs_btree_key** %13, align 8
  %36 = call i32 @xfs_btree_insrec(%struct.xfs_btree_cur* %33, i32 %34, %union.xfs_btree_ptr* %9, %union.xfs_btree_rec* %14, %union.xfs_btree_key* %35, %struct.xfs_btree_cur** %10, i32* %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %41 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %42 = icmp ne %struct.xfs_btree_cur* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %45 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %46 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %108

48:                                               ; preds = %32
  %49 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @error0, align 4
  %56 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %51, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %60 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %61 = icmp ne %struct.xfs_btree_cur* %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %48
  %63 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %64 = icmp ne %struct.xfs_btree_cur* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %67 = call i64 @xfs_btree_ptr_is_null(%struct.xfs_btree_cur* %66, %union.xfs_btree_ptr* %9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %65, %62
  %70 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.xfs_btree_cur*, %struct.xfs_btree_cur*)*, i32 (%struct.xfs_btree_cur*, %struct.xfs_btree_cur*)** %73, align 8
  %75 = icmp ne i32 (%struct.xfs_btree_cur*, %struct.xfs_btree_cur*)* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %78 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.xfs_btree_cur*, %struct.xfs_btree_cur*)*, i32 (%struct.xfs_btree_cur*, %struct.xfs_btree_cur*)** %80, align 8
  %82 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %83 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %84 = call i32 %81(%struct.xfs_btree_cur* %82, %struct.xfs_btree_cur* %83)
  br label %85

85:                                               ; preds = %76, %69
  %86 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %87 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %90 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %11, align 8
  %92 = load i32, i32* @XFS_BTREE_NOERROR, align 4
  %93 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %65, %48
  %95 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %96 = icmp ne %struct.xfs_btree_cur* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  store %struct.xfs_btree_cur* %98, %struct.xfs_btree_cur** %11, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %10, align 8
  br label %99

99:                                               ; preds = %97, %94
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %102 = call i64 @xfs_btree_ptr_is_null(%struct.xfs_btree_cur* %101, %union.xfs_btree_ptr* %9)
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br i1 %104, label %32, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %110

108:                                              ; preds = %47
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @xfs_btree_set_ptr_null(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*) #1

declare dso_local i32 @xfs_btree_insrec(%struct.xfs_btree_cur*, i32, %union.xfs_btree_ptr*, %union.xfs_btree_rec*, %union.xfs_btree_key*, %struct.xfs_btree_cur**, i32*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @XFS_WANT_CORRUPTED_GOTO(i32, i32, i32) #1

declare dso_local i64 @xfs_btree_ptr_is_null(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
