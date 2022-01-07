; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_create_member.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_create_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_member = type { i32, i8*, i64, i8*, i8*, %struct.tipc_group*, i32, i32, i32 }
%struct.tipc_group = type { i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tipc_member* (%struct.tipc_group*, i8*, i8*, i8*, i32)* @tipc_group_create_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tipc_member* @tipc_group_create_member(%struct.tipc_group* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.tipc_member*, align 8
  %7 = alloca %struct.tipc_group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tipc_member*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.tipc_member* @kzalloc(i32 64, i32 %13)
  store %struct.tipc_member* %14, %struct.tipc_member** %12, align 8
  %15 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %16 = icmp ne %struct.tipc_member* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.tipc_member* null, %struct.tipc_member** %6, align 8
  br label %63

18:                                               ; preds = %5
  %19 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %20 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %19, i32 0, i32 8
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %23 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %26 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %25, i32 0, i32 6
  %27 = call i32 @__skb_queue_head_init(i32* %26)
  %28 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %29 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %30 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %29, i32 0, i32 5
  store %struct.tipc_group* %28, %struct.tipc_group** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %33 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %36 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %39 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %41 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %45 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %47 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %51 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %52 = call i32 @tipc_group_add_to_tree(%struct.tipc_group* %50, %struct.tipc_member* %51)
  %53 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %54 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %53, i32 0, i32 0
  %55 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %56 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @tipc_nlist_add(i32* %54, i8* %57)
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  %61 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.tipc_member*, %struct.tipc_member** %12, align 8
  store %struct.tipc_member* %62, %struct.tipc_member** %6, align 8
  br label %63

63:                                               ; preds = %18, %17
  %64 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  ret %struct.tipc_member* %64
}

declare dso_local %struct.tipc_member* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @tipc_group_add_to_tree(%struct.tipc_group*, %struct.tipc_member*) #1

declare dso_local i32 @tipc_nlist_add(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
