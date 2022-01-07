; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_rblist.c_rblist__exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_rblist.c_rblist__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rblist = type { i32 }
%struct.rb_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rblist__exit(%struct.rblist* %0) #0 {
  %2 = alloca %struct.rblist*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rblist* %0, %struct.rblist** %2, align 8
  %5 = load %struct.rblist*, %struct.rblist** %2, align 8
  %6 = getelementptr inbounds %struct.rblist, %struct.rblist* %5, i32 0, i32 0
  %7 = call %struct.rb_node* @rb_first_cached(i32* %6)
  store %struct.rb_node* %7, %struct.rb_node** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %12, %struct.rb_node** %3, align 8
  %13 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %14 = call %struct.rb_node* @rb_next(%struct.rb_node* %13)
  store %struct.rb_node* %14, %struct.rb_node** %4, align 8
  %15 = load %struct.rblist*, %struct.rblist** %2, align 8
  %16 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %17 = call i32 @rblist__remove_node(%struct.rblist* %15, %struct.rb_node* %16)
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local %struct.rb_node* @rb_first_cached(i32*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @rblist__remove_node(%struct.rblist*, %struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
