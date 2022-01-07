; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, i32 }
%struct.devlink_dpipe_table_ops = type { i32 }
%struct.devlink_dpipe_table = type { i8*, i32, i32, i8*, %struct.devlink_dpipe_table_ops* }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_dpipe_table_register(%struct.devlink* %0, i8* %1, %struct.devlink_dpipe_table_ops* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.devlink_dpipe_table_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.devlink_dpipe_table*, align 8
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.devlink_dpipe_table_ops* %2, %struct.devlink_dpipe_table_ops** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.devlink*, %struct.devlink** %7, align 8
  %14 = getelementptr inbounds %struct.devlink, %struct.devlink* %13, i32 0, i32 1
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @devlink_dpipe_table_find(i32* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %65

21:                                               ; preds = %5
  %22 = load %struct.devlink_dpipe_table_ops*, %struct.devlink_dpipe_table_ops** %9, align 8
  %23 = getelementptr inbounds %struct.devlink_dpipe_table_ops, %struct.devlink_dpipe_table_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %65

33:                                               ; preds = %21
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.devlink_dpipe_table* @kzalloc(i32 32, i32 %34)
  store %struct.devlink_dpipe_table* %35, %struct.devlink_dpipe_table** %12, align 8
  %36 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %12, align 8
  %37 = icmp ne %struct.devlink_dpipe_table* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %12, align 8
  %44 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.devlink_dpipe_table_ops*, %struct.devlink_dpipe_table_ops** %9, align 8
  %46 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %12, align 8
  %47 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %46, i32 0, i32 4
  store %struct.devlink_dpipe_table_ops* %45, %struct.devlink_dpipe_table_ops** %47, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %12, align 8
  %50 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %12, align 8
  %53 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.devlink*, %struct.devlink** %7, align 8
  %55 = getelementptr inbounds %struct.devlink, %struct.devlink* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %12, align 8
  %58 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %57, i32 0, i32 2
  %59 = load %struct.devlink*, %struct.devlink** %7, align 8
  %60 = getelementptr inbounds %struct.devlink, %struct.devlink* %59, i32 0, i32 1
  %61 = call i32 @list_add_tail_rcu(i32* %58, i32* %60)
  %62 = load %struct.devlink*, %struct.devlink** %7, align 8
  %63 = getelementptr inbounds %struct.devlink, %struct.devlink* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %41, %38, %30, %18
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @devlink_dpipe_table_find(i32*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.devlink_dpipe_table* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
