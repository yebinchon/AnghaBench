; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rbtree_test.c_check_postorder.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rbtree_test.c_check_postorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rb_node = type { i32 }

@root = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_postorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_postorder(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = call %struct.rb_node* @rb_first_postorder(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @root, i32 0, i32 0))
  store %struct.rb_node* %5, %struct.rb_node** %3, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %8 = icmp ne %struct.rb_node* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %14 = call %struct.rb_node* @rb_next_postorder(%struct.rb_node* %13)
  store %struct.rb_node* %14, %struct.rb_node** %3, align 8
  br label %6

15:                                               ; preds = %6
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  ret void
}

declare dso_local %struct.rb_node* @rb_first_postorder(i32*) #1

declare dso_local %struct.rb_node* @rb_next_postorder(%struct.rb_node*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
