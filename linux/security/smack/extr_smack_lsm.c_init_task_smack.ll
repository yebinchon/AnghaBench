; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_init_task_smack.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_init_task_smack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_smack = type { i32, i32, i32, %struct.smack_known*, %struct.smack_known* }
%struct.smack_known = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_smack*, %struct.smack_known*, %struct.smack_known*)* @init_task_smack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_task_smack(%struct.task_smack* %0, %struct.smack_known* %1, %struct.smack_known* %2) #0 {
  %4 = alloca %struct.task_smack*, align 8
  %5 = alloca %struct.smack_known*, align 8
  %6 = alloca %struct.smack_known*, align 8
  store %struct.task_smack* %0, %struct.task_smack** %4, align 8
  store %struct.smack_known* %1, %struct.smack_known** %5, align 8
  store %struct.smack_known* %2, %struct.smack_known** %6, align 8
  %7 = load %struct.smack_known*, %struct.smack_known** %5, align 8
  %8 = load %struct.task_smack*, %struct.task_smack** %4, align 8
  %9 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %8, i32 0, i32 4
  store %struct.smack_known* %7, %struct.smack_known** %9, align 8
  %10 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %11 = load %struct.task_smack*, %struct.task_smack** %4, align 8
  %12 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %11, i32 0, i32 3
  store %struct.smack_known* %10, %struct.smack_known** %12, align 8
  %13 = load %struct.task_smack*, %struct.task_smack** %4, align 8
  %14 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.task_smack*, %struct.task_smack** %4, align 8
  %17 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.task_smack*, %struct.task_smack** %4, align 8
  %20 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %19, i32 0, i32 0
  %21 = call i32 @mutex_init(i32* %20)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
