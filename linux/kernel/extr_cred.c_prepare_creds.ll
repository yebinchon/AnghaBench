; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_prepare_creds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_prepare_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.cred* }
%struct.cred = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@cred_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"prepare_creds() alloc %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @prepare_creds() #0 {
  %1 = alloca %struct.cred*, align 8
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %2, align 8
  %6 = call i32 (...) @validate_process_creds()
  %7 = load i32, i32* @cred_jar, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cred* @kmem_cache_alloc(i32 %7, i32 %8)
  store %struct.cred* %9, %struct.cred** %4, align 8
  %10 = load %struct.cred*, %struct.cred** %4, align 8
  %11 = icmp ne %struct.cred* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store %struct.cred* null, %struct.cred** %1, align 8
  br label %54

13:                                               ; preds = %0
  %14 = load %struct.cred*, %struct.cred** %4, align 8
  %15 = call i32 @kdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.cred* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load %struct.cred*, %struct.cred** %17, align 8
  store %struct.cred* %18, %struct.cred** %3, align 8
  %19 = load %struct.cred*, %struct.cred** %4, align 8
  %20 = load %struct.cred*, %struct.cred** %3, align 8
  %21 = call i32 @memcpy(%struct.cred* %19, %struct.cred* %20, i32 48)
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 9
  store i64 0, i64* %23, align 8
  %24 = load %struct.cred*, %struct.cred** %4, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 8
  %26 = call i32 @atomic_set(i32* %25, i32 1)
  %27 = load %struct.cred*, %struct.cred** %4, align 8
  %28 = call i32 @set_cred_subscribers(%struct.cred* %27, i32 0)
  %29 = load %struct.cred*, %struct.cred** %4, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @get_group_info(i32 %31)
  %33 = load %struct.cred*, %struct.cred** %4, align 8
  %34 = getelementptr inbounds %struct.cred, %struct.cred* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_uid(i32 %35)
  %37 = load %struct.cred*, %struct.cred** %4, align 8
  %38 = getelementptr inbounds %struct.cred, %struct.cred* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @get_user_ns(i32 %39)
  %41 = load %struct.cred*, %struct.cred** %4, align 8
  %42 = load %struct.cred*, %struct.cred** %3, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64 @security_prepare_creds(%struct.cred* %41, %struct.cred* %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %13
  br label %51

47:                                               ; preds = %13
  %48 = load %struct.cred*, %struct.cred** %4, align 8
  %49 = call i32 @validate_creds(%struct.cred* %48)
  %50 = load %struct.cred*, %struct.cred** %4, align 8
  store %struct.cred* %50, %struct.cred** %1, align 8
  br label %54

51:                                               ; preds = %46
  %52 = load %struct.cred*, %struct.cred** %4, align 8
  %53 = call i32 @abort_creds(%struct.cred* %52)
  store %struct.cred* null, %struct.cred** %1, align 8
  br label %54

54:                                               ; preds = %51, %47, %12
  %55 = load %struct.cred*, %struct.cred** %1, align 8
  ret %struct.cred* %55
}

declare dso_local i32 @validate_process_creds(...) #1

declare dso_local %struct.cred* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kdebug(i8*, %struct.cred*) #1

declare dso_local i32 @memcpy(%struct.cred*, %struct.cred*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i32 @get_uid(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

declare dso_local i64 @security_prepare_creds(%struct.cred*, %struct.cred*, i32) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
