; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_remove_self.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_remove_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@kernfs_mutex = common dso_local global i32 0, align 4
@KERNFS_SUICIDAL = common dso_local global i32 0, align 4
@KERNFS_SUICIDED = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@KN_DEACTIVATED_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernfs_remove_self(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %5 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %7 = call i32 @kernfs_break_active_protection(%struct.kernfs_node* %6)
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %9 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KERNFS_SUICIDAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @KERNFS_SUICIDAL, align 4
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %21 = call i32 @__kernfs_remove(%struct.kernfs_node* %20)
  %22 = load i32, i32* @KERNFS_SUICIDED, align 4
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %24 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  store i32 1, i32* %3, align 4
  br label %64

27:                                               ; preds = %1
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %29 = call %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* @wait, align 4
  %32 = call i32 @DEFINE_WAIT(i32 %31)
  br label %33

33:                                               ; preds = %27, %50
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %36 = call i32 @prepare_to_wait(i32* %34, i32* @wait, i32 %35)
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %38 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KERNFS_SUICIDED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %45 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %44, i32 0, i32 2
  %46 = call i64 @atomic_read(i32* %45)
  %47 = load i64, i64* @KN_DEACTIVATED_BIAS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43, %33
  %51 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %52 = call i32 (...) @schedule()
  %53 = call i32 @mutex_lock(i32* @kernfs_mutex)
  br label %33

54:                                               ; preds = %49
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @finish_wait(i32* %55, i32* @wait)
  %57 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %58 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %57, i32 0, i32 1
  %59 = call i32 @RB_EMPTY_NODE(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON_ONCE(i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %14
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %66 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %65)
  %67 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_break_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @__kernfs_remove(%struct.kernfs_node*) #1

declare dso_local %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @kernfs_unbreak_active_protection(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
