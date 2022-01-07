; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_cred_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_cred_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type opaque
%struct.task_smack = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32)* @smack_cred_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_cred_prepare(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_smack*, align 8
  %9 = alloca %struct.task_smack*, align 8
  %10 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cred*, %struct.cred** %6, align 8
  %12 = call %struct.task_smack* @smack_cred(%struct.cred* %11)
  store %struct.task_smack* %12, %struct.task_smack** %8, align 8
  %13 = load %struct.cred*, %struct.cred** %5, align 8
  %14 = call %struct.task_smack* @smack_cred(%struct.cred* %13)
  store %struct.task_smack* %14, %struct.task_smack** %9, align 8
  %15 = load %struct.task_smack*, %struct.task_smack** %9, align 8
  %16 = load %struct.task_smack*, %struct.task_smack** %8, align 8
  %17 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.task_smack*, %struct.task_smack** %8, align 8
  %20 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @init_task_smack(%struct.task_smack* %15, i32 %18, i32 %21)
  %23 = load %struct.task_smack*, %struct.task_smack** %9, align 8
  %24 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %23, i32 0, i32 1
  %25 = load %struct.task_smack*, %struct.task_smack** %8, align 8
  %26 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @smk_copy_rules(i32* %24, i32* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.task_smack*, %struct.task_smack** %9, align 8
  %35 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %34, i32 0, i32 0
  %36 = load %struct.task_smack*, %struct.task_smack** %8, align 8
  %37 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @smk_copy_relabel(i32* %35, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.task_smack* @smack_cred(%struct.cred*) #1

declare dso_local i32 @init_task_smack(%struct.task_smack*, i32, i32) #1

declare dso_local i32 @smk_copy_rules(i32*, i32*, i32) #1

declare dso_local i32 @smk_copy_relabel(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
