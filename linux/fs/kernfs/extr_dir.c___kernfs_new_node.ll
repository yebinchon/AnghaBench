; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c___kernfs_new_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c___kernfs_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_root = type { i32, i64 }
%struct.kernfs_node = type { i8*, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.iattr = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@kernfs_node_cache = common dso_local global i32 0, align 4
@kernfs_idr_lock = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@KN_DEACTIVATED_BIAS = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (%struct.kernfs_root*, %struct.kernfs_node*, i8*, i32, i32, i32, i32)* @__kernfs_new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @__kernfs_new_node(%struct.kernfs_root* %0, %struct.kernfs_node* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_root*, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.kernfs_node*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.iattr, align 4
  store %struct.kernfs_root* %0, %struct.kernfs_root** %9, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kstrdup_const(i8* %21, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store %struct.kernfs_node* null, %struct.kernfs_node** %8, align 8
  br label %146

27:                                               ; preds = %7
  %28 = load i32, i32* @kernfs_node_cache, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.kernfs_node* @kmem_cache_zalloc(i32 %28, i32 %29)
  store %struct.kernfs_node* %30, %struct.kernfs_node** %16, align 8
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %32 = icmp ne %struct.kernfs_node* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %143

34:                                               ; preds = %27
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @idr_preload(i32 %35)
  %37 = call i32 @spin_lock(i32* @kernfs_idr_lock)
  %38 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %39 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %38, i32 0, i32 0
  %40 = call i32 @idr_get_cursor(i32* %39)
  store i32 %40, i32* %18, align 4
  %41 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %42 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %41, i32 0, i32 0
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @idr_alloc_cyclic(i32* %42, %struct.kernfs_node* %43, i32 1, i32 0, i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %34
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %54 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %52, %48, %34
  %58 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %59 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  %61 = call i32 @spin_unlock(i32* @kernfs_idr_lock)
  %62 = call i32 (...) @idr_preload_end()
  %63 = load i32, i32* %19, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %139

66:                                               ; preds = %57
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %69 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %73 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  %75 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %76 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %75, i32 0, i32 6
  %77 = call i32 @atomic_set_release(i32* %76, i32 1)
  %78 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %79 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %78, i32 0, i32 5
  %80 = load i32, i32* @KN_DEACTIVATED_BIAS, align 4
  %81 = call i32 @atomic_set(i32* %79, i32 %80)
  %82 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %83 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %82, i32 0, i32 4
  %84 = call i32 @RB_CLEAR_NODE(i32* %83)
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %87 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %90 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %93 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %96 = call i32 @uid_eq(i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %66
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %101 = call i32 @gid_eq(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %98, %66
  %104 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 0
  %105 = load i32, i32* @ATTR_UID, align 4
  %106 = load i32, i32* @ATTR_GID, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %104, align 4
  %108 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 1
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 2
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %110, align 4
  %112 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %113 = call i32 @__kernfs_setattr(%struct.kernfs_node* %112, %struct.iattr* %20)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %131

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %98
  %119 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %120 = icmp ne %struct.kernfs_node* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %123 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %124 = call i32 @security_kernfs_init_security(%struct.kernfs_node* %122, %struct.kernfs_node* %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %131

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %118
  %130 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  store %struct.kernfs_node* %130, %struct.kernfs_node** %8, align 8
  br label %146

131:                                              ; preds = %127, %116
  %132 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %133 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %132, i32 0, i32 0
  %134 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %135 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @idr_remove(i32* %133, i32 %137)
  br label %139

139:                                              ; preds = %131, %65
  %140 = load i32, i32* @kernfs_node_cache, align 4
  %141 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %142 = call i32 @kmem_cache_free(i32 %140, %struct.kernfs_node* %141)
  br label %143

143:                                              ; preds = %139, %33
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @kfree_const(i8* %144)
  store %struct.kernfs_node* null, %struct.kernfs_node** %8, align 8
  br label %146

146:                                              ; preds = %143, %129, %26
  %147 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  ret %struct.kernfs_node* %147
}

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local %struct.kernfs_node* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_cursor(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.kernfs_node*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @atomic_set_release(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @__kernfs_setattr(%struct.kernfs_node*, %struct.iattr*) #1

declare dso_local i32 @security_kernfs_init_security(%struct.kernfs_node*, %struct.kernfs_node*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kernfs_node*) #1

declare dso_local i32 @kfree_const(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
