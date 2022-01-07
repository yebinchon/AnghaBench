; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_dop_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_dop_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_3__, %struct.dentry* }
%struct.TYPE_3__ = type { i32 }
%struct.kernfs_node = type { i64, %struct.kernfs_node*, i32 }
%struct.TYPE_4__ = type { i64 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@kernfs_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @kernfs_dop_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_dop_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @LOOKUP_RCU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ECHILD, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i64 @d_really_is_negative(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %75

19:                                               ; preds = %14
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %20)
  store %struct.kernfs_node* %21, %struct.kernfs_node** %6, align 8
  %22 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %24 = call i32 @kernfs_active(%struct.kernfs_node* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %73

27:                                               ; preds = %19
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 2
  %30 = load %struct.dentry*, %struct.dentry** %29, align 8
  %31 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %30)
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %33 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %32, i32 0, i32 1
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %33, align 8
  %35 = icmp ne %struct.kernfs_node* %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %73

37:                                               ; preds = %27
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %43 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @strcmp(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %73

48:                                               ; preds = %37
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %50 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %49, i32 0, i32 1
  %51 = load %struct.kernfs_node*, %struct.kernfs_node** %50, align 8
  %52 = icmp ne %struct.kernfs_node* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %55 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %54, i32 0, i32 1
  %56 = load %struct.kernfs_node*, %struct.kernfs_node** %55, align 8
  %57 = call i64 @kernfs_ns_enabled(%struct.kernfs_node* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_4__* @kernfs_info(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %67 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %73

71:                                               ; preds = %59, %53, %48
  %72 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  store i32 1, i32* %3, align 4
  br label %76

73:                                               ; preds = %70, %47, %36, %26
  %74 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  br label %75

75:                                               ; preds = %73, %18
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %71, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_active(%struct.kernfs_node*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @kernfs_ns_enabled(%struct.kernfs_node*) #1

declare dso_local %struct.TYPE_4__* @kernfs_info(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
