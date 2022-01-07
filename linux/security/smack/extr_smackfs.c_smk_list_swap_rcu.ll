; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_list_swap_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_list_swap_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_head*)* @smk_list_swap_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smk_list_swap_rcu(%struct.list_head* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.list_head*, %struct.list_head** %3, align 8
  %8 = call i64 @list_empty(%struct.list_head* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8
  %13 = call i32 @list_splice_init_rcu(%struct.list_head* %11, %struct.list_head* %12, i32 (...)* @synchronize_rcu)
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i32 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  store %struct.list_head* %17, %struct.list_head** %5, align 8
  %18 = load %struct.list_head*, %struct.list_head** %3, align 8
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %18, i32 0, i32 1
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8
  store %struct.list_head* %20, %struct.list_head** %6, align 8
  %21 = load %struct.list_head*, %struct.list_head** %3, align 8
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 1
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i32 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %25, align 8
  %26 = load %struct.list_head*, %struct.list_head** %3, align 8
  %27 = load %struct.list_head*, %struct.list_head** %4, align 8
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i32 0, i32 0
  %29 = load %struct.list_head*, %struct.list_head** %28, align 8
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i32 0, i32 1
  store %struct.list_head* %26, %struct.list_head** %30, align 8
  %31 = load %struct.list_head*, %struct.list_head** %3, align 8
  %32 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8
  %34 = load %struct.list_head*, %struct.list_head** %4, align 8
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i32 0, i32 0
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8
  %37 = call i32 @rcu_assign_pointer(%struct.list_head* %33, %struct.list_head* %36)
  %38 = load %struct.list_head*, %struct.list_head** %4, align 8
  %39 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i32 0, i32 1
  %40 = load %struct.list_head*, %struct.list_head** %39, align 8
  %41 = load %struct.list_head*, %struct.list_head** %3, align 8
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %41, i32 0, i32 1
  store %struct.list_head* %40, %struct.list_head** %42, align 8
  %43 = call i32 (...) @synchronize_rcu()
  %44 = load %struct.list_head*, %struct.list_head** %5, align 8
  %45 = load %struct.list_head*, %struct.list_head** %4, align 8
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i32 0, i32 0
  store %struct.list_head* %44, %struct.list_head** %46, align 8
  %47 = load %struct.list_head*, %struct.list_head** %6, align 8
  %48 = load %struct.list_head*, %struct.list_head** %4, align 8
  %49 = getelementptr inbounds %struct.list_head, %struct.list_head* %48, i32 0, i32 1
  store %struct.list_head* %47, %struct.list_head** %49, align 8
  %50 = load %struct.list_head*, %struct.list_head** %4, align 8
  %51 = load %struct.list_head*, %struct.list_head** %5, align 8
  %52 = getelementptr inbounds %struct.list_head, %struct.list_head* %51, i32 0, i32 1
  store %struct.list_head* %50, %struct.list_head** %52, align 8
  %53 = load %struct.list_head*, %struct.list_head** %4, align 8
  %54 = load %struct.list_head*, %struct.list_head** %6, align 8
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %54, i32 0, i32 0
  store %struct.list_head* %53, %struct.list_head** %55, align 8
  br label %56

56:                                               ; preds = %14, %10
  ret void
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_splice_init_rcu(%struct.list_head*, %struct.list_head*, i32 (...)*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rcu_assign_pointer(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
