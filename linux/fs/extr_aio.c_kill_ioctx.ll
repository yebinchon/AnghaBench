; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_kill_ioctx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_kill_ioctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32 }
%struct.kioctx = type { i64, i32, %struct.ctx_rq_wait*, i64, i32, i32, i32, i32 }
%struct.ctx_rq_wait = type { i32 }
%struct.kioctx_table = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.kioctx*, %struct.ctx_rq_wait*)* @kill_ioctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_ioctx(%struct.mm_struct* %0, %struct.kioctx* %1, %struct.ctx_rq_wait* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.kioctx*, align 8
  %7 = alloca %struct.ctx_rq_wait*, align 8
  %8 = alloca %struct.kioctx_table*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.kioctx* %1, %struct.kioctx** %6, align 8
  store %struct.ctx_rq_wait* %2, %struct.ctx_rq_wait** %7, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %13 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %12, i32 0, i32 7
  %14 = call i64 @atomic_xchg(i32* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.kioctx_table* @rcu_dereference_raw(i32 %25)
  store %struct.kioctx_table* %26, %struct.kioctx_table** %8, align 8
  %27 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %28 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %29 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %32 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.kioctx* @rcu_access_pointer(i32 %35)
  %37 = icmp ne %struct.kioctx* %27, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %41 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %44 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RCU_INIT_POINTER(i32 %47, i32* null)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %53 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %52, i32 0, i32 6
  %54 = call i32 @wake_up_all(i32* %53)
  %55 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %56 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @aio_nr_sub(i32 %57)
  %59 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %60 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %22
  %64 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %65 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %68 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @vm_munmap(i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %63, %22
  %72 = load %struct.ctx_rq_wait*, %struct.ctx_rq_wait** %7, align 8
  %73 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %74 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %73, i32 0, i32 2
  store %struct.ctx_rq_wait* %72, %struct.ctx_rq_wait** %74, align 8
  %75 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %76 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %75, i32 0, i32 1
  %77 = call i32 @percpu_ref_kill(i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.kioctx_table* @rcu_dereference_raw(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.kioctx* @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @aio_nr_sub(i32) #1

declare dso_local i32 @vm_munmap(i32, i64) #1

declare dso_local i32 @percpu_ref_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
