; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_init_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_init_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32, i32, i32, %struct.ctl_node*, i32*, %struct.ctl_table_set*, %struct.ctl_table_root*, i32*, i64, %struct.ctl_table*, %struct.ctl_table* }
%struct.ctl_table_root = type { i32 }
%struct.ctl_table_set = type { i32 }
%struct.ctl_node = type { %struct.ctl_table_header* }
%struct.ctl_table = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table_header*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_node*, %struct.ctl_table*)* @init_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_header(%struct.ctl_table_header* %0, %struct.ctl_table_root* %1, %struct.ctl_table_set* %2, %struct.ctl_node* %3, %struct.ctl_table* %4) #0 {
  %6 = alloca %struct.ctl_table_header*, align 8
  %7 = alloca %struct.ctl_table_root*, align 8
  %8 = alloca %struct.ctl_table_set*, align 8
  %9 = alloca %struct.ctl_node*, align 8
  %10 = alloca %struct.ctl_table*, align 8
  %11 = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %6, align 8
  store %struct.ctl_table_root* %1, %struct.ctl_table_root** %7, align 8
  store %struct.ctl_table_set* %2, %struct.ctl_table_set** %8, align 8
  store %struct.ctl_node* %3, %struct.ctl_node** %9, align 8
  store %struct.ctl_table* %4, %struct.ctl_table** %10, align 8
  %12 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %13 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %14 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %13, i32 0, i32 10
  store %struct.ctl_table* %12, %struct.ctl_table** %14, align 8
  %15 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %17 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %16, i32 0, i32 9
  store %struct.ctl_table* %15, %struct.ctl_table** %17, align 8
  %18 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %19 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %21 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %23 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %25 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %24, i32 0, i32 7
  store i32* null, i32** %25, align 8
  %26 = load %struct.ctl_table_root*, %struct.ctl_table_root** %7, align 8
  %27 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %28 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %27, i32 0, i32 6
  store %struct.ctl_table_root* %26, %struct.ctl_table_root** %28, align 8
  %29 = load %struct.ctl_table_set*, %struct.ctl_table_set** %8, align 8
  %30 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %31 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %30, i32 0, i32 5
  store %struct.ctl_table_set* %29, %struct.ctl_table_set** %31, align 8
  %32 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %33 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %35 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %36 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %35, i32 0, i32 3
  store %struct.ctl_node* %34, %struct.ctl_node** %36, align 8
  %37 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %38 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %37, i32 0, i32 2
  %39 = call i32 @INIT_HLIST_HEAD(i32* %38)
  %40 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %41 = icmp ne %struct.ctl_node* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %5
  %43 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* %43, %struct.ctl_table** %11, align 8
  br label %44

44:                                               ; preds = %53, %42
  %45 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %46 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %51 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %52 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %51, i32 0, i32 0
  store %struct.ctl_table_header* %50, %struct.ctl_table_header** %52, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %55 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %54, i32 1
  store %struct.ctl_table* %55, %struct.ctl_table** %11, align 8
  %56 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %57 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %56, i32 1
  store %struct.ctl_node* %57, %struct.ctl_node** %9, align 8
  br label %44

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %5
  ret void
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
