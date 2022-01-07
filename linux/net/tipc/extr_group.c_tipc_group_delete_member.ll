; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_delete_member.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_delete_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32, i64, i64, i32, i32 }
%struct.tipc_member = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_group*, %struct.tipc_member*)* @tipc_group_delete_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_group_delete_member(%struct.tipc_group* %0, %struct.tipc_member* %1) #0 {
  %3 = alloca %struct.tipc_group*, align 8
  %4 = alloca %struct.tipc_member*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %3, align 8
  store %struct.tipc_member* %1, %struct.tipc_member** %4, align 8
  %5 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %6 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %5, i32 0, i32 4
  %7 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %7, i32 0, i32 4
  %9 = call i32 @rb_erase(i32* %6, i32* %8)
  %10 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %20 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %23 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i64 @less(i32 %21, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %30 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %28, %18, %2
  %34 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %35 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %34, i32 0, i32 2
  %36 = call i32 @list_del_init(i32* %35)
  %37 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %38 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %37, i32 0, i32 1
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %41 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %42 = call i32 @tipc_group_decr_active(%struct.tipc_group* %40, %struct.tipc_member* %41)
  %43 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %44 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %45 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tipc_group_find_node(%struct.tipc_group* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %33
  %50 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %51 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %50, i32 0, i32 0
  %52 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %53 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tipc_nlist_del(i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %33
  %57 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %58 = call i32 @kfree(%struct.tipc_member* %57)
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i64 @less(i32, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @tipc_group_decr_active(%struct.tipc_group*, %struct.tipc_member*) #1

declare dso_local i32 @tipc_group_find_node(%struct.tipc_group*, i32) #1

declare dso_local i32 @tipc_nlist_del(i32*, i32) #1

declare dso_local i32 @kfree(%struct.tipc_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
