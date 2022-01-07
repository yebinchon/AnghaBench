; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_build_and_name_child_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_build_and_name_child_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.node*, i8*)* @build_and_name_child_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @build_and_name_child_node(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.node* @build_node(i32* null, i32* null, i32* null)
  store %struct.node* %6, %struct.node** %5, align 8
  %7 = load %struct.node*, %struct.node** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @xstrdup(i8* %8)
  %10 = call i32 @name_node(%struct.node* %7, i32 %9)
  %11 = load %struct.node*, %struct.node** %3, align 8
  %12 = load %struct.node*, %struct.node** %5, align 8
  %13 = call i32 @add_child(%struct.node* %11, %struct.node* %12)
  %14 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %14
}

declare dso_local %struct.node* @build_node(i32*, i32*, i32*) #1

declare dso_local i32 @name_node(%struct.node*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @add_child(%struct.node*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
