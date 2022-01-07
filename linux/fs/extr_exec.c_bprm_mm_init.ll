; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_bprm_mm_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_bprm_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.linux_binprm = type { %struct.mm_struct*, i32 }
%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@RLIMIT_STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @bprm_mm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bprm_mm_init(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %5, align 8
  %6 = call %struct.mm_struct* (...) @mm_alloc()
  store %struct.mm_struct* %6, %struct.mm_struct** %5, align 8
  %7 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %8 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %7, i32 0, i32 0
  store %struct.mm_struct* %6, %struct.mm_struct** %8, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = icmp ne %struct.mm_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @task_lock(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @RLIMIT_STACK, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %28 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @task_unlock(i32 %31)
  %33 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %34 = call i32 @__bprm_mm_init(%struct.linux_binprm* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %14
  br label %39

38:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %49

39:                                               ; preds = %37, %13
  %40 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %41 = icmp ne %struct.mm_struct* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %44 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %43, i32 0, i32 0
  store %struct.mm_struct* null, %struct.mm_struct** %44, align 8
  %45 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %46 = call i32 @mmdrop(%struct.mm_struct* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.mm_struct* @mm_alloc(...) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i32 @__bprm_mm_init(%struct.linux_binprm*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
