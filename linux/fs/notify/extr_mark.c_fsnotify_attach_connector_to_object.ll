; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_attach_connector_to_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_attach_connector_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }
%struct.inode = type { i32 }
%struct.fsnotify_mark_connector = type { i32, i64, %struct.TYPE_3__, i32*, i32, i32 }

@fsnotify_mark_connector_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSNOTIFY_CONN_FLAG_HAS_FSID = common dso_local global i64 0, align 8
@FSNOTIFY_OBJ_TYPE_INODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @fsnotify_attach_connector_to_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsnotify_attach_connector_to_object(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fsnotify_mark_connector*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %10 = load i32, i32* @fsnotify_mark_connector_cachep, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fsnotify_mark_connector* @kmem_cache_alloc(i32 %10, i32 %11)
  store %struct.fsnotify_mark_connector* %12, %struct.fsnotify_mark_connector** %9, align 8
  %13 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %14 = icmp ne %struct.fsnotify_mark_connector* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %20 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %19, i32 0, i32 5
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %23 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %22, i32 0, i32 4
  %24 = call i32 @INIT_HLIST_HEAD(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %27 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %30 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %18
  %34 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %35 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = bitcast %struct.TYPE_3__* %35 to i8*
  %38 = bitcast %struct.TYPE_3__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load i64, i64* @FSNOTIFY_CONN_FLAG_HAS_FSID, align 8
  %40 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %41 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %55

42:                                               ; preds = %18
  %43 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %44 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %49 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %54 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %42, %33
  %56 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %57 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FSNOTIFY_OBJ_TYPE_INODE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %63 = call i32 @fsnotify_conn_inode(%struct.fsnotify_mark_connector* %62)
  %64 = call %struct.inode* @igrab(i32 %63)
  store %struct.inode* %64, %struct.inode** %8, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %68 = call i64 @cmpxchg(i32* %66, i32* null, %struct.fsnotify_mark_connector* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = icmp ne %struct.inode* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i32 @iput(%struct.inode* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @fsnotify_mark_connector_cachep, align 4
  %78 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %9, align 8
  %79 = call i32 @kmem_cache_free(i32 %77, %struct.fsnotify_mark_connector* %78)
  br label %80

80:                                               ; preds = %76, %65
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.fsnotify_mark_connector* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @fsnotify_conn_inode(%struct.fsnotify_mark_connector*) #1

declare dso_local i64 @cmpxchg(i32*, i32*, %struct.fsnotify_mark_connector*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fsnotify_mark_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
