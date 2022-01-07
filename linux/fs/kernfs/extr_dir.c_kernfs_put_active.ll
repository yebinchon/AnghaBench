; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_put_active.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_put_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@KN_DEACTIVATED_BIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernfs_put_active(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %5 = icmp ne %struct.kernfs_node* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %13 = call i64 @kernfs_lockdep(%struct.kernfs_node* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 1
  %18 = load i32, i32* @_RET_IP_, align 4
  %19 = call i32 @rwsem_release(i32* %17, i32 1, i32 %18)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %22 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %21, i32 0, i32 0
  %23 = call i32 @atomic_dec_return(i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @KN_DEACTIVATED_BIAS, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %33 = call %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @wake_up_all(i32* %34)
  br label %36

36:                                               ; preds = %31, %30, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kernfs_lockdep(%struct.kernfs_node*) #1

declare dso_local i32 @rwsem_release(i32*, i32, i32) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
