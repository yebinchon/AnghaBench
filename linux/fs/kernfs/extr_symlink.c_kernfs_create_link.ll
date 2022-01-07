; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.kernfs_node* }
%struct.TYPE_4__ = type { i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@KERNFS_LINK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node* %0, i8* %1, %struct.kernfs_node* %2) #0 {
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.kernfs_node* %2, %struct.kernfs_node** %7, align 8
  %12 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %25 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %18, %3
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @S_IFLNK, align 4
  %33 = load i32, i32* @S_IRWXUGO, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @KERNFS_LINK, align 4
  %38 = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* %30, i8* %31, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.kernfs_node* %38, %struct.kernfs_node** %8, align 8
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %40 = icmp ne %struct.kernfs_node* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.kernfs_node* @ERR_PTR(i32 %43)
  store %struct.kernfs_node* %44, %struct.kernfs_node** %4, align 8
  br label %73

45:                                               ; preds = %29
  %46 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %47 = call i64 @kernfs_ns_enabled(%struct.kernfs_node* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %51 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %54 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %45
  %56 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %57 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %58 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.kernfs_node* %56, %struct.kernfs_node** %59, align 8
  %60 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %61 = call i32 @kernfs_get(%struct.kernfs_node* %60)
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %63 = call i32 @kernfs_add_one(%struct.kernfs_node* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  %67 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  store %struct.kernfs_node* %67, %struct.kernfs_node** %4, align 8
  br label %73

68:                                               ; preds = %55
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %70 = call i32 @kernfs_put(%struct.kernfs_node* %69)
  %71 = load i32, i32* %9, align 4
  %72 = call %struct.kernfs_node* @ERR_PTR(i32 %71)
  store %struct.kernfs_node* %72, %struct.kernfs_node** %4, align 8
  br label %73

73:                                               ; preds = %68, %66, %41
  %74 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  ret %struct.kernfs_node* %74
}

declare dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.kernfs_node* @ERR_PTR(i32) #1

declare dso_local i64 @kernfs_ns_enabled(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_add_one(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
