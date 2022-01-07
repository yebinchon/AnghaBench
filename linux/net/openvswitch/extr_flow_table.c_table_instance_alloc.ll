; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_table_instance_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_table_instance_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_instance = type { i32, i32, i32, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table_instance* (i32)* @table_instance_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table_instance* @table_instance_alloc(i32 %0) #0 {
  %2 = alloca %struct.table_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_instance*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.table_instance* @kmalloc(i32 32, i32 %6)
  store %struct.table_instance* %7, %struct.table_instance** %4, align 8
  %8 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %9 = icmp ne %struct.table_instance* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.table_instance* null, %struct.table_instance** %2, align 8
  br label %52

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kvmalloc_array(i32 %12, i32 4, i32 %13)
  %15 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %16 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %18 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %23 = call i32 @kfree(%struct.table_instance* %22)
  store %struct.table_instance* null, %struct.table_instance** %2, align 8
  br label %52

24:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %31 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @INIT_HLIST_HEAD(i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %43 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %45 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %47 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %49 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %48, i32 0, i32 2
  %50 = call i32 @get_random_bytes(i32* %49, i32 4)
  %51 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  store %struct.table_instance* %51, %struct.table_instance** %2, align 8
  br label %52

52:                                               ; preds = %40, %21, %10
  %53 = load %struct.table_instance*, %struct.table_instance** %2, align 8
  ret %struct.table_instance* %53
}

declare dso_local %struct.table_instance* @kmalloc(i32, i32) #1

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.table_instance*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
