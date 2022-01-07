; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_dest_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_dest_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.tipc_dest = type { i32, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_dest_push(%struct.list_head* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tipc_dest*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @tipc_dest_find(%struct.list_head* %9, i8* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.tipc_dest* @kmalloc(i32 24, i32 %16)
  store %struct.tipc_dest* %17, %struct.tipc_dest** %8, align 8
  %18 = load %struct.tipc_dest*, %struct.tipc_dest** %8, align 8
  %19 = icmp ne %struct.tipc_dest* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.tipc_dest*, %struct.tipc_dest** %8, align 8
  %28 = getelementptr inbounds %struct.tipc_dest, %struct.tipc_dest* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.tipc_dest*, %struct.tipc_dest** %8, align 8
  %31 = getelementptr inbounds %struct.tipc_dest, %struct.tipc_dest* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.tipc_dest*, %struct.tipc_dest** %8, align 8
  %33 = getelementptr inbounds %struct.tipc_dest, %struct.tipc_dest* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %5, align 8
  %35 = call i32 @list_add(i32* %33, %struct.list_head* %34)
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %24, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @tipc_dest_find(%struct.list_head*, i8*, i8*) #1

declare dso_local %struct.tipc_dest* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
