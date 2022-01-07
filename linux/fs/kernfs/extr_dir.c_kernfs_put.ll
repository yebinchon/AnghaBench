; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i8*, i32, %struct.TYPE_4__, %struct.kernfs_node*, i32, %struct.TYPE_3__, i32, %struct.kernfs_node* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.kernfs_node* }
%struct.kernfs_root = type { i32 }

@KN_DEACTIVATED_BIAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"kernfs_put: %s/%s: released with incorrect active_ref %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KERNFS_LINK = common dso_local global i64 0, align 8
@kernfs_iattrs_cache = common dso_local global i32 0, align 4
@kernfs_idr_lock = common dso_local global i32 0, align 4
@kernfs_node_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernfs_put(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_root*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %6 = icmp ne %struct.kernfs_node* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %9 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %8, i32 0, i32 1
  %10 = call i64 @atomic_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %100

13:                                               ; preds = %7
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %15 = call %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* %14)
  store %struct.kernfs_root* %15, %struct.kernfs_root** %4, align 8
  br label %16

16:                                               ; preds = %92, %13
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %18 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %17, i32 0, i32 7
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %18, align 8
  store %struct.kernfs_node* %19, %struct.kernfs_node** %3, align 8
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %21 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %20, i32 0, i32 6
  %22 = call i64 @atomic_read(i32* %21)
  %23 = load i64, i64* @KN_DEACTIVATED_BIAS, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %27 = icmp ne %struct.kernfs_node* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %30 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %32 ]
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %36 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %39 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %38, i32 0, i32 6
  %40 = call i64 @atomic_read(i32* %39)
  %41 = call i32 @WARN_ONCE(i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %37, i64 %40)
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %43 = call i64 @kernfs_type(%struct.kernfs_node* %42)
  %44 = load i64, i64* @KERNFS_LINK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %48 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %49, align 8
  call void @kernfs_put(%struct.kernfs_node* %50)
  br label %51

51:                                               ; preds = %46, %33
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %53 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @kfree_const(i8* %54)
  %56 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %57 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %56, i32 0, i32 3
  %58 = load %struct.kernfs_node*, %struct.kernfs_node** %57, align 8
  %59 = icmp ne %struct.kernfs_node* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %62 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %61, i32 0, i32 3
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %62, align 8
  %64 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %63, i32 0, i32 4
  %65 = call i32 @simple_xattrs_free(i32* %64)
  %66 = load i32, i32* @kernfs_iattrs_cache, align 4
  %67 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %68 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %67, i32 0, i32 3
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %68, align 8
  %70 = call i32 @kmem_cache_free(i32 %66, %struct.kernfs_node* %69)
  br label %71

71:                                               ; preds = %60, %51
  %72 = call i32 @spin_lock(i32* @kernfs_idr_lock)
  %73 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  %74 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %73, i32 0, i32 0
  %75 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %76 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @idr_remove(i32* %74, i32 %78)
  %80 = call i32 @spin_unlock(i32* @kernfs_idr_lock)
  %81 = load i32, i32* @kernfs_node_cache, align 4
  %82 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %83 = call i32 @kmem_cache_free(i32 %81, %struct.kernfs_node* %82)
  %84 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  store %struct.kernfs_node* %84, %struct.kernfs_node** %2, align 8
  %85 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %86 = icmp ne %struct.kernfs_node* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %89 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %88, i32 0, i32 1
  %90 = call i64 @atomic_dec_and_test(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %16

93:                                               ; preds = %87
  br label %100

94:                                               ; preds = %71
  %95 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  %96 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %95, i32 0, i32 0
  %97 = call i32 @idr_destroy(i32* %96)
  %98 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  %99 = call i32 @kfree(%struct.kernfs_root* %98)
  br label %100

100:                                              ; preds = %12, %94, %93
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local %struct.kernfs_root* @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i8*, i8*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @kfree_const(i8*) #1

declare dso_local i32 @simple_xattrs_free(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kernfs_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.kernfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
