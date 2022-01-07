; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c___dlm_queue_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c___dlm_queue_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock = type { i32, i32, i32, %struct.TYPE_4__, %struct.dlm_lock_resource* }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s: res %.*s, lock %u:%llu, BAST getting flushed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_queue_bast(%struct.dlm_ctxt* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = icmp ne %struct.dlm_ctxt* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %12 = icmp ne %struct.dlm_lock* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 2
  %18 = call i32 @assert_spin_locked(i32* %17)
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %19, i32 0, i32 4
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %20, align 8
  store %struct.dlm_lock_resource* %21, %struct.dlm_lock_resource** %5, align 8
  %22 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %22, i32 0, i32 2
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %30 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %2
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %35 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be64_to_cpu(i32 %48)
  %50 = call i32 @dlm_get_lock_cookie_node(i32 %49)
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be64_to_cpu(i32 %54)
  %56 = call i32 @dlm_get_lock_cookie_seq(i32 %55)
  %57 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %44, i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %33, %2
  %59 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %60 = call i32 @dlm_lock_get(%struct.dlm_lock* %59)
  %61 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %61, i32 0, i32 1
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %65 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %64, i32 0, i32 2
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %67 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %66, i32 0, i32 0
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %70 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %72 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
