; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_....includelinuxrbtree.h_rb_link_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_....includelinuxrbtree.h_rb_link_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, %struct.rb_node*, %struct.rb_node**)* @rb_link_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_link_node(%struct.rb_node* %0, %struct.rb_node* %1, %struct.rb_node** %2) #0 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node**, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  store %struct.rb_node** %2, %struct.rb_node*** %6, align 8
  %7 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %8 = ptrtoint %struct.rb_node* %7 to i64
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %10 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %12 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %14 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %16 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  store %struct.rb_node* %15, %struct.rb_node** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
