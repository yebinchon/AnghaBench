; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_compute_xperms.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_compute_xperms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32 }
%struct.avtab_key = type { i32 }
%struct.extended_perms_decision = type { i32 }
%struct.avtab_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cond_compute_xperms(%struct.avtab* %0, %struct.avtab_key* %1, %struct.extended_perms_decision* %2) #0 {
  %4 = alloca %struct.avtab*, align 8
  %5 = alloca %struct.avtab_key*, align 8
  %6 = alloca %struct.extended_perms_decision*, align 8
  %7 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %4, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %5, align 8
  store %struct.extended_perms_decision* %2, %struct.extended_perms_decision** %6, align 8
  %8 = load %struct.avtab*, %struct.avtab** %4, align 8
  %9 = icmp ne %struct.avtab* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %12 = icmp ne %struct.avtab_key* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %6, align 8
  %15 = icmp ne %struct.extended_perms_decision* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %3
  br label %44

17:                                               ; preds = %13
  %18 = load %struct.avtab*, %struct.avtab** %4, align 8
  %19 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %20 = call %struct.avtab_node* @avtab_search_node(%struct.avtab* %18, %struct.avtab_key* %19)
  store %struct.avtab_node* %20, %struct.avtab_node** %7, align 8
  br label %21

21:                                               ; preds = %37, %17
  %22 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %23 = icmp ne %struct.avtab_node* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %26 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AVTAB_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %6, align 8
  %34 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %35 = call i32 @services_compute_xperms_decision(%struct.extended_perms_decision* %33, %struct.avtab_node* %34)
  br label %36

36:                                               ; preds = %32, %24
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %39 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %40 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node* %38, i32 %41)
  store %struct.avtab_node* %42, %struct.avtab_node** %7, align 8
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %16
  ret void
}

declare dso_local %struct.avtab_node* @avtab_search_node(%struct.avtab*, %struct.avtab_key*) #1

declare dso_local i32 @services_compute_xperms_decision(%struct.extended_perms_decision*, %struct.avtab_node*) #1

declare dso_local %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
