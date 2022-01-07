; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_fop_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_fop_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.kernfs_node*, %struct.TYPE_4__ }
%struct.kernfs_node = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.dir_context = type { i32 }
%struct.TYPE_6__ = type { i8* }

@kernfs_mutex = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @kernfs_fop_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_fop_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %18)
  store %struct.kernfs_node* %19, %struct.kernfs_node** %7, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %21, align 8
  store %struct.kernfs_node* %22, %struct.kernfs_node** %8, align 8
  store i8* null, i8** %9, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %25 = call i32 @dir_emit_dots(%struct.file* %23, %struct.dir_context* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

28:                                               ; preds = %2
  %29 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %31 = call i64 @kernfs_ns_enabled(%struct.kernfs_node* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_6__* @kernfs_info(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %43 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %44 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %47 = call %struct.kernfs_node* @kernfs_dir_pos(i8* %41, %struct.kernfs_node* %42, i32 %45, %struct.kernfs_node* %46)
  store %struct.kernfs_node* %47, %struct.kernfs_node** %8, align 8
  br label %48

48:                                               ; preds = %84, %40
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %50 = icmp ne %struct.kernfs_node* %49, null
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %53 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %10, align 8
  %55 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %56 = call i32 @dt_type(%struct.kernfs_node* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %60 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %64 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %67 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  store %struct.kernfs_node* %68, %struct.kernfs_node** %70, align 8
  %71 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %72 = call i32 @kernfs_get(%struct.kernfs_node* %71)
  %73 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %74 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @dir_emit(%struct.dir_context* %74, i8* %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %99

82:                                               ; preds = %51
  %83 = call i32 @mutex_lock(i32* @kernfs_mutex)
  br label %84

84:                                               ; preds = %82
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %87 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %88 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %91 = call %struct.kernfs_node* @kernfs_dir_next_pos(i8* %85, %struct.kernfs_node* %86, i32 %89, %struct.kernfs_node* %90)
  store %struct.kernfs_node* %91, %struct.kernfs_node** %8, align 8
  br label %48

92:                                               ; preds = %48
  %93 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %94 = load %struct.file*, %struct.file** %4, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  store %struct.kernfs_node* null, %struct.kernfs_node** %95, align 8
  %96 = load i32, i32* @INT_MAX, align 4
  %97 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %98 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %81, %27
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kernfs_ns_enabled(%struct.kernfs_node*) #1

declare dso_local %struct.TYPE_6__* @kernfs_info(i32) #1

declare dso_local %struct.kernfs_node* @kernfs_dir_pos(i8*, %struct.kernfs_node*, i32, %struct.kernfs_node*) #1

declare dso_local i32 @dt_type(%struct.kernfs_node*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local %struct.kernfs_node* @kernfs_dir_next_pos(i8*, %struct.kernfs_node*, i32, %struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
