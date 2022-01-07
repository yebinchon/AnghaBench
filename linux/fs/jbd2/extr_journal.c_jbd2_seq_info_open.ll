; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_seq_info_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_seq_info_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.jbd2_stats_proc_session* }
%struct.jbd2_stats_proc_session = type { %struct.jbd2_stats_proc_session*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jbd2_seq_info_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @jbd2_seq_info_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_seq_info_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.jbd2_stats_proc_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_3__* @PDE_DATA(%struct.inode* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 16, i32 %13)
  %15 = bitcast i8* %14 to %struct.jbd2_stats_proc_session*
  store %struct.jbd2_stats_proc_session* %15, %struct.jbd2_stats_proc_session** %7, align 8
  %16 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %17 = icmp eq %struct.jbd2_stats_proc_session* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.jbd2_stats_proc_session*
  %26 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %27 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %26, i32 0, i32 0
  store %struct.jbd2_stats_proc_session* %25, %struct.jbd2_stats_proc_session** %27, align 8
  %28 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %29 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %28, i32 0, i32 0
  %30 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %29, align 8
  %31 = icmp eq %struct.jbd2_stats_proc_session* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %34 = call i32 @kfree(%struct.jbd2_stats_proc_session* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %21
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %42 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %41, i32 0, i32 0
  %43 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memcpy(%struct.jbd2_stats_proc_session* %43, i32* %45, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %50 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %49, i32 0, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = call i32 @seq_open(%struct.file* %54, i32* @jbd2_seq_info_ops)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %37
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load %struct.seq_file*, %struct.seq_file** %60, align 8
  store %struct.seq_file* %61, %struct.seq_file** %10, align 8
  %62 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %63 = load %struct.seq_file*, %struct.seq_file** %10, align 8
  %64 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %63, i32 0, i32 0
  store %struct.jbd2_stats_proc_session* %62, %struct.jbd2_stats_proc_session** %64, align 8
  br label %72

65:                                               ; preds = %37
  %66 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %67 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %66, i32 0, i32 0
  %68 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %67, align 8
  %69 = call i32 @kfree(%struct.jbd2_stats_proc_session* %68)
  %70 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %71 = call i32 @kfree(%struct.jbd2_stats_proc_session* %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %32, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_3__* @PDE_DATA(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.jbd2_stats_proc_session*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.jbd2_stats_proc_session*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
