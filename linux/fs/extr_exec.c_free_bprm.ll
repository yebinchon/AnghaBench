; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_free_bprm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_free_bprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.linux_binprm = type { i64, i64, i64, i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @free_bprm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_bprm(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %3 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %4 = call i32 @free_arg_pages(%struct.linux_binprm* %3)
  %5 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %6 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %16 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @abort_creds(i64 %17)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %21 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %26 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @allow_write_access(i64 %27)
  %29 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %30 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @fput(i64 %31)
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %35 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %38 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %43 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.linux_binprm*
  %46 = call i32 @kfree(%struct.linux_binprm* %45)
  br label %47

47:                                               ; preds = %41, %33
  %48 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %49 = call i32 @kfree(%struct.linux_binprm* %48)
  ret void
}

declare dso_local i32 @free_arg_pages(%struct.linux_binprm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @abort_creds(i64) #1

declare dso_local i32 @allow_write_access(i64) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @kfree(%struct.linux_binprm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
