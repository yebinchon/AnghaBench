; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2__journal_restart.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2__journal_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@current = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"restarting handle %p\0A\00", align 1
@_THIS_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2__journal_restart(%struct.TYPE_18__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = call i64 @is_handle_aborted(%struct.TYPE_18__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp sgt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @J_ASSERT(i32 %28)
  %30 = call %struct.TYPE_18__* (...) @journal_current_handle()
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = icmp eq %struct.TYPE_18__* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @J_ASSERT(i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = call i32 @read_lock(i32* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = call i32 @atomic_sub(i32 %43, i32* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %20
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sub_reserved_credits(%struct.TYPE_17__* %52, i32 %57)
  br label %59

59:                                               ; preds = %51, %20
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = call i64 @atomic_dec_and_test(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = call i32 @wake_up(i32* %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = call i32 @jbd_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @tid_geq(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = call i32 @read_unlock(i32* %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %68
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @jbd2_log_start_commit(%struct.TYPE_17__* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %68
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* @_THIS_IP_, align 4
  %102 = call i32 @rwsem_release(i32* %100, i32 1, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memalloc_nofs_restore(i32 %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @start_this_handle(%struct.TYPE_17__* %110, %struct.TYPE_18__* %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %98, %19
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @is_handle_aborted(%struct.TYPE_18__*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_18__* @journal_current_handle(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @sub_reserved_credits(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @tid_geq(i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @jbd2_log_start_commit(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @rwsem_release(i32*, i32, i32) #1

declare dso_local i32 @memalloc_nofs_restore(i32) #1

declare dso_local i32 @start_this_handle(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
