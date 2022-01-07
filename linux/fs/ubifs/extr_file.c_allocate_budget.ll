; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_allocate_budget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_allocate_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32, i32, i32 }
%struct.ubifs_info = type { i32 }
%struct.page = type { i32 }
%struct.ubifs_inode = type { i64, i32 }

@__const.allocate_budget.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 0, i32 0, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.page*, %struct.ubifs_inode*, i32)* @allocate_budget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_budget(%struct.ubifs_info* %0, %struct.page* %1, %struct.ubifs_inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.ubifs_inode* %2, %struct.ubifs_inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = bitcast %struct.ubifs_budget_req* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.allocate_budget.req to i8*), i64 16, i1 false)
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = call i64 @PagePrivate(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %56

19:                                               ; preds = %15
  %20 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %21 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %24 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %56

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %10, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %53

30:                                               ; preds = %4
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i64 @PageChecked(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %10, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %10, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %46 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %10, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %41
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %55 = call i32 @ubifs_budget_space(%struct.ubifs_info* %54, %struct.ubifs_budget_req* %10)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %27, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @PagePrivate(%struct.page*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @PageChecked(%struct.page*) #2

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
