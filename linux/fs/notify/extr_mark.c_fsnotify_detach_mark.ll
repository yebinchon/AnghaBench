; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_detach_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_detach_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32, i32, i32, i32, %struct.fsnotify_group* }
%struct.fsnotify_group = type { i32, i32 }

@fsnotify_mark_srcu = common dso_local global i32 0, align 4
@FSNOTIFY_MARK_FLAG_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_detach_mark(%struct.fsnotify_mark* %0) #0 {
  %2 = alloca %struct.fsnotify_mark*, align 8
  %3 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %2, align 8
  %4 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %5 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %4, i32 0, i32 4
  %6 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  store %struct.fsnotify_group* %6, %struct.fsnotify_group** %3, align 8
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %8 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %7, i32 0, i32 1
  %9 = call i32 @mutex_is_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = call i32 @srcu_read_lock_held(i32* @fsnotify_mark_srcu)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %18 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %17, i32 0, i32 3
  %19 = call i32 @refcount_read(i32* %18)
  %20 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %21 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FSNOTIFY_MARK_FLAG_ATTACHED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 1, %28
  %30 = icmp slt i32 %19, %29
  br label %31

31:                                               ; preds = %16, %1
  %32 = phi i1 [ false, %1 ], [ %30, %16 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %36 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %39 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FSNOTIFY_MARK_FLAG_ATTACHED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %31
  %45 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %46 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  br label %66

48:                                               ; preds = %31
  %49 = load i32, i32* @FSNOTIFY_MARK_FLAG_ATTACHED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %52 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %56 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %55, i32 0, i32 2
  %57 = call i32 @list_del_init(i32* %56)
  %58 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %59 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %62 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %61, i32 0, i32 0
  %63 = call i32 @atomic_dec(i32* %62)
  %64 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %65 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %64)
  br label %66

66:                                               ; preds = %48, %44
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @srcu_read_lock_held(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
