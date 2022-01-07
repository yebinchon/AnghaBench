; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_put_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_put_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, i32, i32, %struct.page*)* }
%struct.page = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cleancache_filekey = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cleancache_ops = common dso_local global %struct.TYPE_9__* null, align 8
@cleancache_puts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cleancache_put_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cleancache_filekey, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = bitcast %struct.cleancache_filekey* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cleancache_ops, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @cleancache_puts, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @cleancache_puts, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @PageLocked(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @VM_BUG_ON_PAGE(i32 %16, %struct.page* %17)
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %11
  %31 = load %struct.page*, %struct.page** %2, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call i64 @cleancache_get_key(%struct.TYPE_10__* %35, %struct.cleancache_filekey* %4)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cleancache_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i32, %struct.page*)*, i32 (i32, i32, i32, %struct.page*)** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.page*, %struct.page** %2, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.page*, %struct.page** %2, align 8
  %47 = getelementptr inbounds %struct.cleancache_filekey, %struct.cleancache_filekey* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %41(i32 %42, i32 %49, i32 %45, %struct.page* %46)
  %51 = load i32, i32* @cleancache_puts, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @cleancache_puts, align 4
  br label %53

53:                                               ; preds = %8, %38, %30, %11
  ret void
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
