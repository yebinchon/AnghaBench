; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_list_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_list_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_node = type { %struct.cond_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cond_node*)* @cond_list_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_list_destroy(%struct.cond_node* %0) #0 {
  %2 = alloca %struct.cond_node*, align 8
  %3 = alloca %struct.cond_node*, align 8
  %4 = alloca %struct.cond_node*, align 8
  store %struct.cond_node* %0, %struct.cond_node** %2, align 8
  %5 = load %struct.cond_node*, %struct.cond_node** %2, align 8
  %6 = icmp eq %struct.cond_node* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.cond_node*, %struct.cond_node** %2, align 8
  store %struct.cond_node* %9, %struct.cond_node** %4, align 8
  br label %10

10:                                               ; preds = %19, %8
  %11 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %12 = icmp ne %struct.cond_node* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %15 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %14, i32 0, i32 0
  %16 = load %struct.cond_node*, %struct.cond_node** %15, align 8
  store %struct.cond_node* %16, %struct.cond_node** %3, align 8
  %17 = load %struct.cond_node*, %struct.cond_node** %4, align 8
  %18 = call i32 @cond_node_destroy(%struct.cond_node* %17)
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.cond_node*, %struct.cond_node** %3, align 8
  store %struct.cond_node* %20, %struct.cond_node** %4, align 8
  br label %10

21:                                               ; preds = %7, %10
  ret void
}

declare dso_local i32 @cond_node_destroy(%struct.cond_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
