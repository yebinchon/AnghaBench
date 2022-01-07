; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32, %struct.name_table* }
%struct.name_table = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TIPC_NAMETBL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nametbl_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  %5 = alloca %struct.name_table*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.tipc_net* @tipc_net(%struct.net* %7)
  store %struct.tipc_net* %8, %struct.tipc_net** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.name_table* @kzalloc(i32 24, i32 %9)
  store %struct.name_table* %10, %struct.name_table** %5, align 8
  %11 = load %struct.name_table*, %struct.name_table** %5, align 8
  %12 = icmp ne %struct.name_table* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TIPC_NAMETBL_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.name_table*, %struct.name_table** %5, align 8
  %23 = getelementptr inbounds %struct.name_table, %struct.name_table* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @INIT_HLIST_HEAD(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.name_table*, %struct.name_table** %5, align 8
  %34 = getelementptr inbounds %struct.name_table, %struct.name_table* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.name_table*, %struct.name_table** %5, align 8
  %37 = getelementptr inbounds %struct.name_table, %struct.name_table* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.name_table*, %struct.name_table** %5, align 8
  %40 = getelementptr inbounds %struct.name_table, %struct.name_table* %39, i32 0, i32 0
  %41 = call i32 @rwlock_init(i32* %40)
  %42 = load %struct.name_table*, %struct.name_table** %5, align 8
  %43 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %44 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %43, i32 0, i32 1
  store %struct.name_table* %42, %struct.name_table** %44, align 8
  %45 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %46 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_init(i32* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.name_table* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
