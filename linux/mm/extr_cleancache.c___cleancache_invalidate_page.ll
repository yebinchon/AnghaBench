; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i32, i32)* }
%struct.address_space = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.cleancache_filekey = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cleancache_ops = common dso_local global %struct.TYPE_7__* null, align 8
@cleancache_invalidates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cleancache_invalidate_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cleancache_filekey, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.address_space*, %struct.address_space** %3, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = bitcast %struct.cleancache_filekey* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cleancache_ops, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @PageLocked(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @VM_BUG_ON_PAGE(i32 %26, %struct.page* %27)
  %29 = load %struct.address_space*, %struct.address_space** %3, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i64 @cleancache_get_key(%struct.TYPE_8__* %31, %struct.cleancache_filekey* %6)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %21
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cleancache_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.cleancache_filekey, %struct.cleancache_filekey* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %37(i32 %38, i32 %44, i32 %41)
  %46 = load i32, i32* @cleancache_invalidates, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @cleancache_invalidates, align 4
  br label %48

48:                                               ; preds = %34, %21
  br label %49

49:                                               ; preds = %17, %48, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #2

declare dso_local i32 @PageLocked(%struct.page*) #2

declare dso_local i64 @cleancache_get_key(%struct.TYPE_8__*, %struct.cleancache_filekey*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
