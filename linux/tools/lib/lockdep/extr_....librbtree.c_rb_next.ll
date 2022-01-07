; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_....librbtree.c_rb_next.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_....librbtree.c_rb_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_node* @rb_next(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %6 = call i64 @RB_EMPTY_NODE(%struct.rb_node* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 0
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %13 = icmp ne %struct.rb_node* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  store %struct.rb_node* %17, %struct.rb_node** %3, align 8
  br label %18

18:                                               ; preds = %23, %14
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 1
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = icmp ne %struct.rb_node* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 1
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  store %struct.rb_node* %26, %struct.rb_node** %3, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %28, %struct.rb_node** %2, align 8
  br label %46

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %42, %29
  %31 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %32 = call %struct.rb_node* @rb_parent(%struct.rb_node* %31)
  store %struct.rb_node* %32, %struct.rb_node** %4, align 8
  %33 = icmp ne %struct.rb_node* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %36 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %37 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i32 0, i32 0
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8
  %39 = icmp eq %struct.rb_node* %35, %38
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %43, %struct.rb_node** %3, align 8
  br label %30

44:                                               ; preds = %40
  %45 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %45, %struct.rb_node** %2, align 8
  br label %46

46:                                               ; preds = %44, %27, %8
  %47 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  ret %struct.rb_node* %47
}

declare dso_local i64 @RB_EMPTY_NODE(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
