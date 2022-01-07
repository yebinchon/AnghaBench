; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.h_ebitmap_start_positive.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.h_ebitmap_start_positive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { %struct.ebitmap_node* }
%struct.ebitmap_node = type { i32, i32, %struct.ebitmap_node* }

@EBITMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebitmap*, %struct.ebitmap_node**)* @ebitmap_start_positive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebitmap_start_positive(%struct.ebitmap* %0, %struct.ebitmap_node** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebitmap*, align 8
  %5 = alloca %struct.ebitmap_node**, align 8
  %6 = alloca i32, align 4
  store %struct.ebitmap* %0, %struct.ebitmap** %4, align 8
  store %struct.ebitmap_node** %1, %struct.ebitmap_node*** %5, align 8
  %7 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %8 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %7, i32 0, i32 0
  %9 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %10 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %5, align 8
  store %struct.ebitmap_node* %9, %struct.ebitmap_node** %10, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %5, align 8
  %13 = load %struct.ebitmap_node*, %struct.ebitmap_node** %12, align 8
  %14 = icmp ne %struct.ebitmap_node* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %5, align 8
  %17 = load %struct.ebitmap_node*, %struct.ebitmap_node** %16, align 8
  %18 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EBITMAP_SIZE, align 4
  %21 = call i32 @find_first_bit(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EBITMAP_SIZE, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %5, align 8
  %27 = load %struct.ebitmap_node*, %struct.ebitmap_node** %26, align 8
  %28 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %5, align 8
  %35 = load %struct.ebitmap_node*, %struct.ebitmap_node** %34, align 8
  %36 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %35, i32 0, i32 2
  %37 = load %struct.ebitmap_node*, %struct.ebitmap_node** %36, align 8
  %38 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %5, align 8
  store %struct.ebitmap_node* %37, %struct.ebitmap_node** %38, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %41 = call i32 @ebitmap_length(%struct.ebitmap* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ebitmap_length(%struct.ebitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
