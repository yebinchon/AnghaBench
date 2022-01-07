; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_build_root_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_build_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not build root node /%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.node*, i8*)* @build_root_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @build_root_node(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.node*, %struct.node** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.node* @get_subnode(%struct.node* %6, i8* %7)
  store %struct.node* %8, %struct.node** %5, align 8
  %9 = load %struct.node*, %struct.node** %5, align 8
  %10 = icmp ne %struct.node* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.node*, %struct.node** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.node* @build_and_name_child_node(%struct.node* %12, i8* %13)
  store %struct.node* %14, %struct.node** %5, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %22
}

declare dso_local %struct.node* @get_subnode(%struct.node*, i8*) #1

declare dso_local %struct.node* @build_and_name_child_node(%struct.node*, i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
