; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_descend.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_descend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, i32, %struct.xa_node*, i32 }
%struct.xa_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xa_state*, %struct.xa_node*)* @xas_descend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xas_descend(%struct.xa_state* %0, %struct.xa_node* %1) #0 {
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca %struct.xa_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  store %struct.xa_node* %1, %struct.xa_node** %4, align 8
  %7 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %8 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %11 = call i32 @get_offset(i32 %9, %struct.xa_node* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %13 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @xa_entry(i32 %14, %struct.xa_node* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %19 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %20 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %19, i32 0, i32 2
  store %struct.xa_node* %18, %struct.xa_node** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @xa_is_sibling(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @xa_to_sibling(i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %28 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xa_node*, %struct.xa_node** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @xa_entry(i32 %29, %struct.xa_node* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %24, %2
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %36 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %6, align 8
  ret i8* %37
}

declare dso_local i32 @get_offset(i32, %struct.xa_node*) #1

declare dso_local i8* @xa_entry(i32, %struct.xa_node*, i32) #1

declare dso_local i64 @xa_is_sibling(i8*) #1

declare dso_local i32 @xa_to_sibling(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
