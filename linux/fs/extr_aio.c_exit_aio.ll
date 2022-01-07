; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_exit_aio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_exit_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.kioctx_table = type { i32, i32* }
%struct.ctx_rq_wait = type { i32, i32 }
%struct.kioctx = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_aio(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.kioctx_table*, align 8
  %4 = alloca %struct.ctx_rq_wait, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kioctx*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.kioctx_table* @rcu_dereference_raw(i32 %10)
  store %struct.kioctx_table* %11, %struct.kioctx_table** %3, align 8
  %12 = load %struct.kioctx_table*, %struct.kioctx_table** %3, align 8
  %13 = icmp ne %struct.kioctx_table* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %4, i32 0, i32 1
  %17 = load %struct.kioctx_table*, %struct.kioctx_table** %3, align 8
  %18 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @atomic_set(i32* %16, i32 %19)
  %21 = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %4, i32 0, i32 0
  %22 = call i32 @init_completion(i32* %21)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %49, %15
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.kioctx_table*, %struct.kioctx_table** %3, align 8
  %26 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.kioctx_table*, %struct.kioctx_table** %3, align 8
  %31 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.kioctx* @rcu_dereference_protected(i32 %36, i32 1)
  store %struct.kioctx* %37, %struct.kioctx** %7, align 8
  %38 = load %struct.kioctx*, %struct.kioctx** %7, align 8
  %39 = icmp ne %struct.kioctx* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.kioctx*, %struct.kioctx** %7, align 8
  %45 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %47 = load %struct.kioctx*, %struct.kioctx** %7, align 8
  %48 = call i32 @kill_ioctx(%struct.mm_struct* %46, %struct.kioctx* %47, %struct.ctx_rq_wait* %4)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %4, i32 0, i32 1
  %55 = call i32 @atomic_sub_and_test(i32 %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %4, i32 0, i32 0
  %59 = call i32 @wait_for_completion(i32* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @RCU_INIT_POINTER(i32 %63, i32* null)
  %65 = load %struct.kioctx_table*, %struct.kioctx_table** %3, align 8
  %66 = call i32 @kfree(%struct.kioctx_table* %65)
  br label %67

67:                                               ; preds = %60, %14
  ret void
}

declare dso_local %struct.kioctx_table* @rcu_dereference_raw(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.kioctx* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @kill_ioctx(%struct.mm_struct*, %struct.kioctx*, %struct.ctx_rq_wait*) #1

declare dso_local i32 @atomic_sub_and_test(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree(%struct.kioctx_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
