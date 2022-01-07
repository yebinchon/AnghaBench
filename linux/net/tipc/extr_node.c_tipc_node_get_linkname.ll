; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_get_linkname.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_get_linkname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }
%struct.tipc_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tipc_link* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_get_linkname(%struct.net* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tipc_link*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tipc_node*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call %struct.tipc_node* @tipc_node_find(%struct.net* %17, i64 %18)
  store %struct.tipc_node* %19, %struct.tipc_node** %14, align 8
  %20 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %21 = icmp ne %struct.tipc_node* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %54

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @MAX_BEARERS, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %50

29:                                               ; preds = %24
  %30 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %31 = call i32 @tipc_node_read_lock(%struct.tipc_node* %30)
  %32 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %33 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.tipc_link*, %struct.tipc_link** %37, align 8
  store %struct.tipc_link* %38, %struct.tipc_link** %12, align 8
  %39 = load %struct.tipc_link*, %struct.tipc_link** %12, align 8
  %40 = icmp ne %struct.tipc_link* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.tipc_link*, %struct.tipc_link** %12, align 8
  %44 = call i32 @tipc_link_name(%struct.tipc_link* %43)
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @strncpy(i8* %42, i32 %44, i64 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %41, %29
  %48 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %49 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %48)
  br label %50

50:                                               ; preds = %47, %28
  %51 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %52 = call i32 @tipc_node_put(%struct.tipc_node* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %22
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i64) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @tipc_link_name(%struct.tipc_link*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
