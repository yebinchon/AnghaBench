; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, i32, i32, %struct.page*)* }
%struct.page = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.cleancache_filekey = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@cleancache_ops = common dso_local global %struct.TYPE_9__* null, align 8
@cleancache_failed_gets = common dso_local global i32 0, align 4
@cleancache_succ_gets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cleancache_get_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleancache_filekey, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  store i32 -1, i32* %3, align 4
  %6 = bitcast %struct.cleancache_filekey* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cleancache_ops, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @cleancache_failed_gets, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @cleancache_failed_gets, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @PageLocked(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @VM_BUG_ON_PAGE(i32 %17, %struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  br label %63

32:                                               ; preds = %12
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = call i64 @cleancache_get_key(%struct.TYPE_10__* %37, %struct.cleancache_filekey* %5)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %63

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cleancache_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32, i32, %struct.page*)*, i32 (i32, i32, i32, %struct.page*)** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.page*, %struct.page** %2, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.page*, %struct.page** %2, align 8
  %50 = getelementptr inbounds %struct.cleancache_filekey, %struct.cleancache_filekey* %5, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %44(i32 %45, i32 %52, i32 %48, %struct.page* %49)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* @cleancache_succ_gets, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @cleancache_succ_gets, align 4
  br label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @cleancache_failed_gets, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @cleancache_failed_gets, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %40, %31, %9
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #2

declare dso_local i32 @PageLocked(%struct.page*) #2

declare dso_local i64 @cleancache_get_key(%struct.TYPE_10__*, %struct.cleancache_filekey*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
