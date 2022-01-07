; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_load.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64 }
%struct.xa_node = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xas_load(%struct.xa_state* %0) #0 {
  %2 = alloca %struct.xa_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xa_node*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %2, align 8
  %5 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %6 = call i8* @xas_start(%struct.xa_state* %5)
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @xa_is_node(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.xa_node* @xa_to_node(i8* %12)
  store %struct.xa_node* %13, %struct.xa_node** %4, align 8
  %14 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %15 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %18 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %32

22:                                               ; preds = %11
  %23 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %24 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %25 = call i8* @xas_descend(%struct.xa_state* %23, %struct.xa_node* %24)
  store i8* %25, i8** %3, align 8
  %26 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %27 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %22
  br label %7

32:                                               ; preds = %30, %21, %7
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i8* @xas_start(%struct.xa_state*) #1

declare dso_local i64 @xa_is_node(i8*) #1

declare dso_local %struct.xa_node* @xa_to_node(i8*) #1

declare dso_local i8* @xas_descend(%struct.xa_state*, %struct.xa_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
