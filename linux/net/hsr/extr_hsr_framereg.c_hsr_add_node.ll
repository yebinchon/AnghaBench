; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_add_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_node = type { i64*, i32, i32*, i32 }
%struct.list_head = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HSR_PT_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hsr_node* @hsr_add_node(%struct.list_head* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hsr_node*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hsr_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.hsr_node* @kzalloc(i32 32, i32 %11)
  store %struct.hsr_node* %12, %struct.hsr_node** %8, align 8
  %13 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %14 = icmp ne %struct.hsr_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.hsr_node* null, %struct.hsr_node** %4, align 8
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %18 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @ether_addr_copy(i32 %19, i8* %20)
  %22 = load i64, i64* @jiffies, align 8
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %35, %16
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @HSR_PT_PORTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %30 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %28, i64* %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %23

38:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @HSR_PT_PORTS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %46 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %56 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %55, i32 0, i32 1
  %57 = load %struct.list_head*, %struct.list_head** %5, align 8
  %58 = call i32 @list_add_tail_rcu(i32* %56, %struct.list_head* %57)
  %59 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  store %struct.hsr_node* %59, %struct.hsr_node** %4, align 8
  br label %60

60:                                               ; preds = %54, %15
  %61 = load %struct.hsr_node*, %struct.hsr_node** %4, align 8
  ret %struct.hsr_node* %61
}

declare dso_local %struct.hsr_node* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
