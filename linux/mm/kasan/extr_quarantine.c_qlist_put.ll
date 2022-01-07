; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlist_put.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlist_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_head = type { i64, %struct.qlist_node*, %struct.qlist_node* }
%struct.qlist_node = type { %struct.qlist_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlist_head*, %struct.qlist_node*, i64)* @qlist_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlist_put(%struct.qlist_head* %0, %struct.qlist_node* %1, i64 %2) #0 {
  %4 = alloca %struct.qlist_head*, align 8
  %5 = alloca %struct.qlist_node*, align 8
  %6 = alloca i64, align 8
  store %struct.qlist_head* %0, %struct.qlist_head** %4, align 8
  store %struct.qlist_node* %1, %struct.qlist_node** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %8 = call i32 @qlist_empty(%struct.qlist_head* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %13 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %14 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %13, i32 0, i32 2
  store %struct.qlist_node* %12, %struct.qlist_node** %14, align 8
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %17 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %18 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %17, i32 0, i32 1
  %19 = load %struct.qlist_node*, %struct.qlist_node** %18, align 8
  %20 = getelementptr inbounds %struct.qlist_node, %struct.qlist_node* %19, i32 0, i32 0
  store %struct.qlist_node* %16, %struct.qlist_node** %20, align 8
  br label %21

21:                                               ; preds = %15, %11
  %22 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %23 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %24 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %23, i32 0, i32 1
  store %struct.qlist_node* %22, %struct.qlist_node** %24, align 8
  %25 = load %struct.qlist_node*, %struct.qlist_node** %5, align 8
  %26 = getelementptr inbounds %struct.qlist_node, %struct.qlist_node* %25, i32 0, i32 0
  store %struct.qlist_node* null, %struct.qlist_node** %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.qlist_head*, %struct.qlist_head** %4, align 8
  %29 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %27
  store i64 %31, i64* %29, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlist_empty(%struct.qlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
