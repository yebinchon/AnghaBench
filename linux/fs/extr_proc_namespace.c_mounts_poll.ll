; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_proc_namespace.c_mounts_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_proc_namespace.c_mounts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i32, %struct.proc_mounts* }
%struct.proc_mounts = type { %struct.mnt_namespace* }
%struct.mnt_namespace = type { i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @mounts_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mounts_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.proc_mounts*, align 8
  %7 = alloca %struct.mnt_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.seq_file*, %struct.seq_file** %11, align 8
  store %struct.seq_file* %12, %struct.seq_file** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 1
  %15 = load %struct.proc_mounts*, %struct.proc_mounts** %14, align 8
  store %struct.proc_mounts* %15, %struct.proc_mounts** %6, align 8
  %16 = load %struct.proc_mounts*, %struct.proc_mounts** %6, align 8
  %17 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %16, i32 0, i32 0
  %18 = load %struct.mnt_namespace*, %struct.mnt_namespace** %17, align 8
  store %struct.mnt_namespace* %18, %struct.mnt_namespace** %7, align 8
  %19 = load i32, i32* @EPOLLIN, align 4
  %20 = load i32, i32* @EPOLLRDNORM, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = load %struct.proc_mounts*, %struct.proc_mounts** %6, align 8
  %24 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %23, i32 0, i32 0
  %25 = load %struct.mnt_namespace*, %struct.mnt_namespace** %24, align 8
  %26 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %25, i32 0, i32 1
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @poll_wait(%struct.file* %22, i32* %26, i32* %27)
  %29 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %30 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @READ_ONCE(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %41 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @EPOLLERR, align 4
  %43 = load i32, i32* @EPOLLPRI, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %38, %2
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
