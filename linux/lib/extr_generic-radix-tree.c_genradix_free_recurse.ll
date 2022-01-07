; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c_genradix_free_recurse.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c_genradix_free_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genradix_node = type { %struct.genradix_node** }

@GENRADIX_ARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genradix_node*, i32)* @genradix_free_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genradix_free_recurse(%struct.genradix_node* %0, i32 %1) #0 {
  %3 = alloca %struct.genradix_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.genradix_node* %0, %struct.genradix_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GENRADIX_ARY, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.genradix_node*, %struct.genradix_node** %3, align 8
  %15 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %14, i32 0, i32 0
  %16 = load %struct.genradix_node**, %struct.genradix_node*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %16, i64 %18
  %20 = load %struct.genradix_node*, %struct.genradix_node** %19, align 8
  %21 = icmp ne %struct.genradix_node* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.genradix_node*, %struct.genradix_node** %3, align 8
  %24 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %23, i32 0, i32 0
  %25 = load %struct.genradix_node**, %struct.genradix_node*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %25, i64 %27
  %29 = load %struct.genradix_node*, %struct.genradix_node** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sub i32 %30, 1
  call void @genradix_free_recurse(%struct.genradix_node* %29, i32 %31)
  br label %32

32:                                               ; preds = %22, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.genradix_node*, %struct.genradix_node** %3, align 8
  %39 = call i32 @genradix_free_node(%struct.genradix_node* %38)
  ret void
}

declare dso_local i32 @genradix_free_node(%struct.genradix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
