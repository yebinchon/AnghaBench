; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_bprm_check_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_bprm_check_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tomoyo_task = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @tomoyo_bprm_check_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_bprm_check_security(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.tomoyo_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call %struct.tomoyo_task* @tomoyo_task(i32 %7)
  store %struct.tomoyo_task* %8, %struct.tomoyo_task** %4, align 8
  %9 = load %struct.tomoyo_task*, %struct.tomoyo_task** %4, align 8
  %10 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @tomoyo_read_lock()
  store i32 %14, i32* %5, align 4
  %15 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %16 = call i32 @tomoyo_find_next_domain(%struct.linux_binprm* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @tomoyo_read_unlock(i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.tomoyo_task*, %struct.tomoyo_task** %4, align 8
  %22 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %25 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32 @tomoyo_check_open_permission(i32 %23, i32* %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.tomoyo_task* @tomoyo_task(i32) #1

declare dso_local i32 @tomoyo_read_lock(...) #1

declare dso_local i32 @tomoyo_find_next_domain(%struct.linux_binprm*) #1

declare dso_local i32 @tomoyo_read_unlock(i32) #1

declare dso_local i32 @tomoyo_check_open_permission(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
