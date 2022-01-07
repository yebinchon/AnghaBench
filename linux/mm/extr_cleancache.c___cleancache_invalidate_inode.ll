; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_invalidate_inode.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_invalidate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i32)* }
%struct.address_space = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cleancache_filekey = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cleancache_ops = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cleancache_invalidate_inode(%struct.address_space* %0) #0 {
  %2 = alloca %struct.address_space*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cleancache_filekey, align 4
  store %struct.address_space* %0, %struct.address_space** %2, align 8
  %5 = load %struct.address_space*, %struct.address_space** %2, align 8
  %6 = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = bitcast %struct.cleancache_filekey* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cleancache_ops, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.address_space*, %struct.address_space** %2, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i64 @cleancache_get_key(%struct.TYPE_8__* %22, %struct.cleancache_filekey* %4)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cleancache_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds %struct.cleancache_filekey, %struct.cleancache_filekey* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %28(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %15, %25, %19, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @cleancache_get_key(%struct.TYPE_8__*, %struct.cleancache_filekey*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
