; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_alloc_tree.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_alloc_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_tree = type { i32, i32*, i32, i32, i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_tree* (i8*)* @alloc_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_tree* @alloc_tree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audit_tree*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4)
  %6 = add i64 48, %5
  %7 = add i64 %6, 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.audit_tree* @kmalloc(i64 %7, i32 %8)
  store %struct.audit_tree* %9, %struct.audit_tree** %3, align 8
  %10 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %11 = icmp ne %struct.audit_tree* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %14 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %13, i32 0, i32 7
  %15 = call i32 @refcount_set(i32* %14, i32 1)
  %16 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %17 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %19 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %18, i32 0, i32 5
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %22 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %21, i32 0, i32 4
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %25 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %28 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %31 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  %33 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @strcpy(i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %12, %1
  %38 = load %struct.audit_tree*, %struct.audit_tree** %3, align 8
  ret %struct.audit_tree* %38
}

declare dso_local %struct.audit_tree* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
