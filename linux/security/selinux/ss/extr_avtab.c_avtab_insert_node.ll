; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_insert_node.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32, %struct.avtab_node** }
%struct.avtab_node = type { %struct.avtab_node*, %struct.TYPE_5__, %struct.avtab_key }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.avtab_extended_perms* }
%struct.avtab_extended_perms = type { i32 }
%struct.avtab_key = type { i32 }
%struct.avtab_datum = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.avtab_extended_perms* }

@avtab_node_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AVTAB_XPERMS = common dso_local global i32 0, align 4
@avtab_xperms_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.avtab_node* (%struct.avtab*, i32, %struct.avtab_node*, %struct.avtab_node*, %struct.avtab_key*, %struct.avtab_datum*)* @avtab_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.avtab_node* @avtab_insert_node(%struct.avtab* %0, i32 %1, %struct.avtab_node* %2, %struct.avtab_node* %3, %struct.avtab_key* %4, %struct.avtab_datum* %5) #0 {
  %7 = alloca %struct.avtab_node*, align 8
  %8 = alloca %struct.avtab*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca %struct.avtab_node*, align 8
  %12 = alloca %struct.avtab_key*, align 8
  %13 = alloca %struct.avtab_datum*, align 8
  %14 = alloca %struct.avtab_node*, align 8
  %15 = alloca %struct.avtab_extended_perms*, align 8
  %16 = alloca %struct.avtab_node**, align 8
  store %struct.avtab* %0, %struct.avtab** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.avtab_node* %2, %struct.avtab_node** %10, align 8
  store %struct.avtab_node* %3, %struct.avtab_node** %11, align 8
  store %struct.avtab_key* %4, %struct.avtab_key** %12, align 8
  store %struct.avtab_datum* %5, %struct.avtab_datum** %13, align 8
  %17 = load i32, i32* @avtab_node_cachep, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmem_cache_zalloc(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.avtab_node*
  store %struct.avtab_node* %20, %struct.avtab_node** %14, align 8
  %21 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %22 = icmp eq %struct.avtab_node* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store %struct.avtab_node* null, %struct.avtab_node** %7, align 8
  br label %100

24:                                               ; preds = %6
  %25 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %26 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %25, i32 0, i32 2
  %27 = load %struct.avtab_key*, %struct.avtab_key** %12, align 8
  %28 = bitcast %struct.avtab_key* %26 to i8*
  %29 = bitcast %struct.avtab_key* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.avtab_key*, %struct.avtab_key** %12, align 8
  %31 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AVTAB_XPERMS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %24
  %37 = load i32, i32* @avtab_xperms_cachep, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kmem_cache_zalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.avtab_extended_perms*
  store %struct.avtab_extended_perms* %40, %struct.avtab_extended_perms** %15, align 8
  %41 = load %struct.avtab_extended_perms*, %struct.avtab_extended_perms** %15, align 8
  %42 = icmp eq %struct.avtab_extended_perms* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @avtab_node_cachep, align 4
  %45 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %46 = call i32 @kmem_cache_free(i32 %44, %struct.avtab_node* %45)
  store %struct.avtab_node* null, %struct.avtab_node** %7, align 8
  br label %100

47:                                               ; preds = %36
  %48 = load %struct.avtab_extended_perms*, %struct.avtab_extended_perms** %15, align 8
  %49 = load %struct.avtab_datum*, %struct.avtab_datum** %13, align 8
  %50 = getelementptr inbounds %struct.avtab_datum, %struct.avtab_datum* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.avtab_extended_perms*, %struct.avtab_extended_perms** %51, align 8
  %53 = bitcast %struct.avtab_extended_perms* %48 to i8*
  %54 = bitcast %struct.avtab_extended_perms* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.avtab_extended_perms*, %struct.avtab_extended_perms** %15, align 8
  %56 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %57 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store %struct.avtab_extended_perms* %55, %struct.avtab_extended_perms** %59, align 8
  br label %69

60:                                               ; preds = %24
  %61 = load %struct.avtab_datum*, %struct.avtab_datum** %13, align 8
  %62 = getelementptr inbounds %struct.avtab_datum, %struct.avtab_datum* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %66 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %47
  %70 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %71 = icmp ne %struct.avtab_node* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %74 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %73, i32 0, i32 0
  %75 = load %struct.avtab_node*, %struct.avtab_node** %74, align 8
  %76 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %77 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %76, i32 0, i32 0
  store %struct.avtab_node* %75, %struct.avtab_node** %77, align 8
  %78 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %79 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %80 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %79, i32 0, i32 0
  store %struct.avtab_node* %78, %struct.avtab_node** %80, align 8
  br label %94

81:                                               ; preds = %69
  %82 = load %struct.avtab*, %struct.avtab** %8, align 8
  %83 = getelementptr inbounds %struct.avtab, %struct.avtab* %82, i32 0, i32 1
  %84 = load %struct.avtab_node**, %struct.avtab_node*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %84, i64 %86
  store %struct.avtab_node** %87, %struct.avtab_node*** %16, align 8
  %88 = load %struct.avtab_node**, %struct.avtab_node*** %16, align 8
  %89 = load %struct.avtab_node*, %struct.avtab_node** %88, align 8
  %90 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %91 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %90, i32 0, i32 0
  store %struct.avtab_node* %89, %struct.avtab_node** %91, align 8
  %92 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %93 = load %struct.avtab_node**, %struct.avtab_node*** %16, align 8
  store %struct.avtab_node* %92, %struct.avtab_node** %93, align 8
  br label %94

94:                                               ; preds = %81, %72
  %95 = load %struct.avtab*, %struct.avtab** %8, align 8
  %96 = getelementptr inbounds %struct.avtab, %struct.avtab* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  store %struct.avtab_node* %99, %struct.avtab_node** %7, align 8
  br label %100

100:                                              ; preds = %94, %43, %23
  %101 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  ret %struct.avtab_node* %101
}

declare dso_local i8* @kmem_cache_zalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kmem_cache_free(i32, %struct.avtab_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
