; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_activate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i32, i32, i64 }

@kernfs_mutex = common dso_local global i32 0, align 4
@KERNFS_ACTIVATED = common dso_local global i32 0, align 4
@KN_DEACTIVATED_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernfs_activate(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %4 = call i32 @mutex_lock(i32* @kernfs_mutex)
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %5

5:                                                ; preds = %31, %20, %1
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %8 = call %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* %6, %struct.kernfs_node* %7)
  store %struct.kernfs_node* %8, %struct.kernfs_node** %3, align 8
  %9 = icmp ne %struct.kernfs_node* %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %5
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %12 = icmp ne %struct.kernfs_node* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @KERNFS_ACTIVATED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %10
  br label %5

21:                                               ; preds = %13
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %23 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %28 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %27, i32 0, i32 2
  %29 = call i64 @RB_EMPTY_NODE(i32* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %36 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %35, i32 0, i32 1
  %37 = call i64 @atomic_read(i32* %36)
  %38 = load i64, i64* @KN_DEACTIVATED_BIAS, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load i64, i64* @KN_DEACTIVATED_BIAS, align 8
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %44 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %43, i32 0, i32 1
  %45 = call i32 @atomic_sub(i64 %42, i32* %44)
  %46 = load i32, i32* @KERNFS_ACTIVATED, align 4
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %48 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %5

51:                                               ; preds = %5
  %52 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node*, %struct.kernfs_node*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @RB_EMPTY_NODE(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
