; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_get_cached_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_get_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @get_cached_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.posix_acl**, align 8
  %6 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.posix_acl** @acl_by_type(%struct.inode* %7, i32 %8)
  store %struct.posix_acl** %9, %struct.posix_acl*** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.posix_acl**, %struct.posix_acl*** %5, align 8
  %13 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %14 = call %struct.posix_acl* @rcu_dereference(%struct.posix_acl* %13)
  store %struct.posix_acl* %14, %struct.posix_acl** %6, align 8
  %15 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %19 = call i64 @is_uncached_acl(%struct.posix_acl* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %23 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %22, i32 0, i32 0
  %24 = call i64 @refcount_inc_not_zero(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %17, %10
  br label %30

27:                                               ; preds = %21
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = call i32 (...) @cpu_relax()
  br label %10

30:                                               ; preds = %26
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  ret %struct.posix_acl* %32
}

declare dso_local %struct.posix_acl** @acl_by_type(%struct.inode*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.posix_acl* @rcu_dereference(%struct.posix_acl*) #1

declare dso_local i64 @is_uncached_acl(%struct.posix_acl*) #1

declare dso_local i64 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
