; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_copy_creds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_copy_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.cred*, %struct.cred*, i32* }
%struct.cred = type { %struct.TYPE_2__*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@CLONE_THREAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"share_creds(%p{%d,%d})\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CLONE_NEWUSER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_creds(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @CLONE_THREAD, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = load %struct.cred*, %struct.cred** %14, align 8
  %16 = call i8* @get_cred(%struct.cred* %15)
  %17 = bitcast i8* %16 to %struct.cred*
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  store %struct.cred* %17, %struct.cred** %19, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  %22 = load %struct.cred*, %struct.cred** %21, align 8
  %23 = call i8* @get_cred(%struct.cred* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load %struct.cred*, %struct.cred** %25, align 8
  %27 = call i32 @alter_cred_subscribers(%struct.cred* %26, i32 2)
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = load %struct.cred*, %struct.cred** %29, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = load %struct.cred*, %struct.cred** %32, align 8
  %34 = getelementptr inbounds %struct.cred, %struct.cred* %33, i32 0, i32 3
  %35 = call i32 @atomic_read(i32* %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = load %struct.cred*, %struct.cred** %37, align 8
  %39 = call i32 @read_cred_subscribers(%struct.cred* %38)
  %40 = call i32 @kdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cred* %30, i32 %35, i32 %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 1
  %43 = load %struct.cred*, %struct.cred** %42, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  store i32 0, i32* %3, align 4
  br label %88

48:                                               ; preds = %2
  %49 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %49, %struct.cred** %6, align 8
  %50 = load %struct.cred*, %struct.cred** %6, align 8
  %51 = icmp ne %struct.cred* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %88

55:                                               ; preds = %48
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @CLONE_NEWUSER, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.cred*, %struct.cred** %6, align 8
  %62 = call i32 @create_user_ns(%struct.cred* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %84

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.cred*, %struct.cred** %6, align 8
  %69 = getelementptr inbounds %struct.cred, %struct.cred* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @atomic_inc(i32* %71)
  %73 = load %struct.cred*, %struct.cred** %6, align 8
  %74 = call i8* @get_cred(%struct.cred* %73)
  %75 = bitcast i8* %74 to %struct.cred*
  %76 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 0
  store %struct.cred* %75, %struct.cred** %77, align 8
  %78 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %79 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %78, i32 0, i32 1
  store %struct.cred* %75, %struct.cred** %79, align 8
  %80 = load %struct.cred*, %struct.cred** %6, align 8
  %81 = call i32 @alter_cred_subscribers(%struct.cred* %80, i32 2)
  %82 = load %struct.cred*, %struct.cred** %6, align 8
  %83 = call i32 @validate_creds(%struct.cred* %82)
  store i32 0, i32* %3, align 4
  br label %88

84:                                               ; preds = %65
  %85 = load %struct.cred*, %struct.cred** %6, align 8
  %86 = call i32 @put_cred(%struct.cred* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %67, %52, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @get_cred(%struct.cred*) #1

declare dso_local i32 @alter_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @kdebug(i8*, %struct.cred*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @read_cred_subscribers(%struct.cred*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @create_user_ns(%struct.cred*) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
