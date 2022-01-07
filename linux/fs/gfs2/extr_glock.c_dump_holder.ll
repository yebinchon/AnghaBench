; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_dump_holder.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_dump_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gfs2_holder = type { i64, i64, i32, i32, i32, i32 }
%struct.task_struct = type { i8* }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s H: s:%s f:%s e:%d p:%ld [%s] %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(ended)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gfs2_holder*, i8*)* @dump_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_holder(%struct.seq_file* %0, %struct.gfs2_holder* %1, i8* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.gfs2_holder*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca [32 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.gfs2_holder* %1, %struct.gfs2_holder** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.task_struct* null, %struct.task_struct** %7, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @PIDTYPE_PID, align 4
  %19 = call %struct.task_struct* @pid_task(i64 %17, i32 %18)
  store %struct.task_struct* %19, %struct.task_struct** %7, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @state2str(i32 %25)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %28 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hflags2str(i8* %27, i32 %30, i32 %33)
  %35 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %20
  %43 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %44 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @pid_nr(i64 %45)
  br label %48

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i64 [ %46, %42 ], [ -1, %47 ]
  %50 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %51 = icmp ne %struct.task_struct* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i8* [ %55, %52 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = load %struct.gfs2_holder*, %struct.gfs2_holder** %5, align 8
  %60 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @gfs2_print_dbg(%struct.seq_file* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %26, i32 %34, i32 %37, i64 %49, i8* %58, i8* %62)
  %64 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i64, i32) #1

declare dso_local i32 @gfs2_print_dbg(%struct.seq_file*, i8*, i8*, i32, i32, i32, i64, i8*, i8*) #1

declare dso_local i32 @state2str(i32) #1

declare dso_local i32 @hflags2str(i8*, i32, i32) #1

declare dso_local i64 @pid_nr(i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
