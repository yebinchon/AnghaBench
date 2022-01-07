; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_rename_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_rename_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i8*, i8*, i32, %struct.kernfs_node* }

@EINVAL = common dso_local global i32 0, align 4
@kernfs_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@KERNFS_EMPTY_DIR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@kernfs_rename_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernfs_rename_ns(%struct.kernfs_node* %0, %struct.kernfs_node* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %13, i32 0, i32 4
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %14, align 8
  %16 = icmp ne %struct.kernfs_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %130

20:                                               ; preds = %4
  %21 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %25 = call i32 @kernfs_active(%struct.kernfs_node* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %29 = call i32 @kernfs_active(%struct.kernfs_node* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %33 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @KERNFS_EMPTY_DIR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %27, %20
  br label %127

39:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %40 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %41 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %40, i32 0, i32 4
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %41, align 8
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %44 = icmp eq %struct.kernfs_node* %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %47 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %53 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %127

59:                                               ; preds = %51, %45, %39
  %60 = load i32, i32* @EEXIST, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @kernfs_find_ns(%struct.kernfs_node* %62, i8* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %127

68:                                               ; preds = %59
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %70 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strcmp(i8* %71, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kstrdup_const(i8* %78, i32 %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %127

84:                                               ; preds = %75
  br label %86

85:                                               ; preds = %68
  store i8* null, i8** %8, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %88 = call i32 @kernfs_unlink_sibling(%struct.kernfs_node* %87)
  %89 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %90 = call i32 @kernfs_get(%struct.kernfs_node* %89)
  %91 = call i32 @spin_lock_irq(i32* @kernfs_rename_lock)
  %92 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %93 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %92, i32 0, i32 4
  %94 = load %struct.kernfs_node*, %struct.kernfs_node** %93, align 8
  store %struct.kernfs_node* %94, %struct.kernfs_node** %10, align 8
  %95 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %96 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %97 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %96, i32 0, i32 4
  store %struct.kernfs_node* %95, %struct.kernfs_node** %97, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %100 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %86
  %104 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %105 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %11, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %109 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %103, %86
  %111 = call i32 @spin_unlock_irq(i32* @kernfs_rename_lock)
  %112 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %113 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %116 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @kernfs_name_hash(i8* %114, i8* %117)
  %119 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %120 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %122 = call i32 @kernfs_link_sibling(%struct.kernfs_node* %121)
  %123 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %124 = call i32 @kernfs_put(%struct.kernfs_node* %123)
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @kfree_const(i8* %125)
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %110, %83, %67, %58, %38
  %128 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %127, %17
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_active(%struct.kernfs_node*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @kernfs_find_ns(%struct.kernfs_node*, i8*, i8*) #1

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local i32 @kernfs_unlink_sibling(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kernfs_name_hash(i8*, i8*) #1

declare dso_local i32 @kernfs_link_sibling(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @kfree_const(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
