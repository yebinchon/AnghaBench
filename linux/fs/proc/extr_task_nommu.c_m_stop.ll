; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_m_stop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_m_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.proc_maps_private* }
%struct.proc_maps_private = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @m_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.proc_maps_private*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.proc_maps_private*, %struct.proc_maps_private** %7, align 8
  store %struct.proc_maps_private* %8, %struct.proc_maps_private** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @IS_ERR_OR_NULL(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %14 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @up_read(i32* %16)
  %18 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %19 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @mmput(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %24 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %29 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @put_task_struct(i32* %30)
  %32 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %33 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.TYPE_2__*) #1

declare dso_local i32 @put_task_struct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
