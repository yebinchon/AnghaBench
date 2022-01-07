; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_flush_old_exec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_flush_old_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.linux_binprm = type { i32, i32*, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@USER_DS = common dso_local global i32 0, align 4
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@PF_FORKNOEXEC = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@PF_NOFREEZE = common dso_local global i32 0, align 4
@PF_NO_SETAFFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_old_exec(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %6 = call i32 @de_thread(%struct.TYPE_3__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %12 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %15 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @set_mm_exe_file(i32* %13, i32 %16)
  %18 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %19 = call i32 @acct_arg_size(%struct.linux_binprm* %18, i32 0)
  %20 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %21 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @exec_mmap(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %59

27:                                               ; preds = %10
  %28 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %29 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @USER_DS, align 4
  %31 = call i32 @set_fs(i32 %30)
  %32 = load i32, i32* @PF_RANDOMIZE, align 4
  %33 = load i32, i32* @PF_FORKNOEXEC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PF_KTHREAD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PF_NOFREEZE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PF_NO_SETAFFINITY, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = call i32 (...) @flush_thread()
  %47 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %48 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @do_close_on_exec(i32 %57)
  store i32 0, i32* %2, align 4
  br label %61

59:                                               ; preds = %26, %9
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %27
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @de_thread(%struct.TYPE_3__*) #1

declare dso_local i32 @set_mm_exe_file(i32*, i32) #1

declare dso_local i32 @acct_arg_size(%struct.linux_binprm*, i32) #1

declare dso_local i32 @exec_mmap(i32*) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @flush_thread(...) #1

declare dso_local i32 @do_close_on_exec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
