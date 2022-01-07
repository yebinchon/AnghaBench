; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_add_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup = type { i32 }
%struct.cftype = type { i32, i32, %struct.lock_class_key }
%struct.lock_class_key = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.cgroup_file = type { %struct.kernfs_node*, i32 }

@CGROUP_FILE_NAME_MAX = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@cgroup_file_notify_timer = common dso_local global i32 0, align 4
@cgroup_file_kn_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cgroup*, %struct.cftype*)* @cgroup_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_add_file(%struct.cgroup_subsys_state* %0, %struct.cgroup* %1, %struct.cftype* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cftype*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca %struct.lock_class_key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cgroup_file*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %5, align 8
  store %struct.cgroup* %1, %struct.cgroup** %6, align 8
  store %struct.cftype* %2, %struct.cftype** %7, align 8
  %15 = load i32, i32* @CGROUP_FILE_NAME_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store %struct.lock_class_key* null, %struct.lock_class_key** %11, align 8
  %19 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %20 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %23 = load %struct.cftype*, %struct.cftype** %7, align 8
  %24 = call i32 @cgroup_file_name(%struct.cgroup* %22, %struct.cftype* %23, i8* %18)
  %25 = load %struct.cftype*, %struct.cftype** %7, align 8
  %26 = call i32 @cgroup_file_mode(%struct.cftype* %25)
  %27 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %28 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %29 = load %struct.cftype*, %struct.cftype** %7, align 8
  %30 = getelementptr inbounds %struct.cftype, %struct.cftype* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cftype*, %struct.cftype** %7, align 8
  %33 = load %struct.lock_class_key*, %struct.lock_class_key** %11, align 8
  %34 = call %struct.kernfs_node* @__kernfs_create_file(i32 %21, i32 %24, i32 %26, i32 %27, i32 %28, i32 0, i32 %31, %struct.cftype* %32, i32* null, %struct.lock_class_key* %33)
  store %struct.kernfs_node* %34, %struct.kernfs_node** %10, align 8
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %36 = call i64 @IS_ERR(%struct.kernfs_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %40 = call i32 @PTR_ERR(%struct.kernfs_node* %39)
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %74

41:                                               ; preds = %3
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %43 = call i32 @cgroup_kn_set_ugid(%struct.kernfs_node* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %48 = call i32 @kernfs_remove(%struct.kernfs_node* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %74

50:                                               ; preds = %41
  %51 = load %struct.cftype*, %struct.cftype** %7, align 8
  %52 = getelementptr inbounds %struct.cftype, %struct.cftype* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %57 = bitcast %struct.cgroup_subsys_state* %56 to i8*
  %58 = load %struct.cftype*, %struct.cftype** %7, align 8
  %59 = getelementptr inbounds %struct.cftype, %struct.cftype* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %57, i64 %61
  %63 = bitcast i8* %62 to %struct.cgroup_file*
  store %struct.cgroup_file* %63, %struct.cgroup_file** %14, align 8
  %64 = load %struct.cgroup_file*, %struct.cgroup_file** %14, align 8
  %65 = getelementptr inbounds %struct.cgroup_file, %struct.cgroup_file* %64, i32 0, i32 1
  %66 = load i32, i32* @cgroup_file_notify_timer, align 4
  %67 = call i32 @timer_setup(i32* %65, i32 %66, i32 0)
  %68 = call i32 @spin_lock_irq(i32* @cgroup_file_kn_lock)
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %70 = load %struct.cgroup_file*, %struct.cgroup_file** %14, align 8
  %71 = getelementptr inbounds %struct.cgroup_file, %struct.cgroup_file* %70, i32 0, i32 0
  store %struct.kernfs_node* %69, %struct.kernfs_node** %71, align 8
  %72 = call i32 @spin_unlock_irq(i32* @cgroup_file_kn_lock)
  br label %73

73:                                               ; preds = %55, %50
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %46, %38
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.kernfs_node* @__kernfs_create_file(i32, i32, i32, i32, i32, i32, i32, %struct.cftype*, i32*, %struct.lock_class_key*) #2

declare dso_local i32 @cgroup_file_name(%struct.cgroup*, %struct.cftype*, i8*) #2

declare dso_local i32 @cgroup_file_mode(%struct.cftype*) #2

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #2

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #2

declare dso_local i32 @cgroup_kn_set_ugid(%struct.kernfs_node*) #2

declare dso_local i32 @kernfs_remove(%struct.kernfs_node*) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
